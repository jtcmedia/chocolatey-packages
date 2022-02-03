$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.22.47.msi'
$checksum   = '70b4b79ea80de34b7e00fac2bd7c2331a94c9a71e7e4f72209603a9e0e0b62d2'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.22.47.msi'
$checksum64 = 'b9243d411070e4cf62e00fd8b82fe64218416aaf4f7d8c512cc5d06de153ec0c'
 
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
