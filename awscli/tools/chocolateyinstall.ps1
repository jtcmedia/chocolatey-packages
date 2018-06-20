$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.15.41.msi'
$checksum   = 'd30f9a7367e48c9f8cbc6e3d4df47e7fa9c0f5d354abf53c9a9a6e8477d4ca3d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.15.41.msi'
$checksum64 = 'f6ac044610dee3033bb5560f41e1053999874c146c75f677210fdd27994ef1aa'
 
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
