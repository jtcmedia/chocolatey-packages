$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.22.52.msi'
$checksum   = '5b9a6fd94d68ab9b9c3bdabaae7ca21e38b508170b736d3033d07eefc7fdd7c1'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.22.52.msi'
$checksum64 = 'f8b465a8cfa5f8abef4052350ab5bfdb32cb0fabe45c5ca5a77b863258f42f54'
 
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
