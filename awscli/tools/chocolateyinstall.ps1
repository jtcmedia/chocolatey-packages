$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.277.msi'
$checksum   = '6b9901cddcfe24b533d292a223039bd5ded3e3b694e1f9c90b3b6663310ea1be'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.277.msi'
$checksum64 = '2bdf91c4c03030ba03bc3f9587c6d512df3ebb76b8bb3c15ea3d7cdcee83a984'
 
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
