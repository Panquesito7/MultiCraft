unused_args = false
allow_defined_top = true
max_line_length = 999

ignore = {
	"131", -- Unused global variable
	"431", -- Shadowing an upvalue
	"432", -- Shadowing an upvalue argument
	"file_exists",
	"name", -- Shadowing definition
}

read_globals = {
	"ItemStack",
	"INIT",
	"DIR_DELIM",
	"Settings",

	string = {fields = {"split", "trim"}},
	table  = {fields = {"copy", "getn", "indexof", "insert_all"}},
	math   = {fields = {"hypot"}},
}

globals = {
	"core",
	"gamedata",
	os = { fields = { "tempfolder" } },
	"_",
}

files["builtin/client/register.lua"] = {
	globals = {
		debug = {fields={"getinfo"}},
	}
}

files["builtin/common/misc_helpers.lua"] = {
	globals = {
		"dump", "dump2", "table", "math", "string",
		"fgettext", "fgettext_ne", "basic_dump", "game", -- ???
	},
}

files["builtin/common/vector.lua"] = {
	globals = { "vector" },
}

files["builtin/game/voxelarea.lua"] = {
	globals = { "VoxelArea" },
}

files["builtin/game/init.lua"] = {
	globals = { "profiler" },
}

files["builtin/common/filterlist.lua"] = {
	globals = {
		"filterlist",
		"compare_worlds", "sort_worlds_alphabetic", "sort_mod_list", -- ???
	},
}

files["builtin/mainmenu"] = {
	globals = {
		"gamedata",
	},

	read_globals = {
		"PLATFORM",
	},
}

files["builtin/utf8lib/init.lua"] = {
	globals = {
		string = {fields = {"split", "trim", "len", "upper", "lower"}},
	}
}
