$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.29.83.msi'
$checksum   = 'd98b97c38188e9040a2e69b886db16d0ef89b2ac522a95862db44cf46745f48b'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.29.83.msi'
$checksum64 = '08ae74ea3d516279d59a600d50bb6b2ec0d866ae01b8f59f113e3f2bd0ca9e62'
 
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
