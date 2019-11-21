$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.287.msi'
$checksum   = '7c74e2ecd554b2ad47c42511497d8fec8aba60927143e07afc6b7a124222323b'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.287.msi'
$checksum64 = 'f430f1a03fd11e9f0edc00a630702c8d8dbb4e193e4885a2c24536f9cd6961cf'
 
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
