$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.115.msi'
$checksum   = '613a05f58c47494d71ebecdbbb95c4d7482e67324b05cdfe82c25c8b06ba1c95'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.115.msi'
$checksum64 = '6a97037d85f9207eb21ed5884e57339bc270c719dcf3ae5f89b6f82458abcd93'
 
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
