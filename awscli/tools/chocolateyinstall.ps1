$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.55.msi'
$checksum   = 'd7a8b169b57e7a06a220f73791e0f7f0a61f4c5b4995ac1e375dcf7c44a8b398'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.55.msi'
$checksum64 = 'ccbddb94a87ccdcb83374907c208fa1b6f7f4fdfdac2f770d9ad94f9887c49da'
 
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
