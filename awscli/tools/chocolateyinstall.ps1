$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.25.83.msi'
$checksum   = '8df9e1273656a7eb8bd9fb822f4fb6c14fd2381b7fc0c41d8014ffb45d57f4c6'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.25.83.msi'
$checksum64 = 'ae1af1d468e4a69d7bdf2e22d90d4ae62f58ce4bb50e108acc44d9999632556b'
 
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
