$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.281.msi'
$checksum   = 'd4b4eba7ed2f549905c5ecccf0711248a4b3278ba49cc6a4c85de901a58a209d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.281.msi'
$checksum64 = 'eaec6bbd5d69336dd8307441c8e668e9faabe3c7b89b95c0039048aee8fc3074'
 
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
