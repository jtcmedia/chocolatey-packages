$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.20.58.msi'
$checksum   = 'f02d4ea4ba81d4cc2ae252c2ed8fdefded268247b6e783fc7130604c72e706d6'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.20.58.msi'
$checksum64 = '73d8f398453703521497eb232c1c85a2151c4dddd818fd3180f9788dbf1e6e3c'
 
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
