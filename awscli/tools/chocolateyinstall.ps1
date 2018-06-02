$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.15.31.msi'
$checksum   = '6723477f03b493f1491e92a8f6b28fd6178e9e1691d75f2a3d74d0a74d30804a'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.15.31.msi'
$checksum64 = 'aa69c1fab609721b77134deb8cfc07f6b3c7ebaa122ceead655fb81bc69f60ef'
 
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
