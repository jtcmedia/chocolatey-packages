$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.40.msi'
$checksum   = '4c095f3a1efc0e408642cf1b59c07774135ec70f70f183c453069c6c567f92cd'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.40.msi'
$checksum64 = 'c0d4bcabc018a93ddc58ad606b666f52cc90dcffcb4afa20db8be74532c66ec8'
 
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
