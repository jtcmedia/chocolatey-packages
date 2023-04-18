$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.115.msi'
$checksum   = 'cb1a946a3d3dcf888b3b2a9e2f34375baafb44147974c584e5eb79c0e25c1fc3'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.115.msi'
$checksum64 = 'd6063e7689eb570d117b2c4116a1c9c9be94bd81d0082df4102139881cd2dca8'
 
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
