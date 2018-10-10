$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.30.msi'
$checksum   = '3c7abd1b940128bfdd0090e95f637bca3b7e3ed7b4fb16609514de6d268ae037'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.30.msi'
$checksum64 = '8602c6d9afc04dd3e570a6ecfe08867673507909aca7ef9e4ff5325e7683a3bc'
 
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
