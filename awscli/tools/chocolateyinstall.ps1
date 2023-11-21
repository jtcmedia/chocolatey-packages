$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.30.4.msi'
$checksum   = 'c3cea73ce940b6883b2dbf9507f0e8a906f3f2c3bf994231e2a112394be8e022'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.30.4.msi'
$checksum64 = '878df2e96d747ecb280a245fa2eab51e1226b46439f4ee030a295d918dd9bc0a'
 
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
