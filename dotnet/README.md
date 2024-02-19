# Dotnet Devcontainer

## Build Docker Image
```
docker build . -t dotnetdev
```

## Open the devcontainer
1. Open the project is VSCode
1. Select `Ctrl`+`Shift`+`P` Dev Containers: Reopen in Container

## Run or Debug from IDE
1. Start Debugging `F5`
1. Run without Debugging `Ctrl`+`F5`

## Build and run from command line
```
dotnet clean 
dotnet build
dotnet run --project hello
```
Or change directory to hello:
```
dotnet run
```

## Steps taken to create the project (already done)
```
dotnet new sln
dotnet new console --framework net8.0 --name hello
dotnet add hello package Serilog --version 3.1.1
dotnet add hello package Serilog.Sinks.Console --version 5.0.1
dotnet sln dotnet.sln add hello
```
Replaced Program.cs with hello.cs 
