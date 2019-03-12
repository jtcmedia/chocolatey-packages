$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.122.msi'
$checksum   = 'b8c07a09e16c8e8637f82885d3b0496d9501ea495192224010dbef05b18730f8'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.122.msi'
$checksum64 = 'cd57b5291467cc9cfd1380f5fb0c3660675ac0be24539f5825aa4ed3d7189538'
 
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
