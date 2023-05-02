$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.124.msi'
$checksum   = 'e190c8b5ccce83d1330bd7ef083507c7dc2c19f397b40e9be3597c61178276a3'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.124.msi'
$checksum64 = 'fdc50fdf29da59cfa1590f4927c1a1a8fe8fdb24726df41c4949838c8d9fb872'
 
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
