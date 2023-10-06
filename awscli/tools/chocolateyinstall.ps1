$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.29.61.msi'
$checksum   = 'bfd0f6aab211e7e0499781bc4201172d4515f44bfadb19e085a77218584c6904'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.29.61.msi'
$checksum64 = 'f56b03ff7adb4c95638b7f510b634fe1e3193bc61b190da9f964e9235aac0e3a'
 
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
