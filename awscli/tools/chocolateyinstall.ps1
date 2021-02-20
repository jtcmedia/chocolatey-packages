$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.12.msi'
$checksum   = '35664d20c64199d3c33e4f01e9c15b4d0e65a4eaa31e7040156720bf7222596d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.12.msi'
$checksum64 = '88ccf48823ad2bf1364e58b9db8ede65ebfc6926a53bc48de50ab1ffdc9c513d'
 
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
