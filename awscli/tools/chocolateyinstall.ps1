$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.213.msi'
$checksum   = 'd60b389ea893ad94716d9c066c0be403b805118676ad6ec02c9d5fc3fdbb2609'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.213.msi'
$checksum64 = '54bb035932fdf05638cc7aae887276db9c5be5b4bdfbbb0df7fbc5cd94dfdd46'
 
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
