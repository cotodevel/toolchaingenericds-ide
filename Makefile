#
#			Copyright (C) 2017  Coto
#This program is free software; you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation; either version 2 of the License, or
#(at your option) any later version.

#This program is distributed in the hope that it will be useful, but
#WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
#General Public License for more details.

#You should have received a copy of the GNU General Public License
#along with this program; if not, write to the Free Software
#Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301
#USA

#

NEWLIB2_NTR 	=	$(CURDIR)/newlib-nds/newlib-nds
TOOLCHAIN_DIR 	= $(CURDIR)/ToolchainGenericDS
PROY_DIR		= $(CURDIR)/ToolchainGenericDS-multiboot
PROY_DIR2		= $(CURDIR)/ToolchainGenericDS-template

#Automated Commit message
export COMMITMSG		:= -update TGDS project to TGDS 1.65 SDK Commit: <commit>

all: help

#Make
remoteboot:
	$(MAKE)	-R	-C	$(TOOLCHAIN_DIR)/
	$(MAKE)	-R	-C	$(PROY_DIR)/
	$(MAKE)	remotebootNTR	-C	$(PROY_DIR)/

remoteboot2:
	$(MAKE)	-R	-C	$(TOOLCHAIN_DIR)/
	$(MAKE)	-R	-C	$(PROY_DIR)/
	$(MAKE)	-R	-C	$(PROY_DIR2)/
	$(MAKE)	remotebootNTR	-C	$(PROY_DIR2)/
	
toolchaingenericds:
	$(MAKE)	-R	-C	$(TOOLCHAIN_DIR)/

tgdsproject:
	$(MAKE)	-R	-C	$(TOOLCHAIN_DIR)/
	$(MAKE)	-R	-C	$(PROY_DIR)/

dualtgdsproject:
	$(MAKE)	-R	-C	$(TOOLCHAIN_DIR)/
	$(MAKE)	-R	-C	$(PROY_DIR)/
	$(MAKE)	-R	-C	$(PROY_DIR2)/
	
clean:
	$(MAKE)	clean	-C	$(TOOLCHAIN_DIR)/
	$(MAKE)	clean	-C	$(PROY_DIR)/

dualclean:
	$(MAKE)	clean	-C	$(TOOLCHAIN_DIR)/
	$(MAKE)	clean	-C	$(PROY_DIR)/
	$(MAKE)	clean	-C	$(PROY_DIR2)/
	
#builds newlib-nds
newlib:
	$(MAKE)	-R	-C	$(NEWLIB2_NTR)/
cleannewlib:
	$(MAKE)	clean	-C	$(NEWLIB2_NTR)/

makeall:
	$(MAKE)	-R	-C	$(TOOLCHAIN_DIR)/
	$(MAKE)	-R	-C	$(CURDIR)/armv4core/
	$(MAKE)	-R	-C	$(CURDIR)/gbaARMHook/
	$(MAKE)	-R	-C	$(CURDIR)/ToolchainGenericDS-FTPServer/
	$(MAKE)	-R	-C	$(CURDIR)/ToolchainGenericDS-filedownload/
	$(MAKE)	-R	-C	$(CURDIR)/ToolchainGenericDS-template/
	$(MAKE)	-R	-C	$(CURDIR)/ToolchainGenericDS-zlib-example/
	$(MAKE)	-R	-C	$(CURDIR)/ToolchainGenericDS-multimediaplayer/
	$(MAKE)	-R	-C	$(CURDIR)/ToolchainGenericDS-multiboot/
	$(MAKE)	-R	-C	$(CURDIR)/ToolchainGenericDS-wmbhost/
	$(MAKE)	-R	-C	$(CURDIR)/ToolchainGenericDS-argvtest/
	$(MAKE)	-R	-C	$(CURDIR)/ToolchainGenericDS-OnlineApp/
	$(MAKE)	-R	-C	$(CURDIR)/ToolchainGenericDS-UnitTest/
	$(MAKE)	-R	-C	$(CURDIR)/cgmodels/
	$(MAKE)	-R	-C	$(CURDIR)/tgdsproject3d/
	$(MAKE)	-R	-C	$(CURDIR)/snakegl/
	$(MAKE)	-R	-C	$(CURDIR)/aquariumgl/
	$(MAKE)	-R	-C	$(CURDIR)/batallionnds/
	$(MAKE)	-R	-C	$(CURDIR)/snemulds/

cleanall:
	$(MAKE)	clean	-C	$(TOOLCHAIN_DIR)/
	$(MAKE)	clean	-C	$(CURDIR)/armv4core/
	$(MAKE)	clean	-C	$(CURDIR)/gbaARMHook/
	$(MAKE)	clean	-C	$(CURDIR)/ToolchainGenericDS-FTPServer/
	$(MAKE)	clean	-C	$(CURDIR)/ToolchainGenericDS-filedownload/
	$(MAKE)	clean	-C	$(CURDIR)/ToolchainGenericDS-template/
	$(MAKE)	clean	-C	$(CURDIR)/ToolchainGenericDS-zlib-example/
	$(MAKE)	clean	-C	$(CURDIR)/ToolchainGenericDS-multimediaplayer/
	$(MAKE)	clean	-C	$(CURDIR)/ToolchainGenericDS-multiboot/
	$(MAKE)	clean	-C	$(CURDIR)/ToolchainGenericDS-wmbhost/
	$(MAKE)	clean	-C	$(CURDIR)/ToolchainGenericDS-argvtest/
	$(MAKE)	clean	-C	$(CURDIR)/ToolchainGenericDS-OnlineApp/
	$(MAKE)	clean	-C	$(CURDIR)/ToolchainGenericDS-UnitTest/
	$(MAKE)	clean	-C	$(CURDIR)/cgmodels/
	$(MAKE)	clean	-C	$(CURDIR)/tgdsproject3d/
	$(MAKE)	clean	-C	$(CURDIR)/snakegl/
	$(MAKE)	clean	-C	$(CURDIR)/aquariumgl/
	$(MAKE)	clean	-C	$(CURDIR)/batallionnds/
	$(MAKE)	clean	-C	$(CURDIR)/snemulds/
	
	
checkoutall:
	git clone https://github.com/cotodevel/cotodevel.github.io.git $(CURDIR)/cotodevel.github.io
	git clone https://github.com/cotodevel/toolchaingenericds-utils.git $(CURDIR)/ToolchainGenericDS-utils
	git clone https://github.com/cotodevel/toolchaingenericds-filedownload.git $(CURDIR)/ToolchainGenericDS-filedownload
	git clone https://github.com/cotodevel/armv4core.git $(CURDIR)/armv4core
	git clone https://github.com/cotodevel/gbaarmhook.git $(CURDIR)/gbaARMHook
	git clone https://github.com/cotodevel/toolchaingenericds-template.git $(CURDIR)/ToolchainGenericDS-template
	git clone https://github.com/cotodevel/toolchaingenericds-zlib-example.git $(CURDIR)/ToolchainGenericDS-zlib-example
	git clone https://github.com/cotodevel/toolchaingenericds-ftpserver.git $(CURDIR)/ToolchainGenericDS-FTPServer
	git clone https://github.com/cotodevel/toolchaingenericds-multimediaplayer.git $(CURDIR)/ToolchainGenericDS-multimediaplayer
	git clone https://github.com/cotodevel/toolchaingenericds-multiboot.git	$(CURDIR)/ToolchainGenericDS-multiboot
	git clone https://github.com/cotodevel/toolchaingenericds-wmbhost.git	$(CURDIR)/ToolchainGenericDS-wmbhost
	git clone https://github.com/cotodevel/toolchaingenericds-argvtest.git	$(CURDIR)/ToolchainGenericDS-argvtest
	git clone https://github.com/cotodevel/toolchaingenericds-onlineapp.git	$(CURDIR)/ToolchainGenericDS-OnlineApp
	git clone https://github.com/cotodevel/toolchaingenericds-unittest.git	$(CURDIR)/ToolchainGenericDS-UnitTest
	git clone https://github.com/cotodevel/blender-nds-exporter.git	$(CURDIR)/blender-nds-exporter
	git clone https://github.com/cotodevel/cgmodels.git	$(CURDIR)/cgmodels
	git clone https://github.com/cotodevel/tgdsproject3d.git	$(CURDIR)/tgdsproject3d
	git clone https://github.com/cotodevel/snakegl.git	$(CURDIR)/snakegl
	git clone https://github.com/cotodevel/aquariumgl.git	$(CURDIR)/aquariumgl
	git clone https://github.com/cotodevel/batallionnds.git	$(CURDIR)/batallionnds
	git clone https://github.com/cotodevel/snemulds.git	$(CURDIR)/snemulds
	
rebaseall:
	$(MAKE)	rebase	-C	$(CURDIR)/armv4core/
	$(MAKE)	rebase	-C	$(CURDIR)/gbaARMHook/
	$(MAKE)	rebase	-C	$(CURDIR)/ToolchainGenericDS-filedownload/
	$(MAKE)	rebase	-C	$(CURDIR)/ToolchainGenericDS-template/
	$(MAKE)	rebase	-C	$(CURDIR)/ToolchainGenericDS-zlib-example/
	$(MAKE)	rebase	-C	$(CURDIR)/ToolchainGenericDS-FTPServer/
	$(MAKE)	rebase	-C	$(CURDIR)/ToolchainGenericDS-multimediaplayer/
	$(MAKE)	rebase	-C	$(CURDIR)/ToolchainGenericDS-multiboot/
	$(MAKE)	rebase	-C	$(CURDIR)/ToolchainGenericDS-wmbhost/
	$(MAKE)	rebase	-C	$(CURDIR)/ToolchainGenericDS-argvtest/
	$(MAKE)	rebase	-C	$(CURDIR)/ToolchainGenericDS-OnlineApp/
	$(MAKE)	rebase	-C	$(CURDIR)/ToolchainGenericDS-UnitTest/
	
	
checkoutenvironment:
	git clone https://github.com/cotodevel/newlib-nds.git $(CURDIR)/newlib-nds
	git clone https://github.com/cotodevel/toolchaingenericds.git $(CURDIR)/ToolchainGenericDS

updateall:
	-mv	$(CURDIR)/ToolchainGenericDS-filedownload/ToolchainGenericDS-filedownload.nds	$(CURDIR)/ToolchainGenericDS-filedownload/release/arm7dldi-ntr/ToolchainGenericDS-filedownload.nds
	-mv	/E/ToolchainGenericDS-filedownload.srl	$(CURDIR)/ToolchainGenericDS-filedownload/release/arm7dldi-twl/ToolchainGenericDS-filedownload.srl
	
	-mv	$(CURDIR)/armv4core/armv4core.nds	$(CURDIR)/armv4core/release/arm7dldi-ntr/armv4core.nds
	-mv	/E/armv4core.srl	$(CURDIR)/armv4core/release/arm7dldi-twl/armv4core.srl
	
	-mv	$(CURDIR)/gbaARMHook/gbaARMHook.nds	$(CURDIR)/gbaARMHook/release/arm7dldi-ntr/gbaARMHook.nds
	-mv	/E/gbaARMHook.srl	$(CURDIR)/gbaARMHook/release/arm7dldi-twl/gbaARMHook.srl
	
	-mv	$(CURDIR)/ToolchainGenericDS-template/ToolchainGenericDS-template.nds	$(CURDIR)/ToolchainGenericDS-template/release/arm7dldi-ntr/ToolchainGenericDS-template.nds
	-mv	/E/ToolchainGenericDS-template.srl	$(CURDIR)/ToolchainGenericDS-template/release/arm7dldi-twl/ToolchainGenericDS-template.srl
	
	-mv	$(CURDIR)/ToolchainGenericDS-zlib-example/ToolchainGenericDS-zlib-example.nds	$(CURDIR)/ToolchainGenericDS-zlib-example/release/arm7dldi-ntr/ToolchainGenericDS-zlib-example.nds
	-mv	/E/ToolchainGenericDS-zlib-example.srl	$(CURDIR)/ToolchainGenericDS-zlib-example/release/arm7dldi-twl/ToolchainGenericDS-zlib-example.srl
	
	-mv	$(CURDIR)/ToolchainGenericDS-FTPServer/ToolchainGenericDS-FTPServer.nds	$(CURDIR)/ToolchainGenericDS-FTPServer/release/arm7dldi-ntr/ToolchainGenericDS-FTPServer.nds
	-mv	/E/ToolchainGenericDS-FTPServer.srl	$(CURDIR)/ToolchainGenericDS-FTPServer/release/arm7dldi-twl/ToolchainGenericDS-FTPServer.srl
	
	-mv	$(CURDIR)/ToolchainGenericDS-multimediaplayer/ToolchainGenericDS-multimediaplayer.nds	$(CURDIR)/ToolchainGenericDS-multimediaplayer/release/arm7dldi-ntr/ToolchainGenericDS-multimediaplayer.nds
	-mv	/E/ToolchainGenericDS-multimediaplayer.srl	$(CURDIR)/ToolchainGenericDS-multimediaplayer/release/arm7dldi-twl/ToolchainGenericDS-multimediaplayer.srl
	
	-mv	$(CURDIR)/ToolchainGenericDS-multiboot/ToolchainGenericDS-multiboot.nds	$(CURDIR)/ToolchainGenericDS-multiboot/release/arm7dldi-ntr/ToolchainGenericDS-multiboot.nds
	-mv	/E/ToolchainGenericDS-multiboot.srl	$(CURDIR)/ToolchainGenericDS-multiboot/release/arm7dldi-twl/ToolchainGenericDS-multiboot.srl
	
	-mv	$(CURDIR)/ToolchainGenericDS-wmbhost/ToolchainGenericDS-wmbhost.nds	$(CURDIR)/ToolchainGenericDS-wmbhost/release/arm7dldi-ntr/ToolchainGenericDS-wmbhost.nds
	-mv	/E/ToolchainGenericDS-wmbhost.srl	$(CURDIR)/ToolchainGenericDS-wmbhost/release/arm7dldi-twl/ToolchainGenericDS-wmbhost.srl
	
	-mv	$(CURDIR)/ToolchainGenericDS-argvtest/ToolchainGenericDS-argvtest.nds	$(CURDIR)/ToolchainGenericDS-argvtest/release/arm7dldi-ntr/ToolchainGenericDS-argvtest.nds
	-mv	/E/ToolchainGenericDS-argvtest.srl	$(CURDIR)/ToolchainGenericDS-argvtest/release/arm7dldi-twl/ToolchainGenericDS-argvtest.srl
	
	-mv	$(CURDIR)/ToolchainGenericDS-OnlineApp/ToolchainGenericDS-OnlineApp.nds	$(CURDIR)/ToolchainGenericDS-OnlineApp/release/arm7dldi-ntr/ToolchainGenericDS-OnlineApp.nds
	-mv	/E/ToolchainGenericDS-OnlineApp.srl	$(CURDIR)/ToolchainGenericDS-OnlineApp/release/arm7dldi-twl/ToolchainGenericDS-OnlineApp.srl
	
	-mv	$(CURDIR)/ToolchainGenericDS-UnitTest/ToolchainGenericDS-UnitTest.nds	$(CURDIR)/ToolchainGenericDS-UnitTest/release/arm7dldi-ntr/ToolchainGenericDS-UnitTest.nds
	-mv	/E/ToolchainGenericDS-UnitTest.srl	$(CURDIR)/ToolchainGenericDS-UnitTest/release/arm7dldi-twl/ToolchainGenericDS-UnitTest.srl

switchstable:
	$(MAKE)	switchStable	-C	$(CURDIR)/ToolchainGenericDS/
	$(MAKE)	switchStable	-C	$(CURDIR)/aquariumgl/
	$(MAKE)	switchStable	-C	$(CURDIR)/armv4core/
	$(MAKE)	switchStable	-C	$(CURDIR)/batallionnds/
	$(MAKE)	switchStable	-C	$(CURDIR)/cgmodels/
	$(MAKE)	switchStable	-C	$(CURDIR)/gbaARMHook/
	$(MAKE)	switchStable	-C	$(CURDIR)/snakegl/
	$(MAKE)	switchStable	-C	$(CURDIR)/tgdsproject3d/
	$(MAKE)	switchStable	-C	$(CURDIR)/ToolchainGenericDS-FTPServer/
	$(MAKE)	switchStable	-C	$(CURDIR)/ToolchainGenericDS-filedownload/
	$(MAKE)	switchStable	-C	$(CURDIR)/ToolchainGenericDS-template/
	$(MAKE)	switchStable	-C	$(CURDIR)/ToolchainGenericDS-zlib-example/
	$(MAKE)	switchStable	-C	$(CURDIR)/ToolchainGenericDS-multimediaplayer/
	$(MAKE)	switchStable	-C	$(CURDIR)/ToolchainGenericDS-multiboot/
	$(MAKE)	switchStable	-C	$(CURDIR)/ToolchainGenericDS-wmbhost/
	$(MAKE)	switchStable	-C	$(CURDIR)/ToolchainGenericDS-argvtest/
	$(MAKE)	switchStable	-C	$(CURDIR)/ToolchainGenericDS-OnlineApp/
	$(MAKE)	switchStable	-C	$(CURDIR)/ToolchainGenericDS-UnitTest/
	$(MAKE)	switchStable	-C	$(CURDIR)/ToolchainGenericDS-utils/
	$(MAKE)	switchStable	-C	$(CURDIR)/snemulds/

switchmaster:
	$(MAKE)	switchMaster	-C	$(CURDIR)/ToolchainGenericDS/
	$(MAKE)	switchMaster	-C	$(CURDIR)/aquariumgl/
	$(MAKE)	switchMaster	-C	$(CURDIR)/armv4core/
	$(MAKE)	switchMaster	-C	$(CURDIR)/batallionnds/
	$(MAKE)	switchMaster	-C	$(CURDIR)/cgmodels/
	$(MAKE)	switchMaster	-C	$(CURDIR)/gbaARMHook/
	$(MAKE)	switchMaster	-C	$(CURDIR)/snakegl/
	$(MAKE)	switchMaster	-C	$(CURDIR)/tgdsproject3d/
	$(MAKE)	switchMaster	-C	$(CURDIR)/ToolchainGenericDS-FTPServer/
	$(MAKE)	switchMaster	-C	$(CURDIR)/ToolchainGenericDS-filedownload/
	$(MAKE)	switchMaster	-C	$(CURDIR)/ToolchainGenericDS-template/
	$(MAKE)	switchMaster	-C	$(CURDIR)/ToolchainGenericDS-zlib-example/
	$(MAKE)	switchMaster	-C	$(CURDIR)/ToolchainGenericDS-multimediaplayer/
	$(MAKE)	switchMaster	-C	$(CURDIR)/ToolchainGenericDS-multiboot/
	$(MAKE)	switchMaster	-C	$(CURDIR)/ToolchainGenericDS-wmbhost/
	$(MAKE)	switchMaster	-C	$(CURDIR)/ToolchainGenericDS-argvtest/
	$(MAKE)	switchMaster	-C	$(CURDIR)/ToolchainGenericDS-OnlineApp/
	$(MAKE)	switchMaster	-C	$(CURDIR)/ToolchainGenericDS-UnitTest/
	$(MAKE)	switchMaster	-C	$(CURDIR)/ToolchainGenericDS-utils/
	$(MAKE)	switchMaster	-C	$(CURDIR)/snemulds/
	
commitenvironment:
	$(MAKE)	commitChanges	-C	$(CURDIR)/newlib-nds/newlib-nds/
	$(MAKE)	commitChanges	-C	$(CURDIR)/ToolchainGenericDS/src/

commitall:
	$(MAKE)	commitChanges	-C	$(CURDIR)/ToolchainGenericDS/
	$(MAKE)	commitChanges	-C	$(CURDIR)/aquariumgl/
	$(MAKE)	commitChanges	-C	$(CURDIR)/armv4core/
	$(MAKE)	commitChanges	-C	$(CURDIR)/batallionnds/
	$(MAKE)	commitChanges	-C	$(CURDIR)/cgmodels/
	$(MAKE)	commitChanges	-C	$(CURDIR)/gbaARMHook/
	$(MAKE)	commitChanges	-C	$(CURDIR)/snakegl/
	$(MAKE)	commitChanges	-C	$(CURDIR)/tgdsproject3d/
	$(MAKE)	commitChanges	-C	$(CURDIR)/ToolchainGenericDS-FTPServer/
	$(MAKE)	commitChanges	-C	$(CURDIR)/ToolchainGenericDS-filedownload/
	$(MAKE)	commitChanges	-C	$(CURDIR)/ToolchainGenericDS-template/
	$(MAKE)	commitChanges	-C	$(CURDIR)/ToolchainGenericDS-zlib-example/
	$(MAKE)	commitChanges	-C	$(CURDIR)/ToolchainGenericDS-multimediaplayer/
	$(MAKE)	commitChanges	-C	$(CURDIR)/ToolchainGenericDS-multiboot/
	$(MAKE)	commitChanges	-C	$(CURDIR)/ToolchainGenericDS-wmbhost/
	$(MAKE)	commitChanges	-C	$(CURDIR)/ToolchainGenericDS-argvtest/
	$(MAKE)	commitChanges	-C	$(CURDIR)/ToolchainGenericDS-OnlineApp/
	$(MAKE)	commitChanges	-C	$(CURDIR)/ToolchainGenericDS-UnitTest/
	$(MAKE)	commitChanges	-C	$(CURDIR)/ToolchainGenericDS-utils/
	$(MAKE)	commitChanges	-C	$(CURDIR)/snemulds/

buildpkgs:
	$(MAKE)	BuildTGDSPKG	-C	$(CURDIR)/ToolchainGenericDS/lib/Woopsi/woopsiExamples/demoWoopsi/
	$(MAKE)	BuildTGDSPKG	-C	$(CURDIR)/aquariumgl/
	$(MAKE)	BuildTGDSPKG	-C	$(CURDIR)/armv4core/
	$(MAKE)	BuildTGDSPKG	-C	$(CURDIR)/batallionnds/
	$(MAKE)	BuildTGDSPKG	-C	$(CURDIR)/cgmodels/targetClientRenderers/NintendoDS/Env_Mapping/
	$(MAKE)	BuildTGDSPKG	-C	$(CURDIR)/cgmodels/targetClientRenderers/NintendoDS/TexturedBlenderModelNDSRender/
	$(MAKE)	BuildTGDSPKG	-C	$(CURDIR)/gbaARMHook/
	$(MAKE)	BuildTGDSPKG	-C	$(CURDIR)/snakegl/
	$(MAKE)	BuildTGDSPKG	-C	$(CURDIR)/tgdsproject3d/
	$(MAKE)	BuildTGDSPKG	-C	$(CURDIR)/ToolchainGenericDS-FTPServer/
	$(MAKE)	BuildTGDSPKG	-C	$(CURDIR)/ToolchainGenericDS-filedownload/
	$(MAKE)	BuildTGDSPKG	-C	$(CURDIR)/ToolchainGenericDS-template/
	$(MAKE)	BuildTGDSPKG	-C	$(CURDIR)/ToolchainGenericDS-zlib-example/
	$(MAKE)	BuildTGDSPKG	-C	$(CURDIR)/ToolchainGenericDS-multimediaplayer/
	$(MAKE)	BuildTGDSPKG	-C	$(CURDIR)/ToolchainGenericDS-multiboot/
	$(MAKE)	BuildTGDSPKG	-C	$(CURDIR)/ToolchainGenericDS-wmbhost/
	$(MAKE)	BuildTGDSPKG	-C	$(CURDIR)/ToolchainGenericDS-argvtest/
	$(MAKE)	BuildTGDSPKG	-C	$(CURDIR)/ToolchainGenericDS-OnlineApp/
	$(MAKE)	BuildTGDSPKG	-C	$(CURDIR)/ToolchainGenericDS-UnitTest/
	$(MAKE)	BuildTGDSPKG	-C	$(CURDIR)/snemulds/
	
help:
	-@echo "MAKE tgdsproject: Builds TGDS environment + a given TGDS project (requires newlib for NintendoDS to be built first)"
	-@echo "MAKE dualtgdsproject: Builds TGDS environment + 1 TGDS project + 1 TGDS project (requires newlib for NintendoDS to be built first)"
	-@echo "MAKE clean: Clean TGDS environment + a given TGDS project (requires newlib for NintendoDS to be built first)"
	-@echo "MAKE dualclean: Clean TGDS environment + 1 TGDS project + 1 TGDS project (requires newlib for NintendoDS to be built first)"
	-@echo "MAKE newlib: Builds newlib for NintendoDS (TGDS environment and TGDS projects require this first)"
	-@echo "MAKE cleannewlib: Clean newlib for NintendoDS (TGDS environment and TGDS projects require this first)"
	-@echo "MAKE makeall: Builds TGDS environment + ALL TGDS projects (requires newlib for NintendoDS to be built first)"
	-@echo "MAKE cleanall: Clean TGDS environment + ALL TGDS projects (requires newlib for NintendoDS to be built first)"
	-@echo "MAKE checkoutenvironment: Uses GIT to fetch newlib for NintendoDS + TGDS from master branch from Github"
	-@echo "MAKE checkoutall: Uses GIT to fetch ALL TGDS projects from master branch from Github"
	-@echo "MAKE rebaseall: Uses GIT to force/clean/discard any local changes while restoring TGDS projects from origin (regardless the branch it is)"
	-@echo "MAKE updateall: All freshly built TGDS projects (ARM7DLDI) will be updated in their respective /release/arm7dldi-ntr folder"
	-@echo "MAKE commitall: Commit all modified/changes in TGDS projects using a global commit message"
	-@echo "MAKE commitenvironment: Commit all modified/changes in newlib-nds and ToolchainGenericDS using a global commit message"
	-@echo "MAKE help: This help"