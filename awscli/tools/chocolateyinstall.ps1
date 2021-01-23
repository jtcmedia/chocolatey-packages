$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.219.msi'
$checksum   = '80b4e55b07f92bd22cffb80f52bf86748c107777f14b4ec4b97fd98e7c64fbb8'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.219.msi'
$checksum64 = '4a773e56bfec2ca52072d8cbc4e5b6e80895818e0d0329467e459aaee5964993'
 
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
