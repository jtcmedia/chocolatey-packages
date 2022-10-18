$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.25.93.msi'
$checksum   = '82aa34a1eff9035cf1b990e47b214a82cd831cc80e80dd2a0f930d69435704cc'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.25.93.msi'
$checksum64 = 'a1afc9d805585631b57f47e61c93c3719d906fee9f1a8816a5041d988b4d87ab'
 
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
