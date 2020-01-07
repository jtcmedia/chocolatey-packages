$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.311.msi'
$checksum   = 'a341c4d89aca20d69509c9ead7d08a690bf545577f50e7001079cd964ab25abc'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.311.msi'
$checksum64 = '7d8b8a5f2a81a1b0a80e60042e0b0908cfe353f57c77c2b2e74911d7dad1f333'
 
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
