$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.261.msi'
$checksum   = 'b56a8c69611b60c2587f7d7f0d5d90d9d8c3ab9be9e9a8772e7e0e68b223b266'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.261.msi'
$checksum64 = '910018e4b720d82e4a72c3235824ad0c32739650b7e7bac640faf2a28a216bab'
 
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
