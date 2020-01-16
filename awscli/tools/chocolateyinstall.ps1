$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.17.3.msi'
$checksum   = 'ec57ee64e845af48142e48fa7fe5fd0bdf3c80227de11835444834f10f7026ff'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.17.3.msi'
$checksum64 = 'eea04d6a3652c4a32cf12a9b6e0f83e5952035afdaec085824bb74df72703d39'
 
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
