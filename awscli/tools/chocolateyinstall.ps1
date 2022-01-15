$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.22.37.msi'
$checksum   = 'df863eb7880df83a4997eb6bfae2d7b2c7e2a72539f06dff295d279f8dee39df'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.22.37.msi'
$checksum64 = 'f7a52b92da5c4846d3a813412201e2d00a399e632e7f4b5751195b2916aa5188'
 
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
