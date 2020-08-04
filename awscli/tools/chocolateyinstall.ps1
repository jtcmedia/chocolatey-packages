$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.111.msi'
$checksum   = '03e0356da884302d5b5893a13de89b1b5ed97393bd71e9b8e81a78846d246a6f'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.111.msi'
$checksum64 = 'dd8cf5ee7ff1450929a12f947180cb7a1bca50773371bc5e05b2fc67a14f46ae'
 
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
