$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.206.msi'
$checksum   = '709ea291004eb35ba86858a592dd8a5c489f8b4b6230fd7b9a5fe1675d332fe2'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.206.msi'
$checksum64 = '6cfbb1a7e8cc35890b6899f6f83f9c8901e4660071c2070b90cb36af081434aa'
 
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
