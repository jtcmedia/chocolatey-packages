$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.29.32.msi'
$checksum   = 'cc2d36329202c1afe8a5a4c28d7a88147976f23cf0e1e4141eaaf036f1f5cc7f'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.29.32.msi'
$checksum64 = '83e4aeec9a312a0360d582312308c83f039e4ee0685d545885b63c5245ea6f07'
 
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
