$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.229.msi'
$checksum   = 'f3735bd37451dd8d37dc34edf4c7a1b04aee819cda4b7a9a5a28e5ce31579f50'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.229.msi'
$checksum64 = '8e88d78e2887be7e17e15c6e9a8dffbf14da8e239d420375d3c84ba7666d02a6'
 
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
