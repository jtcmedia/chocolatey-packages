$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.171.msi'
$checksum   = 'b0567e78f03e066ae2403ce86d4c7d1d5c0923fe8bc2f49f1339e32ba632c8ea'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.171.msi'
$checksum64 = '8cba655f51d188487ce15d396af26f04b0b045d63f625907f903710fccaa7cea'
 
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
