$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.20.12.msi'
$checksum   = '86bfc85a2be50fac99d62af66c878a716cbd73d21fba3842fdbf94b08b55f542'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.20.12.msi'
$checksum64 = '8810f794bb71b950b2c3ae588650917f1aff31c015fc7b8948bfcc139db972ba'
 
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
