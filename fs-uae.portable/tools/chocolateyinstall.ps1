
$packageName= 'fs-uae.portable'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://fs-uae.net/stable/2.6.2/fs-uae-suite_2.6.2+portable_windows.zip'
$checksum      = '6dbbd605a9db042f5b9c4bb9cc5376ea'
$checksumType  = 'md5'

Install-ChocolateyZipPackage $packageName $url $toolsDir -checksum $checksum -checksumType $checksumType














