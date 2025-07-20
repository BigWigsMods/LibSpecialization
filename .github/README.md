# LibSpecialization

A library for transmitting your talent string and specialization to other players, that developers can embed in their addons.

## How do I fetch it into my addon?

You will need to use the .pkgmeta file to automatically pull this library into your addon.
Your .pkgmeta file should include the following:

```
externals:
    Libs/LibSpecialization: https://github.com/BigWigsMods/LibSpecialization.git/LibSpecialization
```

## How do I load it?

The same way you would any other file in your addon.
For example, in your .toc file you could define the following:

`Libs\LibSpecialization\LibSpecialization.lua`

## How do I use it (API)?

`LibSpecialization.RegisterGroup(myUniqueTable, function)`

myUniqueTable - A table that is unique to your addon, so that it can be identified if you ever want to unregister it.
function - A function reference, this will run when receiving specialization information from users.

`LibSpecialization.UnregisterGroup(myUniqueTable)`

myUniqueTable - The table unique to your addon that you provided when registering.

`LibSpecialization.MySpecialization()` returns `[specId, role, position, talents]`

Returns specialization information of your character.

`LibSpecialization.RequestGroupSpecialization()`

You should never need to use this. LibSpecialization automatically handles re-transmission when people change spec.

## Example code:

```
local LibSpecialization = LibStub("LibSpecialization")
local myUniqueTable = {}

-- specId=Number, the level of the keystone
-- role=Number, the challenge map ID of the keystone
-- position=Number, the Mythic+ rating of the player
-- playerName=String, the name of the player
-- talents=String, a representation of the chosen player talents that will be in a different format based on WoW flavor (Retail, MoP, etc)
LibSpecialization.RegisterGroup(myUniqueTable, function(specId, role, position, playerName, talents)
	print(string.format("%s has a spec ID of %d and is a %s in the %s camp. Their talent string is %s.", playerName, specId, role, position, talents))
end)
```

## Download

* <https://www.curseforge.com/wow/addons/libspecialization>
