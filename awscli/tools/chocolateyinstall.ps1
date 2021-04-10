$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.49.msi'
$checksum   = 'e1c51f266175072efcb268a34fe9edddb5bcee7699bc4e40798bb6794aea53a4'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.49.msi'
$checksum64 = '7400fa688a1ca299a63e2cdbb4e3f7ea6cda78016df9a6c57ebc08f078f2f837'
 
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
