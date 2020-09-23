$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.144.msi'
$checksum   = 'bed260d3bd59293f09ced614e8745aa5b436cb9d6c745b6a30a43ac9ce1cc747'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.144.msi'
$checksum64 = 'ba5767cd03bb465fe3e561e510713f4026aa7a9c4fe3d6fddda85667db58f588'
 
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
