$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.91.msi'
$checksum   = 'e85e29fd1abc4ec8651a1ab34eb13d3c94328b1b308042c6f4e06257c67cb241'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.91.msi'
$checksum64 = '6182cbb39de9a9c3501b01a1d1366a9b365a753b5ec6ccb384ad98b9f2ad5b0a'
 
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
