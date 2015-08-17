Batleth
===============

# Bat'leth is damn sharp battery monitor written in Elixir

App uses Amnesia - a simple wrapper of mnesia from Erlang. 
It consists of two umbrella apps - a module to write the status of the battery and a server. 

Batleth

-> Batleth.ex -> main module

-> BatteryReader -> a module to read the status of the battery

-> Clock.ex -> a module to read the time

-> DatabaseAccess.ex -> a module to use the database

-> Logger.ex -> logger of the app

-> Stat.ex -> a module that calculates some statistics on the battery

-> LastChange.ex -> a module that is very useful

-> Time.ex -> a module with very useful time functions

##First run
Use file make.sh to install the app. It copies the files, creates directories etc. It must be run by a root - otherwise it won't do anything.

Terminal:

    ./make.sh install


###Issues:
Works:

	+ Monitoring in one minute interval

	+ File to start and stop the app in Ubuntu

Doesn't work

	- Running with the start of the system 
