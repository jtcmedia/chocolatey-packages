$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.110.msi'
$checksum   = 'b1d9a24646b8a1d8422f7587a70f32fd913dd2d862ba741b4a2a65315ace812e'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.110.msi'
$checksum64 = '0b9d7d826bd16f6be4ab09aa51595b4886cb111ce156088fafe9b66207834584'
 
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
