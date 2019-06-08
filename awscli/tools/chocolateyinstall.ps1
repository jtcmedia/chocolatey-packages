$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.174.msi'
$checksum   = 'fcc56396e3681546d5ab2dc7d117dbc4d31ffcb0807980d3edada90a3a8b6a0f'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.174.msi'
$checksum64 = '9c0a314abcb4f11bf2203b56f290db68311b0ba9a4ffff1ad3dc78b9a4f9e87d'
 
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
