$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.42.msi'
$checksum   = '9d36dcbe5aa0f58c80b2dd106c86eff6d653dffc719c9baa0f61ffdd524c806d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.42.msi'
$checksum64 = '329214d5bd8c5c51a1a33ab284462cdcf0b91295644719b675a3cbd6dc13527e'
 
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
