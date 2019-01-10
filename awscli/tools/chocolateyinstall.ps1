$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.86.msi'
$checksum   = '825dfa40c1dcc7dd87a3ef8912584357a865fd97c3209ec6b50fb46211e09fc6'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.86.msi'
$checksum64 = 'a22ea0a91cabc68ad3fa63ed8adaa970b1eabe5c738687493f90969114e25d13'
 
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
