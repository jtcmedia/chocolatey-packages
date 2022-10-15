$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.25.92.msi'
$checksum   = 'c9ddd0a183b1a16b498ea5fd38153b94f2b63713db9192a2532cc14d69ccc29c'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.25.92.msi'
$checksum64 = '81520eeefbfa0a1ecc30d05bd67eb3fe802ed3763eb49628c0ad25b07a10f47c'
 
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
