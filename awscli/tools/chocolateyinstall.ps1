$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.109.msi'
$checksum   = '723454a6326a4ace2db57c01fbdf5adb7f5f0287902468f9a6ce09f76f1e7055'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.109.msi'
$checksum64 = 'eefbe8d185be6c890d528aaa64523530e84c1f23b0bac337e2e0aee4ea97e9ca'
 
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
