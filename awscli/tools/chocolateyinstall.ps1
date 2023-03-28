$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.100.msi'
$checksum   = '1b2bb3d16d50d66d5f5f41e8c76e76348818cabdca05ba04a72668f76a7f0be1'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.100.msi'
$checksum64 = 'b6b5399f12ab4bbde75fb4e7e4068b75a0d4719ce1080e825f3e764e40818a46'
 
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
