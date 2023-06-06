$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.147.msi'
$checksum   = '3f50796e653fcb9c7bf58895e3fdcda570640b6dc56dc231907c0b58db9e3f5a'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.147.msi'
$checksum64 = '2f5d1ba66e325ba1529d5124d205a019e3c17c61036b8c8f094b8a0ae62fae42'
 
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
