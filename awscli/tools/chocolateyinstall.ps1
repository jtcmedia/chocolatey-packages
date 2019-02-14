$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.104.msi'
$checksum   = 'ca756f056b2ae36c730f98b30f6b4e0850181cd7f0695a8773144b1c5038a986'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.104.msi'
$checksum64 = '9468fd9c0efd1d8c4b0e63299a48b446a352e68d5d0a51bbd4ab71b617003561'
 
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
