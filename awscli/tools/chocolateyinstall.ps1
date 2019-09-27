$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.247.msi'
$checksum   = '6edcf1918200c21400a89bedf1b65e3415067f00ca80075a9d74e2b4a9995a07'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.247.msi'
$checksum64 = 'fb1bda5fd14b3e10bd2c04d13eb7fce7e26e5fe65f84e3b9ae2b3d1324a739e0'
 
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
