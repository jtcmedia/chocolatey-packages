$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.25.42.msi'
$checksum   = 'bfa1513023cc7db60efb574aaa627d280b4578c09e4741ad5d3a1ac10b5139fd'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.25.42.msi'
$checksum64 = '56d2f0a212b468ec3f8d4dac1a92d00d9dad23f8a358a30a66bb5eecb496da76'
 
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
