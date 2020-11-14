$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.178.msi'
$checksum   = '95231d469cd6340261a226f6d850eca7b2eae6b7fdbe948ac63a6fcc23323bce'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.178.msi'
$checksum64 = 'a0c6243a8c02a7f92a2f18f90f20db23f0f1e0fbbef9bc8c97a0faaa5931b2bd'
 
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
