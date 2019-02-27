$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.113.msi'
$checksum   = 'e9334049baff792b7f29f6e9c8ef33e3c1e2e5ec5daf0fd1311f5d48cd32a0bd'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.113.msi'
$checksum64 = '03a610d1b6b8f40d24d5dd35fc5957f1e530fb0da4ddc74aad216c2d63d67879'
 
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
