$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.108.msi'
$checksum   = '2c6eb91e9d152d20ede9e4d178f0e6f13be3e7e1aa8f1d8d9060b83a12de8468'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.108.msi'
$checksum64 = '3d9c530fef35f94b90e29ad0746287bc4881e6dbc77ca2ec7e5da30aaeaa9e09'
 
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
