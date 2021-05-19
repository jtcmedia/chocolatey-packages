$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.75.msi'
$checksum   = '3f8173bbacc4cc9619de2cd5d8572a316471fa85d6948ed1dd2d9b6831a36de7'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.75.msi'
$checksum64 = '1f2166ff3624638ae0cfa5737337c1a297d813950d4767a24eb0a556dc8b6c0f'
 
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
