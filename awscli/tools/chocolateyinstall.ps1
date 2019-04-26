$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.146.msi'
$checksum   = '9b2c7cb2eb4ad35ab1531741d93713ec5c8aa7ed789e0f31bfbe2375e497cbb2'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.146.msi'
$checksum64 = 'b14fd3e5f60a063945a5ccf2432380223d91aaaa9b2ffca446b8489272ee3e88'
 
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
