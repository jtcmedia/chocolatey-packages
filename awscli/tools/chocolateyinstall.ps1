$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.120.msi'
$checksum   = 'ec891fb46e7b23a55a15824b523352c8d72a9861fb9a5d514484d236f395a07f'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.120.msi'
$checksum64 = 'bf2bc1d4b96ab751f83a8d0cdb46d7f7086d485529f37e4fe2e4bd2e0e437065'
 
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
