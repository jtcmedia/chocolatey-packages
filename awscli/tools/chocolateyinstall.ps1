$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.87.msi'
$checksum   = 'f82cc1f2c3b62ed0e00996f97b4e86a1b396a021b7476e798cf22d1eada25088'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.87.msi'
$checksum64 = '16a56dafbefafecdcb2c3d54c45e5e4517ee6131c8aa52afcbddb6e9067648f6'
 
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
