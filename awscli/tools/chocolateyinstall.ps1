$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.257.msi'
$checksum   = 'aee2dfd8e63f212f4225a661dcf05ebf701dd11665e29a39c9348322e07a27a6'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.257.msi'
$checksum64 = 'cf3fa6984f53a8ff289e39572ea38d5e83ba40d7b7362b63fc8c783b7d0303a4'
 
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
