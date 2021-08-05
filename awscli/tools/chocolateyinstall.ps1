$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.20.14.msi'
$checksum   = '62f3ef43b140794ba20fd270a693c7854daae722565ac4cd9e64263221d4e8e4'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.20.14.msi'
$checksum64 = '7bc4fbccf0e0bd9eed944b4aec7c86593bab4a68405a943fd1f9637c081c4e66'
 
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
