define archive::download(
$url,
$src_target='/usr/src',
$archive_name
){
  package { 'wget':
	ensure => present,
	allow_virtual => false
	  }
  exec { "wget file":
                command => "wget -P $src_target '$url'",
                unless => "test -e $src_target/$archive_name",
                path => '/usr/bin:/usr/sbin:/bin:/usr/local/bin:/opt/local/bin',
                require => Package['wget'],
        }
}

