$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.36.msi'
$checksum   = 'acb2baed8faf29a221e1f5c6ae59bc6db9ca51280b86b8d74248cedeee97659f'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.36.msi'
$checksum64 = '788c8f336b59679b1b2acaa8506b333bba13f04109a89a028e06129f9e6d2d82'
 
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
