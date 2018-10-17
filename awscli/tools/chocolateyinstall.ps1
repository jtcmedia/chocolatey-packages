$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.35.msi'
$checksum   = '3bff969bd8404cf90d8a45ebb47c9c38d069e9408b8c309dd8c2057d76a16f10'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.35.msi'
$checksum64 = '16eb861b33e402f35bd69eed9fd8ea83a3626d0609f079d9bc28bd4673fd8a29'
 
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
