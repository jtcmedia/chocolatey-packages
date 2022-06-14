$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.25.8.msi'
$checksum   = 'f6c515e87cf0fd69c3ad1412b210028c3d6cfdf062c3e41ed0fc46b403a87a1d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.25.8.msi'
$checksum64 = 'da07bb5306565f74f256867ae27003da1c596063946b400ea0de21c3ea470f84'
 
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
