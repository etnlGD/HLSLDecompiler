## HLSLDecompiler

Translate dxbc to hlsl source code. You can use it alone, or as a renderdoc shader processing tool to decompile and edit shader.

### How to integrate into renderdoc

1. Put hlsl_decompiler_wrapper.bat and cmd_Decompiler.exe in the same directory
2. Renderdoc -> Tools -> Settings -> Shader Viewer -> Add
    2.1. Name: whatever you like
    2.2. Tool Type: Custom Tool
    2.3. Executable: Set absolute path of hlsl_decompiler_wrapper.bat
    2.4. Command Line: {input_file}
    2.5. Input/Output: DXBC/HLSL
3. Renderdoc -> Pipeline State View -> Choose Any Shader Stage
    3.1. Edit -> Decompile with ${Name}
4. Modify shader as you wish, and click Refresh button to see the change
