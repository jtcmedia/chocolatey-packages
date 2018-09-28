$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.23.msi'
$checksum   = '338b67739960f233e7cf502243fd183dca23f8d4ec70bfbf9bbc1bbdef2a26fa'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.23.msi'
$checksum64 = '467e5e9509426fc6aaabb833443cbaf2bf03363e9e02e91dd9d65f6e16701b28'
 
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
