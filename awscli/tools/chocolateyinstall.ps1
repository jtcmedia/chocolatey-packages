$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.221.msi'
$checksum   = '1a044e76ab0ba377d201edefd5451aa3c0fa11cb50021e2e81baa3a70b542022'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.221.msi'
$checksum64 = '3ec5b89cf005ea472add2d40072ec54d3ebad25158fb2d9cf443a535cbda976b'
 
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
