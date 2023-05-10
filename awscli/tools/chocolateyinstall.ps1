$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.131.msi'
$checksum   = 'a48c7a1abe5c08b9b393d6b3c04e5db0f5d55ac9c53c6500171d7773d5611c97'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.131.msi'
$checksum64 = '22498196ee2036f1ffd9d507cb4a919efdc361c511c348854e71d6da2898b190'
 
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
