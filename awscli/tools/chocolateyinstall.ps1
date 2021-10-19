$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.20.64.msi'
$checksum   = '3a3d493df09cd323dfacb19c3c40561226e994e4b623c2548d9e3bf6fa3444a9'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.20.64.msi'
$checksum64 = 'e67683ed9b90024655ce8c8c6fa7105edc73f2e0a4568949c348fdec77e1891b'
 
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
