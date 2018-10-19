$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.37.msi'
$checksum   = 'e864ea2264ac11c967e6d79b14e146c0e2b11a2d455dd814ee56eef3d768d72b'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.37.msi'
$checksum64 = '09508f33378a5266ebdb650cf049f8f1275e9fe0e98e508115ef8d91e58ff5f8'
 
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
