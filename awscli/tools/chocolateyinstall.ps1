$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.103.msi'
$checksum   = 'aa3bae448c69441414c471c2a63f7219b9e0a97e2a8171114188c46ab3f70510'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.103.msi'
$checksum64 = 'd8c8ca9d989a6846eee4c5f85733cb5f6354f6c6ab4977e4c084d5f4c41acfb1'
 
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
