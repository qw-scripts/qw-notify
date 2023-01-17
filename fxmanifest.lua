fx_version 'cerulean'

games {"gta5"}

author "qw-scripts"
version '1.0.0'

lua54 'yes'

ui_page 'web/build/index.html'

client_script "client/**/*"
shared_scripts {
  'shared/**/*',
}

files {
  'web/build/index.html',
  'web/build/**/*'
}
