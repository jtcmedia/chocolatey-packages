$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.222.msi'
$checksum   = 'e5ed3a41eeac80e28fa92528c98db4eb917d5f982b38a3745a2484ec8ad26cef'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.222.msi'
$checksum64 = '7f55a62c786948aa3bb935ee1560d3285ac68bafc8b9ba8795c73d636f10292c'
 
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
