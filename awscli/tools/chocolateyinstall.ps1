$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.206.msi'
$checksum   = '05c06fbb00a416a56c6dc0ec1bfa7252776f7c33ae2cf4a1bab71e4e555a9c80'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.206.msi'
$checksum64 = '225ef4bcbe5da67ed437b7c3972b2cc768b38e24b653cb59174d5c619447b543'
 
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
