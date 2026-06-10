fx_version 'adamant'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author 'Tucan'

shared_script 'config.lua'

client_scripts {
	'client/nodot.lua',
	'client/main.lua',
}

ui_page 'ui/ui.html'

files {
	'ui/ui.html',
	'ui/script.js',
	'ui/css/style.css',
	'ui/images/*.png',

}

lua54 "yes"