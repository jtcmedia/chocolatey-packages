$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.65.msi'
$checksum   = '7359ed9722d1e350f2cdd15416cc813e258d538642a403ce1f3a1793009676f8'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.65.msi'
$checksum64 = '54b6f163d1e1fbaff1ebdb8a114299960df9d4381be1853f11bbb9dcdd7e52ef'
 
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
