$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.28.msi'
$checksum   = 'ebe291f3bd25cc7c59b86a5332a66f969b03f8550f80f3446ff86a65360e63c4'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.28.msi'
$checksum64 = '73228d2062b90bfd43c2435d2087c56f10647c4d45bf5cfddf2e118fd4083e76'
 
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
