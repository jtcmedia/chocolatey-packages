$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.22.39.msi'
$checksum   = 'ef5754440f7409d93f8e6c2f1719a0902043e75afa7c15923cef2e6f002ced73'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.22.39.msi'
$checksum64 = '64ba76a1a6f124c5406518546b187492d13691859aaa0179ea0b33203ecb4e9b'
 
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
