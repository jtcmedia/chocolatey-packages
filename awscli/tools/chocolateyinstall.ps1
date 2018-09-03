$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.6.msi'
$checksum   = 'ecfbbbeeb7d6a91974c57410037325c2e070d7ab843fd421f6db1a5a7a22d76e'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.6.msi'
$checksum64 = '4c0b577cd9f6e0b6a4ed97de12cd9564ee3fb0e74bc3c34dc49b92ecd38234f5'
 
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
