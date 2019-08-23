$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.224.msi'
$checksum   = '058d2d0090857787af8bca8aeb04cf839c157a34a5846bc6d2a1075a5ef55349'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.224.msi'
$checksum64 = '74602bebcfcc1dddfea3d125a5acfdf04fee8f6dd8debfa6b8f88b3f6ca42cea'
 
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
