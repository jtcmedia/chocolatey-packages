$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.164.msi'
$checksum   = 'eaf9b954296b7a3959bf2f54e9a0108fcfe36d10652e4526e198633adb0aa546'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.164.msi'
$checksum64 = '059e2049144e9b0caa7e322783d592d4bcfab534e7d7ac715ca6853c7beae0ec'
 
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
