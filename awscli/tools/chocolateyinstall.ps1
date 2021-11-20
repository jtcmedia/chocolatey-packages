$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.22.10.msi'
$checksum   = 'b9c4a98c015d25007c1bd0c5579b19c6beecf1de606d4b0bc475e9bddbba96f2'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.22.10.msi'
$checksum64 = '14396917d394ef7d96eca008a1e6c841bbaedc918a7dd244b964283fe9f694ee'
 
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
