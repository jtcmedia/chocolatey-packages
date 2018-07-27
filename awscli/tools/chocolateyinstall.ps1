$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.15.66.msi'
$checksum   = 'df4a468d9e213fe51c3d1064e121075e66d2610533280b3e67d8fa5fb50284f5'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.15.66.msi'
$checksum64 = 'e48eb8aae2b0fb072fc2796fa10b7a004ec30306699c7d1a6e73f579d69736cd'
 
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
