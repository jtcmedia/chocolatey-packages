$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.129.msi'
$checksum   = '7f947c1607c68f0cfb09db5cf41da6c7d7bf892e3ed701a55fd483c6229b5b4f'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.129.msi'
$checksum64 = '006dd8d5690361ab9886fdb81705b08c7b9abc179bdc6b4b620d995d7248ea93'
 
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
