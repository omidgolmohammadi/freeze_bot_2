local sudos = {
    "auto-leave",
    "baba",
    "plugins",
    "rank_admin",
    "bot",
    "lang_install",
    "set_lang",
    "mybot",
    "tosupergroup",
 	"gban_installer"
  }
 local admins = {
 	"rank_mod",
 	"gban",
 	"ungban",
 	"setrules",
 	"setphoto",
 	"creategroup",
 	"setname",
 	"addbots",
 	"setlink",
 	"rank_guest",
 	"description",
 	"export_gban"
}
local mods = {
	"whois",
	"kick",
	"aparat",
	"add",
	"azan",
	"linkpv",
	"gps",
	"ban",
	"unban",
	"lockmember",
	"mute",
	"unmute",
	"echo",
	"admins",
 	"members",
 	"info",
 	"welcome",
 	"mods",
	"flood",
	"commands",
	"lang",
	"settings",
	"mod_commands",
	"no_flood_ban",
	"muteall",
	"rules",
	"poker",
	"pre_process",
        "weather",
        "tools",
        "help",
        "addplug",
        "webshot",
	"rmsg",
	"tag_lock",
	"translate"
}

local function get_tag(plugin_tag)
	for v,tag in pairs(sudos) do
	    if tag == plugin_tag then
	       	return 3
	    end
  	end
  	for v,tag in pairs(admins) do
	    if tag == plugin_tag then
	       	return 2
	    end
  	end
  	for v,tag in pairs(mods) do
	    if tag == plugin_tag then
	       	return 1
	    end
  	end
  	return 0
end

local function user_num(user_id, chat_id)
	if new_is_sudo(user_id) then
		return 3
	elseif is_admin(user_id) then
		return 2
	elseif is_mod(chat_id, user_id) then
		return 1
	else
		return 0
	end
end

function permissions(user_id, chat_id, plugin_tag)
	local user_is = get_tag(plugin_tag)
	local user_n = user_num(user_id, chat_id)
	if user_n >= user_is then
		return true
	else
		return false
	end
end
