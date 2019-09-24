$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.244.msi'
$checksum   = 'ba4f2db80b5e5c642e4add2e4306a181bb4dd530937cf0602b1e312939d14afb'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.244.msi'
$checksum64 = 'f30fa2aecb6a250385c25e75e602113066e5dc3bec9dc77aae153ef2ece87701'
 
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
