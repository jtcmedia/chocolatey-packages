$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.170.msi'
$checksum   = '9302b36c751e7d697988399417972717f073c8fe5a2d6823aa3da28f40acf4fa'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.170.msi'
$checksum64 = '615361a8ec407310e4b9fe884993f60849dc50f2aac7ab6db7f8ec8ef2636b4a'
 
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
