$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.68.msi'
$checksum   = '72498f6bfaa08eed8fab775bba0404fdd73d0bfd059cfb4571063bcc7ad9b623'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.68.msi'
$checksum64 = '925ac156dd7d9b3584cf7dd1c7a7111e5f66b015d80018c8cd94d8fed5dcc440'
 
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
