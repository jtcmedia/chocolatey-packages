$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.248.msi'
$checksum   = 'd12fb58bedf5a4cd50d85a096bfff1d36b452b0827e3b3e2d48a6bdb2f88ed97'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.248.msi'
$checksum64 = '0345426c33732b6806b6fb962512b393d4b70f37b7db44b16f9fe7f2fa3492d4'
 
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
