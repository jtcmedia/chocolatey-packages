$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.17.0.msi'
$checksum   = '39809f764cf56cb40fa1cb3a8a027eff5c7fda9b6eec0ab9e60fec8632f0f6e0'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.17.0.msi'
$checksum64 = '089563f76e100638e3eb99e9638fcf117aee3ce0cd019a2e527c7331c0e3dad4'
 
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
