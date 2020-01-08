$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.312.msi'
$checksum   = 'b72eeff25b73ba1d6e2d75cd7f1a75d32e2493428253f76f4ba5b9e9036ef901'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.312.msi'
$checksum64 = '8bd723c403868dc5c7fde528eeb467dd43c3979aa601ceab9fea139ccbdbaa32'
 
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
