# ps2-ulx-commands
PS2-ulx-commands is a module for ULX. It comes with 3 commands, but it may expand in future.
Every command is accessible through ULX XGUI

### ulx classlist
Prints to console all PS2 classes. It can be used for next command. (class name is one in quotes)
![classlist example](https://i.imgur.com/lKylZmf.png)

### ulx giveitem
Unlike ``inv giveitem`` provided by PS2 command, this one is accessible through XGUI. Specify player and class name(you can obtain one from previous command)

### ulx givepoints
PS2 already has ulx command for giving points(ps2_addpoints), but as player it takes SteamID, it's great when using donation system or when adding points to offline player, but if player is online you'd probably want to use XGUI to select player(s) and assign them given amount of points. It is also displaying small message when adding standard points. Also you can use this command to remove points from given player since it accepts value below 0.
![givepoints example](https://i.imgur.com/QKm4A0u.png)