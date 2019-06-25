$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.185.msi'
$checksum   = 'a39c7246ca44abb968711ea2aa53f9f9af5c42c1b4e38181508e1893427ee8f7'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.185.msi'
$checksum64 = '95d0a8449f47be2c67651282b4e4d114e9c01dec33d9e7866cca993d1cf7a2ee'
 
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
