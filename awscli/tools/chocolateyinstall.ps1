$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.25.msi'
$checksum   = 'ae463991070f8af1c12a7d134b1acb8e411df541fd4f29bb034ebc904d7c172a'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.25.msi'
$checksum64 = '935c4a7c064978f571d2a06255ff5457e5608b32bb5fd79cc81af93ea0bfa8e4'
 
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
