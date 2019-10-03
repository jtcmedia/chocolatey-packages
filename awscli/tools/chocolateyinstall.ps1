$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.251.msi'
$checksum   = 'a40f94e2619d3ccf94c2a5d9fe06d19e43754d3d532f5281efda17f208ea75d0'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.251.msi'
$checksum64 = 'c4eaa3ab167645aeb2a58b6ee67cd97579f083b8bec55b8f14fbb978c9abf502'
 
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
