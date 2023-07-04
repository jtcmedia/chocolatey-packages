$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.28.0.msi'
$checksum   = '4d898d92c13797b8eef1c02d8c82bcc1ac645f0f389948e98cf649d02db47d5b'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.28.0.msi'
$checksum64 = '2d757d58c3d80987d6c16dd548f67ba839a9d15fcd1082a4a67ac368480a07d3'
 
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
