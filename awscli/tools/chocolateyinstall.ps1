$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.209.msi'
$checksum   = 'c1ebf093f8e7076d9aafc775b51f95628414f434c76e2641290c72d5ddb763e9'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.209.msi'
$checksum64 = '275241f967b79be2680aa2cc1b08fe0ea536e28e9b4141a6bb3e442509c0a769'
 
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
