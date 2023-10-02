VSCode IDE + TGDS Support:
![ToolchainGenericDS](img/vscodeide.png)

OS Support: 
	- WSL2 Ubuntu 20.04+ on Windows 10 *only*

Features:
	- C++ IDE with Intellisense support 
	- Enables full-debugging capabilities by using VSCode. Includes building TGDS Projects from VSCode by just pressing F5. 

Setup:

1) Open PowerShell as Administrator then write: 
	- wsl --unregister ubuntu
	- wsl --install -d Ubuntu

2) Download & Install the bundled VSCode in the /bin folder

3) Open VSCode, go to Extensions block icon, and install the following extensions:
- C/C++
- C/C++ Extension Pack
- C++ Intellisense
- Arm Assembly
- WSL

4)Close VSCode, then open PowerShell and write
	-wsl -d Ubuntu
	-code .
	
5) Once VSCode is connected to WSL:<Linux distro>, you'll need to create a folder, and copy the default Makefile provided in this repo inside that folder.

6) Then Right-click button on that folder, and select "Open in Integrated Terminal"

7) Write in the terminal the following commands:
	-make checkoutenvironment
	-make newlib
	-make toolchaingenericds
	-make checkoutall (this is optional, just retrieves all TGDS Projects from GIT into your environment)
	
Up to this point we're done, and from now on just follow the [Usage] instructions to compile & debug natively TGDS Apps in the IDE.

[Usage]
1) Open PowerShell and write
	-wsl -d Ubuntu
	-code .
	
2) On VSCode Right-click button on that folder, and select "Open in Integrated Terminal", assumming you want to assemble ToolchainGenericDS-template NDS/TWL binary.
	-git clone https://Coto88@bitbucket.org/Coto88/toolchaingenericds-template.git
	-cd toolchaingenericds-template
	-make clean
	-make


[Remote debugging on NTR/TWL hardware]
	Work in progress, see: https://bitbucket.org/Coto88/toolchaingenericds-ide/issues/1/implement-gdb-remote-debugger