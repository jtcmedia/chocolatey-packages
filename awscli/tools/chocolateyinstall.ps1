$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.197.msi'
$checksum   = '0e8ee5d37e91d5bcc36ea1b1356693caf0d505838e6d0ad4ee7ad81f6d73b9c5'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.197.msi'
$checksum64 = '50862623ef7579a81844659e2ad90fddda9b564ab470b37f3141e0a51216a133'
 
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
