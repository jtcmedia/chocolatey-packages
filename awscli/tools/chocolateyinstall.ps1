$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.32.8.msi'
$checksum   = '4d62f636e3b22d32de74e3b99d15d4f96d5ce352e8f64bce8d8191e25bd3abb3'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.32.8.msi'
$checksum64 = 'aac69c8a98b86078a6ee5b86e6291b4754cb5f6cad7efc88bba692b0675043d3'
 
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
