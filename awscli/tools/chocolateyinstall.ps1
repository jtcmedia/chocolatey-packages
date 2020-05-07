$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.54.msi'
$checksum   = 'c0591f2a1a9bb750ddff7e73a1ed41fe9b86f1719f5ecafc078d414bd17125c1'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.54.msi'
$checksum64 = 'bb66b9719c8c184641b02f9b6bd7d7fde69faee907b4e5af56000c4a65a6e28b'
 
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
