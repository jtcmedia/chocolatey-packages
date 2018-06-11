$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.15.35.msi'
$checksum   = 'd535d4b07d78b2cf8fa1710622b9ce43c230e9819b0aa5d66be6effcc57ce703'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.15.35.msi'
$checksum64 = 'a9d7217a3c957742e06037e30b1bb2839f52a9ca6f2c24ef6e5c2a70f4ed4e75'
 
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
