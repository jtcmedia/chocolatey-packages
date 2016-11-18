$ErrorActionPreference = 'Stop';

$packageName= 'energia'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://energia.nu/downloads/downloadv4.php?file=energia-1.6.10E18-windows.zip'
$checksum32 = '9c5f9fc6276c6c6b639424a9753c7882844c6723c7e97c37be46fbbd891aff34'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url

  softwareName  = 'Energia*'

  checksum      = $checksum32
  checksumType  = 'sha256'

  validExitCodes= @(0)
}

Install-ChocolateyZipPackage @packageArgs

$files = get-childitem $toolsDir -include *.exe -recurse

foreach ($file in $files) {
  if (!($file.Name.Equals("energia.exe"))) {
    #generate an ignore file
    New-Item "$file.ignore" -type file -force | Out-Null
  }
  else {
	New-Item "$file.gui" -type file -force | Out-Null
  }
}