
$packageName= 'fs-uae.portable'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://fs-uae.net/stable/2.8.0/fs-uae-portable-suite_2.8.0_windows_x86.zip'
$url64      = 'https://fs-uae.net/stable/2.8.0/fs-uae-portable-suite_2.8.0_windows_x86-64.zip'
$checksum      = 'c8ae0a6d8d7e428444b69daab1c8d9a5'
$checksumType  = 'md5'
$checksum64    = '809b4009741d21a7b1df322a097dc036'
$checksumType64= 'md5'

Install-ChocolateyZipPackage $packageName $url $toolsDir $url64 -checksum $checksum -checksumType $checksumType -checksum64 $checksum64 -checksumType64 $checksumType64














