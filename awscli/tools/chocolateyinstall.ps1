$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.41.msi'
$checksum   = 'ee25be382992f9bd8ffed900dc19d55a4e13e49965d71cd7b8baf012d5e7111a'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.41.msi'
$checksum64 = '8e9577e17f49b916ef4f7ca39ce3f4a0ee84eaac7c50dfb479017491b28a74df'
 
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
