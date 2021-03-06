/* Copyright (c) 2012 Research In Motion Limited.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import bb.cascades 1.0
import bb.cascades.pickers 1.0 

TabbedPane {
    property bool emulatorVisable: false
    Menu.definition: MenuDefinition {
	    actions: [
	      ActionItem {
	          title: "Save State"
	          imageSource: "asset:///images/save_load.png"
	          enabled: emulatorVisable
	          onTriggered: {
	              _frontend.SaveState();
	          }
	      },
	      ActionItem {
	          title: "Load State"
	          imageSource: "asset:///images/save_load.png"
	          enabled: emulatorVisable
	          onTriggered: {
  	              _frontend.LoadState();
  	          }
	      },
	      ActionItem {
  	          title: "Toggle Overlay"
  	          imageSource: "asset:///images/overlay.png"
  	          enabled: emulatorVisable
  	          onTriggered: {
  	              _frontend.LoadTouchOverlay();
  	          }
  	      },
  	      ActionItem {
	          title: "Menu (Broken)"
	          imageSource: "asset:///images/home.png"
	          enabled: emulatorVisable
	          //enabled: false //TODO: Issues with restarting emu, SDL audio plugin crashes, can fix by not PluginUnload audio, but emu still crashes randomly, and on 3rd open.
	          onTriggered: {
  	              _frontend.ExitEmulator();
  	              emulatorVisable = false;
  	              OrientationSupport.supportedDisplayOrientation = 
  	                                          SupportedDisplayOrientation.DisplayPortrait;
  	          } 
	      },
	      ActionItem {
  	          title: "Close"
  	          imageSource: "asset:///images/ic_cancel.png"
  	      }
	    ]
    }
    //showTabsOnActionBar: true
    Tab {
        title: "Home" 
        imageSource: "asset:///images/home.png"
        MainMenu {
            
            romDirectory: {
                if(general.sdcard == false){
                    ["/accounts/1000/shared/misc/n64/roms"]
                } else {
                    ["/accounts/100/removable/sdcard"]
                }
            }
            videoPlugin: video.videoPlugin
            sound: audio.sound
            boxartEnabled: general.boxartEnabled
        }
    }
    Tab {
	    title: "General"
	    id: generalTest
	    General {
	        id: general
	    }
    }
    Tab {
        title: "Video"
        imageSource: "asset:///images/video.png"
        Video {
            id: video
        }
    }
    Tab {
        title: "Audio"
        imageSource: "asset:///images/sound.png"
        Audio {
            id: audio
        }
    }
    Tab {
        title: "Input"
        imageSource: "asset:///images/input.png"
        Input {}
    }
    //This tab is dynamically generated in C++
    Tab {
        title: "Cheats"
        imageSource: "asset:///images/ic_lock.png"
        //Cheats {}
        Page{
            titleBar: TitleBar {
                id: titleBar
                title: "Cheat Codes"
                visibility:  ChromeVisibility.Visible
            }
            ScrollView{
                preferredHeight: 1280
                preferredWidth: 768
                
		        Container {
		            objectName: "cheats"
		            
		            Container {
		                preferredWidth: 768
		                preferredHeight: 1000
		            
			            layout: DockLayout {}
	            
			            Label {
			                verticalAlignment: VerticalAlignment.Center
			                horizontalAlignment: HorizontalAlignment.Center
			                text: "Select a ROM" 
			                textStyle {
					            base: SystemDefaults.TextStyles.BigText
					        }  
			            }
		            }
		        }
	        }
	    }
    }
}
