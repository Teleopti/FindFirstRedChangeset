@echo off

call ".debug-setup\CheckMsbuildPath.bat" 1>nul

%msbuild% %projectToTest% 1>nul
if %errorlevel% NEQ 0 (
	echo Cannot compile %projectToTest%
	git bisect skip 1>nul
)

packages\NUnit.ConsoleRunner.3.10.0\tools\nunit3-console.exe %projectToTest% --where "class == %testFixtureToTest%" 1>nul
exit %errorlevel%
