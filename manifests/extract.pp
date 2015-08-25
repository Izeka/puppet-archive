define archive::extract (
$target,
$src_target='/usr/src',
$root_dir=undef,
$path=$::path,
) {
 $extract_zip = "unzip -o  ${src_target}/${target} -d ${src_target}"

 package { 'unzip':
        ensure => present,
        allow_virtual => false
          }

# if $root_dir {
#   $extract_dir = "${target}/${root_dir}"
# } 
# else {
#   $extract_dir = "${target}/${archive_name}"
# } 

 exec { " extract $archive_name":
           command => $extract_zip,
           path => '/usr/bin:/usr/sbin:/bin:/usr/local/bin:/opt/local/bin',
	   require => Package['unzip']
      }
}
