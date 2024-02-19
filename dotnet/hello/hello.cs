using System;
using Serilog;

class HelloWorld
{
    static void Main()
    {
        Log.Logger = new LoggerConfiguration()
            .WriteTo.Console(outputTemplate: "{Timestamp:yyyy-MM-dd HH:mm:ss.fff} [{Level:u3}] {Message:lj}{NewLine}{Exception}")
            .MinimumLevel.Debug()
            .CreateLogger();

        Log.Debug("Hello, World!");

        Log.CloseAndFlush();
    }
}