$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.138.msi'
$checksum   = '6de5b96d44eb142064900adaea814c59a89fc532319d87fd8f252c39fe7d5bf0'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.138.msi'
$checksum64 = '874e8965193b1474b2b3d92ae5eb5244b85cb36a3e27e6bd05c56e39a1aae0e7'
 
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
