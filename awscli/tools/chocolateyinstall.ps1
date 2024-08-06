$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.33.37.msi'
$checksum   = '8240075f3ab8a0b57e5c6b0fb2fae8a45b64b4dfd5f6f2f8c1b1d39426982905'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.33.37.msi'
$checksum64 = '1536ce84d46c529be338a9c2a7e6de74a8b31d8064da6767347c572155fe45ed'
 
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
