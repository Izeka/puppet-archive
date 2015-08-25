define archive (
$src_target="/usr/src",
$url,
$archive_name,
) {
archive::download {$archive_name:
	archive => $archive_name,
	url => $url,
	src_target => $src_target,
}
archive::extract {$archive_name:
	archive => $archive_name,
	src_target => $src_target,
	require => Archive::Download["$archive_name"]
}
}
