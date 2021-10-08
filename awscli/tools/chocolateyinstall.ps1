$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.20.57.msi'
$checksum   = '315a4c1bf9830d79083d8cbd4353865d349fc81c537e9a22c8d7ffba6d6a9aff'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.20.57.msi'
$checksum64 = 'ddfc30a4078c8cea189567a0f15dd05accee85abdcc2805c1d9852cc1eb253ed'
 
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
