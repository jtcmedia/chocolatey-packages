$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.32.97.msi'
$checksum   = '30d8d3d1fd524bb24a5efbc9f74b71d750a8433ca983197ba51c3e9c5847fd97'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.32.97.msi'
$checksum64 = 'b7535fc1901190d1ec4204f3d445c6e285f0f1aff674746abed64ee7451f9c79'
 
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
