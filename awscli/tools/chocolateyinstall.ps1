$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.205.msi'
$checksum   = '29ff2567a3f2c4a0fe79523ef8022c80827355e3112de2a321d530e06ad3d728'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.205.msi'
$checksum64 = 'ce3e4d610fdf7571d18faee94c94f1be556aa55ef0bb7777e5d0152d67e7494d'
 
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
