$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.15.52.msi'
$checksum   = '190a3ce122d8f6d9b743e757520234c96343ecdd5ca4c412bab3051918798c81'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.15.52.msi'
$checksum64 = '9b34c6df0c1f25f16d46d353ec646c3cdc0a75ab64c33af8b6d85b1ba44e6183'
 
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
