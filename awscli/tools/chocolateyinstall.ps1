$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.296.msi'
$checksum   = '4d038ee30100762ee5a2b17016d3ce237834da8c1e4a584b89c2c505a8712f93'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.296.msi'
$checksum64 = '38e6ff0e13aa35ba50d90e2b90ccb80c7bc6d817a028754a66def34701d1b7ed'
 
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
