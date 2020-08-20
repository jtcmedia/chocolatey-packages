$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.123.msi'
$checksum   = 'fbcc2d7cce9beea2af1a1a29f0a5f350c3806d8c189b46b0523dab3a3e589e25'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.123.msi'
$checksum64 = 'b3643d7b5ce7eda564ef172a89969bc117fae7d811817044fbe78f037081b45b'
 
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
