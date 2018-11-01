$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.45.msi'
$checksum   = '8e7a724ebfef4a75c7502ac3d36e7e30e884cc0a965f364ed0efd038a7522742'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.45.msi'
$checksum64 = 'e7adf4d2e3e494ba0732b27b5f476b69db1e0a1be548a1cc2d061720ea546ca5'
 
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
