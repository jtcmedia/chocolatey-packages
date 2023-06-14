$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.153.msi'
$checksum   = '99a594ededbbab34c1d31ffa63143bd485fc7a18e52604faf85f69c3fd5ea6f1'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.153.msi'
$checksum64 = '2e83b140fbf188e0655df2bb5a94c5ec4b54c2398ee69035ea5f9e699aae736b'
 
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
