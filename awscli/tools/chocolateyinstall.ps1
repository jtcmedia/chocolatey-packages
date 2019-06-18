$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.180.msi'
$checksum   = 'c9a5c960ad1e66a72fcb2619ed8484f0120180005b3c14820324f0fc7568d8de'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.180.msi'
$checksum64 = '4721bc584e45a6fa9c3e9c4be0005d33950518d45e700850b5cd3d57592f175f'
 
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
