@echo off

set thisPath=%~dp0
set pathToRepo=%~1
set projectToTest=%2
set testFixtureToTest=%3
set goodRevision=%4

cd %~1

.nuget\nuget.exe install nunit.console -o packages -version 3.10.0 1>nul

git bisect start 1>nul
git bisect bad HEAD 1>nul
git bisect good %goodRevision% 1>nul
git bisect run %thisPath%runTestOnRev.cmd
git bisect reset 1>nul