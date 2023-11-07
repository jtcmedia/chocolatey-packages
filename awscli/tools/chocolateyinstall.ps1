$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.29.79.msi'
$checksum   = 'fd6a4e4948ccbeeab345f73446d495888fff643c6ed3ff69c0de32a59cdc5fc8'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.29.79.msi'
$checksum64 = 'a9ff497173fc0c236f88bb16e35827e8f8e785c069ffa13e2314b89cd21e7224'
 
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
