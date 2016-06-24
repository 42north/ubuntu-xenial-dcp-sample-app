FROM 42north/ubuntu-xenial-dcp:1.0.0
#  Copy the key build products required to start the application
COPY bin/Release/netcoreapp1.0/app.dll /app/
COPY bin/Release/netcoreapp1.0/app.deps.json /app/
COPY bin/Release/netcoreapp1.0/app.runtimeconfig.json /app/
# Copy the contents of the restored NuGet packages
COPY lib/ /app/lib
# Copy any additional required directories
COPY data /app/data
# This entry point will start your application 
# and use /app/lib as the path to locate dependent assemblies
ENTRYPOINT dotnet --additionalprobingpath /app/lib /app/app.dll