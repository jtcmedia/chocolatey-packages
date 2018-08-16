$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.15.79.msi'
$checksum   = 'b4a89047cc6e7207f625377b9d9136096dc9ec83bc140ae66d6e3b43de22efa2'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.15.79.msi'
$checksum64 = 'c2fffd85d4b4d0d5ea9d6b53353476dabb69dc04341ebee01ab16452069ffb80'
 
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
