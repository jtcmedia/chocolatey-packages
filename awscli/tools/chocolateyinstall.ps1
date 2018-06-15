$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.15.39.msi'
$checksum   = '1f2aaebb66ecd58b72dc6794c302a1db93681207711c62e2cd29deb1e7af31d6'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.15.39.msi'
$checksum64 = 'cc0f4bd9c77b0a82024d7b690405a98b57da8cbbcf13812e6f9fe144b019f2e6'
 
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
