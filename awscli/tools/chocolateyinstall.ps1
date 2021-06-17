$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.96.msi'
$checksum   = 'd094ee2d5a86eae769bd1966b0f6450fd3b9f1eff356278575ec9c1cb071ee76'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.96.msi'
$checksum64 = 'faf915add688921d0ad5fd10272efd047fcb20b7f526491ad0e45a7022f850ba'
 
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
