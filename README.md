# CppEnvironment
A simple set of scripts to create a linux C++ environment on a Windows PC. Requires virtualization to be enabled in BIOS.

This is a much better way of learning C++ than using an IDE like Codeblocks. 

If you really need your C++ to run on Windows, you should install Visual Studio and use Visual C++.

### Instructions:

Run setup.bat when you first download this repository:
  Allow it to install Docker Toolbox and all of its dependencies (Virtual Box and Git). 
  This may take some time.

Run build_and_run.bat when you want to see your code in the *project* folder execute.

Run start_environment.bat to open a terminal session within the virtual linux machine that contains your project. This is useful for debugging.

### Technical Details:
The Linux machine is a modified Ubuntu image with build-essential (gcc and g++) and gdb (debugger) installed.

The image is automatically built and run through Docker.
