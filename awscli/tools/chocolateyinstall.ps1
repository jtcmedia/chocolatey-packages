$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.63.msi'
$checksum   = '4a5ba0995c283c5a8b9faea200ab34533b3280817ea6f91bbff7f03a02cfc01d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.63.msi'
$checksum64 = '222b1d50330e246d87d712ffa9e3bfe1d1db76b67558484d8496ffa8a821e328'
 
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
