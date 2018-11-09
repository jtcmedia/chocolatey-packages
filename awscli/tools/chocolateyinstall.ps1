$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.51.msi'
$checksum   = '7cc10a0280c20ad6c1abfe0e184a4f23b77a66a97eb99176da09f22fcc5e865e'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.51.msi'
$checksum64 = 'fcdd25fc1a450f16dad130f73f711b6a1bce2dd2d4fc466e8a2155603b4163bc'
 
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
