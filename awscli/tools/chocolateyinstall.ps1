$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.193.msi'
$checksum   = 'cccdd86a79e1ea099b8f829a6388c20cb852f24cb086fcc3aa89d2674e5d61ba'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.193.msi'
$checksum64 = '7a2a4382c1182c7f1cf1cf9c6b1fdc1185e500de9aeb1ee2436bafb849c86b9c'
 
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
