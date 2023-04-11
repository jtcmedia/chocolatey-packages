$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.110.msi'
$checksum   = 'f0b34ffb7689622c9c03a1c1c4ebfc234cec51aa8fcfc2c3ca1ef9fd2087e668'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.110.msi'
$checksum64 = '12716548e3b39d59e31328d677c460ab2cd71b3521f9e27ca3569c923f46e477'
 
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
