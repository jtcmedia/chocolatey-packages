$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.178.msi'
$checksum   = '91f8a35157f80d261c100a05610dcff5ae2c1e83a72b5d07cb70ac800a3a318b'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.178.msi'
$checksum64 = '598d505e0a147bd02760f2a5827ed4d02c6f517b6192c20fc54deffd2c4abe1d'
 
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
