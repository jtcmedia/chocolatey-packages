$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.200.msi'
$checksum   = '9f9c46de49fe972185c7d4ef0213f63dba47b9ff345b3571a4f2bdc5a312409d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.200.msi'
$checksum64 = '217fd795539ea40cd89a3e6f6b01727947cfe5abcf99d948e895ce11608a1cea'
 
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
