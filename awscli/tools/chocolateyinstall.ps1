$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.10.msi'
$checksum   = '372484fb1a5f5d938cab1f0d7b44d9a606cb89119cf4169dd60089894ed1c6a1'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.10.msi'
$checksum64 = 'f39bed46903fcfcb3a8f44a2a5c49f7b61a103f5995bac5aba7ac30dba1727e0'
 
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
