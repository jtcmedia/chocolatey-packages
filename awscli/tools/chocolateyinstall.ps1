$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.148.msi'
$checksum   = 'c1a554eb11ef67f714fe65078579f6693f20564a23fd6207365a012e7a5da04d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.148.msi'
$checksum64 = '7c823609219bc28fbdb3fd4fe404f8d9d078a71e7f43bf217c218f4d93bc3c70'
 
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
