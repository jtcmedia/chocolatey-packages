$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.32.45.msi'
$checksum   = '4eca918402c199e564a8ca40cea189206f67d8554a086f6dfed951b4f612e3f4'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.32.45.msi'
$checksum64 = '2b01e6dd27b41e3d14d3f2c8ee0b9326fbf028cc3576b1b6aa06fbc3e671c82a'
 
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
