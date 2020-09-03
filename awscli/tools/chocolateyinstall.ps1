$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.131.msi'
$checksum   = '797f9275591be7516b8cd37cd4ae39e69410ad368601f15cedab540aa8fe3d7b'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.131.msi'
$checksum64 = 'c79b0f1fe7388e1acb5630038cd9cc7b621f94cf7905e3bff4dd7ec870e3af66'
 
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
