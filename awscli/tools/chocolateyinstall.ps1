$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.20.17.msi'
$checksum   = '6202e69859dabcd2b8b3a0cd7c7e949464267cbbc647890f2bc1581f51d0e007'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.20.17.msi'
$checksum64 = 'fcd846c1c9ca6c3aa12b1d48e1a5344e15e0e5f6ed1c0ec8fa1c1c69a2b5aa9e'
 
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
