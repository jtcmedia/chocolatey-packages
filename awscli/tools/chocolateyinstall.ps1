$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.17.4.msi'
$checksum   = 'bfa5be00422235eb8ad01814c13fc2c9993fd0d188b51ef81165959a6d1c7f2e'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.17.4.msi'
$checksum64 = '0e59c7bbc2c468aef4684108c7c2e6bcb34f2a34cae95c16cf11266d2102f5f9'
 
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
