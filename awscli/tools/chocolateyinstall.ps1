$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.15.57.msi'
$checksum   = 'aa83853cce708a7f1d12ef2e593eb41188e7055a1b55e3b008a2bf883c5caf62'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.15.57.msi'
$checksum64 = '2b77a10c0545cba605401dbcbdd222dabf6e9354cc4d3bf923cb2ac01ed1f296'
 
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
