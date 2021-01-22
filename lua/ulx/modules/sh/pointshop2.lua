function ulx.classlist( calling_ply )
    for className, itemClass in pairs( KInventory.Items ) do
        ULib.console( calling_ply, "------ " .. itemClass.PrintName .. " ------" )
        ULib.console( calling_ply, Format("%s - \"%s\"", itemClass.PrintName, className) )
    end
    ULib.tsay( calling_ply, "Check console!" )
end
local classlist = ulx.command( "Pointshop 2", "ulx classlist", ulx.classlist, "!classlist" )
classlist:defaultAccess( ULib.ACCESS_SUPERADMIN )
classlist:help( "Prints all PS2 classes into player console." )

function ulx.giveitem( calling_ply, target_plys, class_name )
    local itemClass = KInventory.Items[class_name]
    if not itemClass then
        ULib.tsayError( calling_ply, "There is no item with class name \"" .. class_name .. "\"!" , class_name )
        return
    end
	for i=1, #target_plys do
        local v = target_plys[ i ]
        v:PS2_EasyAddItem( class_name )
    end
    ulx.fancyLogAdmin( calling_ply, "#A gave \"#s\" to #T", class_name, target_plys )
end
local giveitem = ulx.command( "Pointshop 2", "ulx giveitem", ulx.giveitem, "!giveitem" )
giveitem:addParam{ type=ULib.cmds.PlayersArg, default="^" }
giveitem:addParam{ type=ULib.cmds.StringArg, hint="" }
giveitem:defaultAccess( ULib.ACCESS_SUPERADMIN )
giveitem:help( "Give PS2 item by class name" )

function ulx.givepoints( calling_ply, target_plys, amount, currency )
	for i=1, #target_plys do
        local v = target_plys[ i ]
        local points, premiumPoints = 0, 0
        if v.PS2_Wallet then
            if currency == "points" then
                v:PS2_AddStandardPoints( amount, "Admin gave you points", true )
            else
                v:PS2_AddPremiumPoints( amount, "Admin gave you premium points", true )
            end
        end
    end
    ulx.fancyLogAdmin( calling_ply, "#A gave #i #s to #T", amount, currency, target_plys )
end
local givepoints = ulx.command( "Pointshop 2", "ulx givepoints", ulx.givepoints, "!givepoints" )
givepoints:addParam{ type=ULib.cmds.PlayersArg, default="^" }
givepoints:addParam{ type=ULib.cmds.NumArg, default=1, hint="Amount" }
givepoints:addParam{ type=ULib.cmds.StringArg, hint="Currency Type", completes = {"points", "premium points" }, error="invalid currency \"%s\" specified", ULib.cmds.restrictToCompletes }
givepoints:defaultAccess( ULib.ACCESS_SUPERADMIN )
givepoints:help( "Give PS2 currency to player" )