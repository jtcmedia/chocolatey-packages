$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.11.msi'
$checksum   = '4a01392c1e73b2c0baf8b4e7aad2adb9fba7f965bb31745a930acbd443c528fa'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.11.msi'
$checksum64 = '5584268e89fec884918aad8b1f15a9eb35058d5b4649bfdb16a16c0ee37948cd'
 
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64
  softwareName  = 'AWS Command Line Interface*'
  checksum      = $checksum
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
