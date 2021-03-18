$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.30.msi'
$checksum   = 'bc85b6df2b76f2438df3a5c5bbafa636ce10e8ec31f044cbe74cba2704616e91'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.30.msi'
$checksum64 = 'd63b29a3482ee948ca999d71679cf4b47e4f1a0456715a9202660d0e84f54cc2'
 
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
