$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.33.msi'
$checksum   = '7aa9438bc7a4e7e4bf921f90954112ae9991eff4615124d36ac403bab5f3c299'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.33.msi'
$checksum64 = '1a9a8b5e164f6afcbbc997c725d299b75f45c1c7272dc8a9ae838337a5e1ecde'
 
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
