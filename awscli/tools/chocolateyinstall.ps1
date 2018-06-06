$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.15.33.msi'
$checksum   = '9722860d9acfd54144ab9b5d3ed225e6cf71d6891ed0ed4a7ebfcd803568556b'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.15.33.msi'
$checksum64 = 'd166e21d3ded89a63b007facbbb6492e44f0c70c7845e8bec9a982fc54b1a92e'
 
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
