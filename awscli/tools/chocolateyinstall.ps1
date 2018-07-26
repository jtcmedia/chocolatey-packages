$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.15.65.msi'
$checksum   = '707e7b53c2af6effb8e484890424bdcc596ce3921b368b468d419fb4a1cb1a8b'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.15.65.msi'
$checksum64 = '92d815bcc91a103f1ef677fbb04bca2bf810ca278fdcb1e958a6a2a6cea26419'
 
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
