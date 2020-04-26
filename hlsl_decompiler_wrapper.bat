@echo off

rem USAGE:
rem 	1. Put this batch file and cmd_Decompiler.exe in the same directory
rem 	2. Renderdoc -> Tools -> Settings -> Shader Viewer -> Add
rem 		2.1. Name: whatever you like
rem 		2.2. Tool Type: Custom Tool
rem 		2.3. Executable: Choose this batch file instead of cmd_Decompiler.exe
rem 		2.4. Command Line: {input_file}
rem 		2.5. Input/Output: DXBC/HLSL
rem 	3. Renderdoc -> Pipeline State View -> Choose Any Shader Stage
rem 		3.1. Edit -> Decompile with ${Name}
rem 	4. Modify shader as you wish, and click Refresh button to see the change

: decompile input_file
"%~dp0cmd_Decompiler.exe" -D "%1"

: redirect to stdout
for %%f in ("%1") do type "%%~dpnf.hlsl"
