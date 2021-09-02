$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.20.34.msi'
$checksum   = 'ca367c4be3e5c89a2da8fb2ebe9056be4e4d3fc1c89b32df1e7557208cd7602b'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.20.34.msi'
$checksum64 = '356144e85c6ab3d82f20b9cfdd60a75d49eb7c6d1daf1c9718d9d9762f1ede47'
 
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
