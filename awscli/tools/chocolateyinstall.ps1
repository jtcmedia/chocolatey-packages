$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.26.1.msi'
$checksum   = '1db36b1ef43b50a202f5251e538eb36d6749b9dd2e0b863ddbc1b546abfca509'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.26.1.msi'
$checksum64 = 'c1509b685b3ec141c08fcc5cfe6970ffaa43e3b868bf4946c2d6e5816e411d41'
 
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
