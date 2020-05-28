$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.68.msi'
$checksum   = '8da2231c9ad65b66825b66c396114ef12f8d874c070a47ed75787a6a52d3d645'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.68.msi'
$checksum64 = '9d8dc96e5eac4f738f7e6e69a1de4cf0ecfb02fc29c0276a62b624491d10d2c6'
 
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
