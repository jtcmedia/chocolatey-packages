$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.210.msi'
$checksum   = 'a4687a698b6be0845e0a0bbafe51f25becb899d3ddf986b46e82518d07cc3f34'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.210.msi'
$checksum64 = '163620af3d516457e60ecaee8e2a92ddff36f37b58527fb9e432dd67c346c328'
 
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
