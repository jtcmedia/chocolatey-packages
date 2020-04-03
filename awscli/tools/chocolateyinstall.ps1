$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.35.msi'
$checksum   = '14fe44f9f1ea953bdae644c804cebdde69d7b6fbc2ef1dba8a07e0259e1bdc1b'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.35.msi'
$checksum64 = 'c936e85566896cdef13494b8b11d4b963ca3c0c6c5829c66f47dd8d51dcde71f'
 
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
