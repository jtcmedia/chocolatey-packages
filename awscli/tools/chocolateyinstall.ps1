$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.15.71.msi'
$checksum   = 'e92f3745b14d5e8daf019ffe7488ef7cee4504dd4a6494d49278c9c25f4f2769'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.15.71.msi'
$checksum64 = 'd80f504162877343c96222c115d96b593ccadfd8dee0f080cf0c816671675b33'
 
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
