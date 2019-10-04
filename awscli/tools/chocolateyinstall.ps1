$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.252.msi'
$checksum   = '11a9763b1f47d8c65d6f148e12517e01497ef3ec3f1ee8f7c9314e8cc3492c60'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.252.msi'
$checksum64 = 'b2dfb4d547f304f0ac3209945dd65698bfc0f15e8d66128f59f27b0b8de3a527'
 
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
