$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.202.msi'
$checksum   = 'e1f2ce1bcb8a77437ce238f54bc076dd514bb8bc476f7ffaa0868490828eca82'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.202.msi'
$checksum64 = '194c8e081fd9726c91e1714a8166e7f67f5f2c10934099095f5b1b0d1bcf51e6'
 
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
