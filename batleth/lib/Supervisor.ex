defmodule Batleth.Supervisor do
	use Supervisor

	@batleth_Clock Clock
	@batleth_Batteryreader BatteryReader
	@batleth_Databaseaccess DatabaseAccess
#
	def init(:ok) do
		children = [
			worker(Clock, [[name: @batleth_Clock]]),
			worker(BatteryReader, [@batleth_Clock, [name: @batleth_Batteryreader]]),
			worker(DatabaseAccess, [@batleth_Clock, [name: @batleth_Databaseaccess]])]
	

	supervise(children, strategy: :one_for_one)
	{:ok, pid} = Supervisor.start_link(children, strategy: :one_for_one)

	end
end
