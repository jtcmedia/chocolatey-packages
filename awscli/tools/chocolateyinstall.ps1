$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.301.msi'
$checksum   = '2db0f7116ecd7bde75ffbdba572bec0059cab1eaef48383adbd15e5d66d953f3'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.301.msi'
$checksum64 = '2055207c2f6ccf67ff52ca6d8efc1fb8a9e4bb4c0267fc84e984f7fa6aebddb5'
 
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
