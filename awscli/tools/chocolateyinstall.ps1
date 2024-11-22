$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.36.8.msi'
$checksum   = '40b77b488e99fbfd6e81c565c45c3dda1eb4adfaefbbbc6d544455043648f889'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.36.8.msi'
$checksum64 = '41492de9b53274fe7ae06121bab0e54b0240e43939ff644f412ab2b55bfa8590'
 
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
