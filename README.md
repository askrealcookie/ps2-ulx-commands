# ps2-ulx-commands
PS2-ulx-commands is a module for ULX that is used to perform various actions on [Pointshop2](https://github.com/Kamshak/Pointshop2). It comes with 3 commands, but it may expand in future.
Every command is accessible through ULX XGUI

### ulx classlist
Prints to console all PS2 classes. It can be used for next command. (class name is one in quotes)
![classlist example](https://i.imgur.com/lKylZmf.png

#### Example:
``ulx classlist``

### ulx giveitem
Unlike ``inv giveitem`` provided by PS2 command, this one is accessible through XGUI. Specify player and class name(you can obtain one from previous command)
#### Examples:
``ulx giveitem "Cookie" 42``

``ulx giveitem ^ 20``

### ulx givepoints
PS2 already has ulx command for giving points(ps2_addpoints), but as player it takes SteamID, it's great when using donation system or when adding points to offline player, but if player is online you'd probably want to use XGUI to select player(s) and assign them given amount of points. It is also displaying small message when adding standard points. Also you can use this command to remove points from given player since it accepts value below 0.
![givepoints example](https://i.imgur.com/QKm4A0u.png)

#### Examples:
``ulx givepoints "Cookie" 1000 points``

``ulx givepoints ^ 1000 "premium points"``

## Installation
Installation is very straight forward.
1. To download ps2-ulx-commands clone repository or use green button saying "Code" and download ZIP archive.
1. To install ps2-ulx-commands just drop folder inside archive to GMod server addons folder.
1. (Re)start server or change map.
