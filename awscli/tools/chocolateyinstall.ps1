$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.253.msi'
$checksum   = 'c7edb40788958b8d1ce66006b2a335dccde27ca404d152269bd1bf91dbd7ed7b'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.253.msi'
$checksum64 = '9c0911f4ded653bf977e51450f05f3168d22ee998a2711fbaa588c48933c28d6'
 
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
