$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.30.0.msi'
$checksum   = '3d50b390bdae6ece4ca50e38ff4ef929f386409c148c77ca3dceea4ce3658e9d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.30.0.msi'
$checksum64 = '97f8a710d38b7aeead0ea56cfd0883b56e2c4f2ceccfbcf563d5266abe1c0a0a'
 
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
