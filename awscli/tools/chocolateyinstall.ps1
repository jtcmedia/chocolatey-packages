$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.29.5.msi'
$checksum   = '1a54a5c9a9fdfbfe2c2e3cfda1700d24e2b329afa9378b8e2bc16c11caf96967'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.29.5.msi'
$checksum64 = 'a73d2a986f812c2dd46bdc85f7d3212f81afc752a2cd71f627eae155476ffb44'
 
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
