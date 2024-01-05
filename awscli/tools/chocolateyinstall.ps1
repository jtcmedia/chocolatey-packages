$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.32.13.msi'
$checksum   = '064e8c5a7e16700aa0ba2c23a263a506163aaacd2f5197cc8668a68d819f9abd'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.32.13.msi'
$checksum64 = '1f1eb099c42f8e80e7330c038ccc59b5eceb68fbb8754e15f2bb22996d7e0779'
 
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
