$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.51.msi'
$checksum   = 'ee1c322a1eec6e369abb92b1d76f8c106bb0e3a2c79853d5b53c687111adb942'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.51.msi'
$checksum64 = 'abe35dda77bdd7de2ee3902d8097c64b2e30af439cd0b6bd1423ff67a9455859'
 
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
