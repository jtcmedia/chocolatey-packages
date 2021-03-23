$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.34.msi'
$checksum   = 'f6994b425f39767a375933bafe23a29a234c12f5dcd5a6a22dd5cbf1309715f7'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.34.msi'
$checksum64 = '5090ed6a517237d10fefcd7a32074a5f7e2cbeff3ec9de654b16d937521e7f42'
 
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
