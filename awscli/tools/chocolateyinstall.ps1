$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.97.msi'
$checksum   = '66d6f72ccf715b963816a19326e172fde3c6d348feaa473e6032b9dcff8c11d9'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.97.msi'
$checksum64 = 'f406481a4bd081ae71c2de0465fd0362f9707f2a6e0aef050ee7fd66511ddeaf'
 
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
