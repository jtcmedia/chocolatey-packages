$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.280.msi'
$checksum   = '920d8649c2a98c6f5f67a62eedfdf5849609fd115ca02dcc0bcdd80830ac9a3e'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.280.msi'
$checksum64 = 'd27f8fd124c48e0ee826451d13a9df54d484a783fa891c30a3be161756052a3b'
 
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
