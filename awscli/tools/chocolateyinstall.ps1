$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.20.24.msi'
$checksum   = '9a7a24e937c46479d60c677ac330dc733fa339a6db27770f23fa005a84998e81'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.20.24.msi'
$checksum64 = '8db91af433eb0ddbd53a7f1eb4ed52cd58f7d2f3f00fc437aab530f0ba52a249'
 
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
