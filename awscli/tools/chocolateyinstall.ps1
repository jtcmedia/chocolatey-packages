$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.4.msi'
$checksum   = '7425f7f2260764dd2d5633ae652185457f88e400125cec78ffa9c88bd1fe8c3c'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.4.msi'
$checksum64 = 'e4dfd2b4c33ef85bca0cf715527538de2d97f3dedee52509c036f1c5d01ba056'
 
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
