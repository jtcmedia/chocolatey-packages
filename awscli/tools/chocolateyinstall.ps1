$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.177.msi'
$checksum   = '3193f3d68ca6f341d385de81f2e0b3a88d7d57ff801ff38ccb45f9fa3d3e7c7d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.177.msi'
$checksum64 = 'ca4169d679eb2ce0d516747f3cd66b8f584472c56166315907af4f425664f642'
 
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
