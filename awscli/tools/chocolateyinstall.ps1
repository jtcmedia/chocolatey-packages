$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.284.msi'
$checksum   = '3b408b4124f7e16d75f0811ab4fbca1190ee716468a5021e10edea1fc211cb42'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.284.msi'
$checksum64 = '0b4e2b7220f13d4448eadff6ebc6d2244cbbcd0aed4a0a6106543f2877a51064'
 
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
