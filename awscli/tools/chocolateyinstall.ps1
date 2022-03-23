$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.22.79.msi'
$checksum   = 'b46a5e88bc6db2320689ccc7a268b496f942b906ea66dbd5c954b00148885be4'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.22.79.msi'
$checksum64 = '90c8a7efdbe169f0192af85c1ed5d0b6700c9a6c4fae1a7d41d182125e9dd720'
 
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
