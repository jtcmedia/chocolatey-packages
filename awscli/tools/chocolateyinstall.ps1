$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.305.msi'
$checksum   = '0335e0ef9d94fb19afa078b8bc4e433abbbcbe0943ae328750c32bc9a48fc36b'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.305.msi'
$checksum64 = '270c1936305e57dbc0ad7a418be0e114b99ddda2122a4207b0cca618fe099088'
 
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
