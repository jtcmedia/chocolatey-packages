$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.20.38.msi'
$checksum   = '3297ac66f0dfeebe322e7a6a1bbaced3131e634dcf5678503d9a4338e53a8853'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.20.38.msi'
$checksum64 = '92dbcb924622cf1554b4b8df9920447b485a129e5ebad6968bbb6ac5e57e818d'
 
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
