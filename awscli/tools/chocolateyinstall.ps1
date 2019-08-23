$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.225.msi'
$checksum   = '96f1fcd58b77cd9cabbed59880f2dcb2e9f8c1e61b3f0920cf491c341ad47096'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.225.msi'
$checksum64 = 'd15f10b0a12ddb7561e352d6757fc24a0832fa9d41e72a9c2d2c34c113740716'
 
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
