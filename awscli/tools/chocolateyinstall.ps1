$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.29.26.msi'
$checksum   = '1f9e3633bfdf15f8967d7cfb8d3968dc4cff4b6a269a965421c0dec49c8bb0e6'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.29.26.msi'
$checksum64 = '537701cd6e8ad4e1fd56434a0713b3b25ce27f827fcb602e2c33d4ec967d036c'
 
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
