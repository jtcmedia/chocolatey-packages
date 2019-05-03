$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.151.msi'
$checksum   = '366c4a5bb213db2e2e55fe8b10e7d751e8ab3c3b1f5648a8c89a41b2dfb4496d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.151.msi'
$checksum64 = '7718c961b5163c4e92724d08f0876ce3b14fcc2c770e9283b8d265d08079de41'
 
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
