$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.22.50.msi'
$checksum   = 'a91c1585bd752bd2e45cb68dec72dbfca846e8d56a9ad8c3cad61ef6c23f52a0'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.22.50.msi'
$checksum64 = 'd0b7707f15df6cb386a8b1e1a9694309e9b6acde871cc7b98a2aeae22abdf668'
 
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
