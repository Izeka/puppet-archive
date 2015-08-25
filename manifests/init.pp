define archive (
$url,
$src_target='/usr/src',
) {
archive::download {$archive_name:
	url => $url,
	src_target => $src_target,
}
archive::extract {$archive_name:
	target => $archive_name,
	src_target => $src_target,
	require => Archive::Download["$archive_name"]
}
}
