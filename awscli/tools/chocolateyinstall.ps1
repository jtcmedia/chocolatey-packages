$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.46.msi'
$checksum   = 'ede707a0b90f3a9b926a2607ace0057d2693b7b70a36dd2f37a2b39f28e2d9b7'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.46.msi'
$checksum64 = '1f2143b5cd5e07cc6c7815df5bf49ebf7ea49bfed77499dc61554ef0343aaf4d'
 
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
