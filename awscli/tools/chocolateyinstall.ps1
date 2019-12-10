$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.299.msi'
$checksum   = 'df914255e16978704900659a41fafa0e2bf0361d8ca10b742f3c212e71d814ee'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.299.msi'
$checksum64 = '0ef31ddf294052c93d3772c2382c18fa34fe5d2ea550b43ccaad5bb29eecbb30'
 
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
