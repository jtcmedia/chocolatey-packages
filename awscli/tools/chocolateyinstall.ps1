$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.26.3.msi'
$checksum   = '3f74c15600c8f436e013a14b712673b47e01d34d374c04dd5c0d87bcfc8b434c'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.26.3.msi'
$checksum64 = '41d2113d1fa986b7d8cd88327265d0ef53e94cb2d936c91e818c36474089ecb0'
 
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
