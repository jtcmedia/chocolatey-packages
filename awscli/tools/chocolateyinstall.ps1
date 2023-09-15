$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.29.48.msi'
$checksum   = '243afae876e713a17c43e2a7c86b39fe5092318ef0075011250f0b7a1164e3c3'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.29.48.msi'
$checksum64 = '11fcc6fabc4b2dc51c66fac36f9f58af7736454390bbc05af3f87443e16fc0cd'
 
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
