$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.63.msi'
$checksum   = '392dbd110d18efb2d71efcfd2eab95202dbe5d3d9ffbcc9a40125ea9def24069'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.63.msi'
$checksum64 = '40838fe4520d3893f9e4bfd826ebdd2ffaea7cd8f6fb6d9b9fb48feecde1e597'
 
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
