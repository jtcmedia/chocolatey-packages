$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.192.msi'
$checksum   = 'c4ae74c8032e6a4decc8ed711d7e8bd88c42828399d83ae3fcb6a15d89dba1a0'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.192.msi'
$checksum64 = 'dbf9b6aec7ea3397a8c234b2b567b55d2a5c4ef2e1d486ab628de37bace72cc7'
 
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
