$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.32.15.msi'
$checksum   = '921afc13a81224bab02385542116d6d6e9475345b3fff2a1c941bb8edfc2a0c8'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.32.15.msi'
$checksum64 = '6a2e8a590efccf6a315f8665ae598b6b26c7c5abe90bc1b492003cd36c8ba7ac'
 
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
