$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.22.61.msi'
$checksum   = 'df19d5dd44063dcf22c175b67359b51c0d79f7476214f4e8a263727c7bb8fbb2'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.22.61.msi'
$checksum64 = 'e930336fb14872f6bd8fd2a6856d5a3052ad457fd8cd0279c97c629487a05b26'
 
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
