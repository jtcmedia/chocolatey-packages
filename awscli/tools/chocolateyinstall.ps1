$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.21.msi'
$checksum   = '6e725ea77aeb064fa6cceb561c8bda27e9d5af1eedd940b9f9b2a11085f289e1'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.21.msi'
$checksum64 = 'b0f74bdcdce5a88ecc2932e8f65bdf296fe7ba798fce931ccd5fa275aedace83'
 
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
