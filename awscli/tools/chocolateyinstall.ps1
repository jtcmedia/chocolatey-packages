$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.130.msi'
$checksum   = 'f24df163f0468f3f21887270af6740a9c0184c78f3a56e3f9c4fbe0c4d67c600'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.130.msi'
$checksum64 = '13d6e67d2280a15b84dc09e6a83b2da9ca017f94eacd6074076f159c8a61f3b9'
 
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
