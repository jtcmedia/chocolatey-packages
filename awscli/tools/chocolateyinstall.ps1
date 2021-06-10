$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.91.msi'
$checksum   = 'f1767cf2a3270ad01e658fcfed40b1b3a2b63c61e9737fdf872d9b7d42f98b6a'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.91.msi'
$checksum64 = '8873ce62ac5d607d8bb94eb605334619f8425ed6b9ff3dc91cc8d83d3aa264aa'
 
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
