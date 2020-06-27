$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.89.msi'
$checksum   = '4d7ba3a107151499cc7c282f22cb0cf598e82af43f2388a65c35f1e988fd3f31'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.89.msi'
$checksum64 = '744e0ec95f9c6e65b16945838dd91ce6e5415f17c8cc29d5cbad5fc848fa5793'
 
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
