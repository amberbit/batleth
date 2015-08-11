defmodule GNumber do

	def start_link() do
		Task.start_link(fn() -> loop(0) end)
	end

	defp loop(i) do
		receive do
			{:add, l} -> loop(i+l)
			{:get, caller} -> send caller, i
					loop(i)
			{:kill} -> 0
		end
	end
end
