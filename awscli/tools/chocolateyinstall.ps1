$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.85.msi'
$checksum   = 'f1d8fcc524aa5f5376996903dfeedfceb0f0ed9b9dd7b697934051e0f4353f58'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.85.msi'
$checksum64 = 'c93f7fd636a28806e0ec475686fe19c9b040e7474c10e6eefe83c692af56a3f4'
 
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
