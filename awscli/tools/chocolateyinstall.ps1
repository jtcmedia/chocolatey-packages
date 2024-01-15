$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.32.19.msi'
$checksum   = 'de58659fc12f303329731c9f3d1ffdb32f378f87ab2148a56cd31bbd5574ed0a'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.32.19.msi'
$checksum64 = '9d08bb49eef6224fc2ccf9027b539c0084c7c2248cf9e94de4f42ab621f2c2b7'
 
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
