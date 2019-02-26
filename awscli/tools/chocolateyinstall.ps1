$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.112.msi'
$checksum   = '86c742d4d832e9fb8bbac17189cf206aa1f6c904d66935ad86c7d64c9f91aba9'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.112.msi'
$checksum64 = '8506d903b5c6e3fa03fa2473bc7e9aedfcae90694e7a1606f13bf82db553638e'
 
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
