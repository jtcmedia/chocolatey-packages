$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.81.msi'
$checksum   = '195959187ca5e4754b5782fe26e49d7df13c911735d6b7279cd623bb3d0e95bc'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.81.msi'
$checksum64 = 'b187c0936b97e8abadf47ef75f1c59b635a8e3e25f0afe39cb5c281be02b0ada'
 
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
