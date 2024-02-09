$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.32.38.msi'
$checksum   = 'a0e7f4e5964528ab2af23bc25f1990e6a6bc8e6b98701a4ea1e214ded4c515ed'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.32.38.msi'
$checksum64 = '50d9e7d0b4386c4f3a64d68f198799e57e47a624bb2c376cae72bbfe58d7079c'
 
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
