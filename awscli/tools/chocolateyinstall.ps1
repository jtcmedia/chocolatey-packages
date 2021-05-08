$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.69.msi'
$checksum   = '2ce99e224383dfe6a6556e005609b4f45bd9ec074bf7a37f5791a2e1335dcf81'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.69.msi'
$checksum64 = '594b9236c3d9cb7e37ad0959a19e07dee7e4a3c7463eeb15015c199b01453c91'
 
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
