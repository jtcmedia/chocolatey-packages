$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.264.msi'
$checksum   = 'ce6a7971d1447eedcd3310778b254e19c7e30374c6edac1f9046d36c922a6e21'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.264.msi'
$checksum64 = 'dc1baad1fe6bd0a6c79f211cfa4e29f94878c2a5c6eb64c0f59867db3c1e87bb'
 
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
