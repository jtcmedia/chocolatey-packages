$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.29.80.msi'
$checksum   = '9d66eead0b80a867bfd3ffb26d0ea22b6536c125d0c3d30b3bbbaef7f186c0af'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.29.80.msi'
$checksum64 = '3719e39b2ab91abb08da1e1b6ac0499e03506369497679970ab7fd3d0dbf4c11'
 
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
