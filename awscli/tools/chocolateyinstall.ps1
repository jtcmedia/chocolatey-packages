$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.15.62.msi'
$checksum   = 'ca6b897e3d9460da42e5d4b3ca468257f7d2cea0986a25920889131ea745fcc8'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.15.62.msi'
$checksum64 = 'edbd30f4514d93a4e6438ebbdb00c0fb8d11c728490312f2392d6ae6d0e1fb8c'
 
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
