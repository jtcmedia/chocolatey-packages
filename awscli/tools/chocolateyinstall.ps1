$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.135.msi'
$checksum   = '0ce592d339d4705decb46592b45a7e33e21d7bc7cbc26c7c6f79b04d4cb32746'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.135.msi'
$checksum64 = '284cdaa3e5fbae7403ea91db52c2c120a67930ec4e53116c71f7e7f536d24622'
 
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
