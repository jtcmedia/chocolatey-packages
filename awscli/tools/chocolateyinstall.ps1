$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.114.msi'
$checksum   = '166e98173a67dba56ffff0cea7a6a8288333f61562cfb7cc025f7a1d7d8d93bd'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.114.msi'
$checksum64 = 'bc2304135cf2a26c0443cef895981f5ef1d52ee75b77960d9aaeb4702b789e03'
 
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
