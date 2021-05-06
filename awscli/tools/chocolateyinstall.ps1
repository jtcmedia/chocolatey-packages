$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.67.msi'
$checksum   = 'dda565655b8f684cbbf1a23f659c6c1eab6ce4b6f183dd688e08f3a425a0b4ea'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.67.msi'
$checksum64 = 'dbe694e8d344356cf5d3f48a5528631efb1cc77aeb0ca41908fdead2c811ae76'
 
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
