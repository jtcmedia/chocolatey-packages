$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.76.msi'
$checksum   = '3a208f63fe7ee61a5be0f9a6eb0bc3de59f5689665c16b1aca6f2e7d5e509934'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.76.msi'
$checksum64 = '61986fbfc65db31cfbc831972bb4e006a688f4127180156dc8f0072b66b20c7a'
 
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
