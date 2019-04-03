$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.137.msi'
$checksum   = '3f1bbdb7ac6840c637de3a42b2670162061217c237bc3ec9b542eac032489fdf'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.137.msi'
$checksum64 = '3035f6a8e2b321c6b7502f5e0b156ce245db946fca52d56c29c59a4c9f04ae62'
 
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
