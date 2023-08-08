$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.29.21.msi'
$checksum   = 'd11b46fd5f0696357097c7cc8923f89a1c8ca1d8736b8f19c9e0b806a69427d0'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.29.21.msi'
$checksum64 = 'c073deedc21cc2613c4694c406295be4f4bb98f5a38e477c191b4c3dfcf4d9b5'
 
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
