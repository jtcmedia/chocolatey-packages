$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.46.0.msi'
$checksum   = '38b1d6de5e63b568af72fa99445421c3a043bee5ec7baa423efae6c79087b9b2'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.46.0.msi'
$checksum64 = 'c7da2faef1814910c4c57d1eb6106b052f6e639b30e74032f367803b4d385a06'
 
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
