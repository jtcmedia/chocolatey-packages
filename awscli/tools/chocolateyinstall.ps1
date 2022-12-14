$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.29.msi'
$checksum   = 'f92859f37f5194f54568d8eab264d664b75f9c4ad3877ca5cbe7a7c8c9935510'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.29.msi'
$checksum64 = 'e5c937efe8a21f732f98655d453c7ea6892b51fe1b5625ec2fd1849e5457259b'
 
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
