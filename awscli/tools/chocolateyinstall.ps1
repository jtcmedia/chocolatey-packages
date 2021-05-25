$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.79.msi'
$checksum   = 'd8fb280f5ec9ef534d0ca420ddfa07c69f3c9bf3cd2e7a6f8dafefbf0d7c1668'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.79.msi'
$checksum64 = 'a0f7ab9f5e9c550a8518cbef51bf5ee0df34b5fb4ef3b67965a79059bf394ac7'
 
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
