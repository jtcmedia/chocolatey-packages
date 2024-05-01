$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.32.95.msi'
$checksum   = '1149e3118c8cedef3eb162079e58749c9618a9b61321d19c9d5d0faaeb31c893'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.32.95.msi'
$checksum64 = '590cf3e30f2a753eb50bfd1044c11ef9ae3dad229d50c2eced58b41affbbd810'
 
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
