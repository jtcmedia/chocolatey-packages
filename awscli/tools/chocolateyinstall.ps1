$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.110.msi'
$checksum   = 'bfbfb1aa39d3c6bdc63ba80065120c986f0e7b37e9e9017b7d6c93e82c2d5074'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.110.msi'
$checksum64 = 'b47f6e748b182107799cce2a21aa2b366d989fd3d0f0a3c4ab40e47dec993868'
 
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
