$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.31.msi'
$checksum   = '7ffc7c142de33ef04953864db7219b6edcb08f08eba4eda625eaa6966217f3df'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.31.msi'
$checksum64 = '8e5b8c1d6d6df452f9b50e0f97bb9fd46be4a5e3bb88333d2eb65db610f4e5f6'
 
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
