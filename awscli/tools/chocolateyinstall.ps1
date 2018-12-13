$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.74.msi'
$checksum   = '13cde9c9dd542bc8dcf2d1cae67ef4e8ac81729da39a28969bc66747d4c5c35d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.74.msi'
$checksum64 = 'c1d58cd4694f40ea480616ec41cf10046352d7ececb1e1b8fb0c463c0ee0a40f'
 
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
