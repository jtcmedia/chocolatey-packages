$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.239.msi'
$checksum   = '377f4b99b21bcba4148fa3bcfdcefe65355a646e3bfcb079698ed1e2394e7484'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.239.msi'
$checksum64 = '014ffbdd6f29b090e55c107df1e8ed4ac20619b848083b79ea15dfd8a1c26478'
 
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
