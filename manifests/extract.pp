define archive::extract (
$archive,
$src_target='/usr/src',
$root_dir=undef,
$path=$::path,
) {
 $extract_zip = "unzip -o  ${src_target}/${archive} -d ${src_target}"

 package { 'unzip':
        ensure => present,
        allow_virtual => false
         }

 exec { " extract $archive_name":
           command => $extract_zip,
           path => '/usr/bin:/usr/sbin:/bin:/usr/local/bin:/opt/local/bin',
	   require => Package['unzip']
      }
}
