$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.32.70.msi'
$checksum   = 'ff9cacf10af9c7b6c279ee0ddac94a12ecd6bacdd39a8d99dd0b88f33e9aabef'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.32.70.msi'
$checksum64 = '74bda8c7d1cf19e7c450209aa13624b6149967e67f8a97b944c070b4dfe5a238'
 
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
