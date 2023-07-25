$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.29.10.msi'
$checksum   = '7f738892759ec80ab92c7a14f08742cf0c3e0797d0eae3bb6dd5771bf671bd30'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.29.10.msi'
$checksum64 = '2afe4059d51ac18f7e4bb080d7a3663ed7c024c8a249af8e2f851d2fb2a03200'
 
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
