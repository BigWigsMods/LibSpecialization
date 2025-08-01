std = "lua51"
max_line_length = false
codes = true
exclude_files = {
	"**/LibStub",
}
ignore = {
	-- Addon
	"113/LibStub",
	"113/WOW_PROJECT_ID",

	"212/self", -- XXX remove me after removing the deprecated API calls

	-- WoW (general API)
	"113/Ambiguate",
	"113/C_ChatInfo",
	"113/C_ClassTalents",
	"113/C_SpecializationInfo",
	"113/C_Timer",
	"113/C_Traits",
	"113/CreateFrame",
	"113/geterrorhandler",
	"113/GetTime",
	"113/IsInGroup",
	"113/IsInGuild",
	"113/IsLoggedIn",
	"113/securecallfunction",
	"113/UnitNameUnmodified",

	-- Cataclysm
	"113/GetPrimaryTalentTree",
	"113/GetTalentTabInfo",
	"113/IsPlayerSpell",

	-- Mists
	"113/C_EncodingUtil",
	"113/GetGlyphSocketInfo",

	-- XXX Deprecated with 11.2
	"113/GetSpecialization",
	"113/GetSpecializationInfo",
}
