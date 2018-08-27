$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.1.msi'
$checksum   = '53693bf2d9bac4da7a6f568d0dc8d777161dd1719ac0c373eaa12168cfff8ad7'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.1.msi'
$checksum64 = '626fa949f5ce55b732726a51a1f8c36a5b6ce136c597514d1080d0eafa7941b2'
 
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
