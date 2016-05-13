## site.pp ##

# Define filebucket 'main':
filebucket { 'main':
  server => 'master',
  path   => false,
}

# Make filebucket 'main' the default backup location for all File resources:
File { backup => 'main' }

#node default {
#}

case $operatingsystem {
  'windows': {
    Package { provider => chocolatey, }
  }
}

hiera_include('roles')
