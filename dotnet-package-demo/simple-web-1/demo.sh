#!/bin/bash

. ../../util.sh

docker rmi brendanburns/dotnet-simple-web 2> /dev/null || true

run "clear"

run "docker images brendanburns/dotnet-simple-web"

run "ccat Program.cs"

run "dotnet run"

run "docker images brendanburns/dotnet-simple-web"
