$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.88.msi'
$checksum   = '4f5f3e515b7356c310009e05c6fe7a87f1db68658f806f88f7600602c5c74cb8'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.88.msi'
$checksum64 = '53a909f45ff3e7a19844b484cd4b9f951bc1287e6b66d6570cdd16cd5c2f6204'
 
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
