$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.72.msi'
$checksum   = '708eb5d3e407e5bdc920da3268089d3f58b6a4dcffd330ff543e6bdd0cb70a4d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.72.msi'
$checksum64 = 'fe66bb7f37714749faa8cfca9d39b8ce63f306eb22455c5da9ae731b0900715e'
 
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
