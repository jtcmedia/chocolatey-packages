$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.39.msi'
$checksum   = '3a75a6ef7842ba312dc211ae37a442b7c824395ae421631d8462a5f84f763b2e'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.39.msi'
$checksum64 = '8077db6b5ba5bafe6d4f85d637a8849ed602fc8735ffb1d7cdf0d886bde8ba34'
 
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
