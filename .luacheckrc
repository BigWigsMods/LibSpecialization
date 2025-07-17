std = "lua51"
max_line_length = false
codes = true
exclude_files = {
	"**/LibStub",
}
ignore = {
	"212/self", -- (W212) unused argument self
	"113/IsInGuild",
	"113/WOW_PROJECT_ID",
}
read_globals = {
	-- Addon
	"LibStub",

	-- WoW (general API)
	"Ambiguate",
	"C_ChatInfo",
	"C_ClassTalents",
	"C_SpecializationInfo",
	"C_Timer",
	"C_Traits",
	"CreateFrame",
	"geterrorhandler",
	"GetSpecialization",
	"GetSpecializationInfo",
	"GetTime",
	"IsInGroup",
	"IsInRaid",
	"IsLoggedIn",
	"UnitNameUnmodified",

	-- Cataclysm
	"GetPrimaryTalentTree",
	"GetTalentTabInfo",
	"IsPlayerSpell",

	-- Mists
	"C_EncodingUtil",
	"GetGlyphSocketInfo",
}
