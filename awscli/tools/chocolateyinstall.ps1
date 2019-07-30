$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.208.msi'
$checksum   = '2f68af2b6f3dcbbd9a5f7d705a205c03283baf959978fbcc9e0ab24210f33c27'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.208.msi'
$checksum64 = '5d19770367d0094f22fcc7e31ea241003e33bc342610d9b5a8ff64239efd0036'
 
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
