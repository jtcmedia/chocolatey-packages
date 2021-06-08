$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.89.msi'
$checksum   = '8cc68fca5c15dbc8ea1d05c0c331ff9f378dd47e4cac2299c75826f152d97d86'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.89.msi'
$checksum64 = '3b169ad26cb13c6925cd5cf658033bcdad8b5ffce69516c65643bbc682172e3e'
 
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
