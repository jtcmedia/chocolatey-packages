$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.3.msi'
$checksum   = '19c25cf7f45071cd2f222b259663508c9d5c500232a118305f0ad540ee6fe87e'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.3.msi'
$checksum64 = '1ff0e8e63daa20ec6fd58136afe937952e9d76c13bda1ede8a255210f9ae1d48'
 
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
