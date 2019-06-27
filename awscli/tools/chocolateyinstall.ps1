$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.188.msi'
$checksum   = 'd0eb660c9b289e951bfe4c136a341f17a636d89740935feb51c53b54a4830ed9'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.188.msi'
$checksum64 = '080dbdaf08f2bec4c44d607b49bb027585ab92ed9b0a9ec1e44674e8e5f35eef'
 
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
