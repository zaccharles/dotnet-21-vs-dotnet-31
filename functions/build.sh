#!/bin/bash

#install zip on debian OS, since microsoft/dotnet container doesn't have zip by default
# if [ -f /etc/debian_version ]
# then
#   apt -qq update
#   apt -qq -y install zip
# fi

cd simple-21
dotnet restore
dotnet lambda package --configuration release --framework netcoreapp2.1 --output-package ../simple-21.zip
cd ..

cd complex-21
dotnet restore
dotnet lambda package --configuration release --framework netcoreapp2.1 --output-package ../complex-21.zip
cd ..

cd simple-31
dotnet restore
dotnet lambda package --configuration release --framework netcoreapp3.1 --output-package ../simple-31.zip
cd ..

cd complex-31
dotnet restore
dotnet lambda package --configuration release --framework netcoreapp3.1 --output-package ../complex-31.zip
cd ..

cd simple-31-default
dotnet restore
dotnet lambda package --configuration release --framework netcoreapp3.1 --output-package ../simple-31-default.zip
cd ..

cd complex-31-default
dotnet restore
dotnet lambda package --configuration release --framework netcoreapp3.1 --output-package ../complex-31-default.zip
cd ..