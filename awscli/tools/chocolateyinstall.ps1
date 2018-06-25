$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.15.45.msi'
$checksum   = 'e4b521cc10f5baa7a8873218823190c3fbe36eb8715acfeb55c90ef0f083a2d7'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.15.45.msi'
$checksum64 = '9c932d358518fef00e63942f162702f3ee17e8dcb847c42948418b4bef50b88b'
 
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
