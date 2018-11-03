$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.47.msi'
$checksum   = 'e76d4c33e01a1c2c9a30a0e21f666d0fc7ebe09b8dd7ef64cb86ff8a6296d28f'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.47.msi'
$checksum64 = 'bb836d770c2127a4c96ede4b6089b2a492f859b5aae151777e0ddf8e50fe2a28'
 
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
