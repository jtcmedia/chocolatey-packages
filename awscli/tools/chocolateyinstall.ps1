$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.39.msi'
$checksum   = '8063dd88e6ce1aaad7c30b20636ca3618a785eaa126126dad235fa8ee43611b8'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.39.msi'
$checksum64 = '4e017d75f74449536fc45b3d98626ed4a0ceed9d1cdb31472b533131b13fddf8'
 
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
