$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.32.22.msi'
$checksum   = 'd39ec39bbaeb6a301b67653d96f989769ec15ea7c309edd4538e01d069165bb5'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.32.22.msi'
$checksum64 = 'fec73e7ffe6e6698d01abbd12f0881afc8a93c40f88cad8c2f8a4aadd83c9234'
 
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
