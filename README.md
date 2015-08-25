<h1>puppet-archive</h1>
 Simple module to download and extract zip files using wget and unzip
<h2>Example</h2>
 
```puppet
  archive {'teampass':
   archive_name => "master.zip",
   url => "https://github.com/nilsteampassnet/TeamPass/archive/master.zip",
   src_target => "/usr/src",
  }
```

