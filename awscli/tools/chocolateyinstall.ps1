$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.126.msi'
$checksum   = 'dab541aba6795010b7cfbfc58bc38a9495d5b959ef2de8788e96049ce45cd93b'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.126.msi'
$checksum64 = '24f1bcb911c7c90f5f0d0612e14452b3a7df6991d20dcaf107a54ea072f2e0b3'
 
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
