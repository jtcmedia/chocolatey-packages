$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.164.msi'
$checksum   = 'c35f98b9dd0dbc45e398e1b45907f8e30e273d89f6dffa9f8a81a00faba9dbed'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.164.msi'
$checksum64 = '3adb490b066cf456b444135f0acdc564a9f508f9c82d09c8778f7dd42a38e40b'
 
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
