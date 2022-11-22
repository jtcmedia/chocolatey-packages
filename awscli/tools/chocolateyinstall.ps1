$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.14.msi'
$checksum   = '1ad7b0b6b8d78556e139707b216ee989b7c60ed37f170988fc640ed732919cb9'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.14.msi'
$checksum64 = 'dcd52d0d2b126d349f91e396e24c1509d8d7500577620ffa88b43e217fbd3abb'
 
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
