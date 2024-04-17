$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.32.85.msi'
$checksum   = 'c827b22b39655f71cde6f1cce3ba218ac39e3c4a0e756663e097a43ba3414f27'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.32.85.msi'
$checksum64 = '4446d48e8399b1e4b52174ec442891304458d0846e2cb8e4b73b8c3b6deff890'
 
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
