$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.196.msi'
$checksum   = '232646ebbdde0a247bf4d37c870c77026855aab70a6f6e6e21ab07a2c76216a0'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.196.msi'
$checksum64 = '5a78eff3be371b2964a486f74d75284d2af8754c29a986215b8c4dd2dccf9012'
 
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
