$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.25.23.msi'
$checksum   = '7b6507ae43db6480fab39bae1f62d704d359b7e69c4effdcd0bb5b0c00b77554'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.25.23.msi'
$checksum64 = '7c8eb012fd9691894510d578a81279c91264bb2ad1d90a66b86cbca9b14afaaa'
 
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
