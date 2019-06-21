$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.183.msi'
$checksum   = 'f9b1a1bce4f1f4c4fa67db3131382a3f9058f6bdd2f9a979c7eff7ed5ff9e3cd'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.183.msi'
$checksum64 = 'c550b542ac8db7835c9ec6395502a01771f79b340cbb6c89a8bb8c6bc4f32ea5'
 
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
