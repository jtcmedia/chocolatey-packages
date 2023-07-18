$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.29.4.msi'
$checksum   = 'c6df1a540faa3515d937f4a833d88c9d1fe82ed7af7806308fd837af73dc2004'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.29.4.msi'
$checksum64 = 'd88a1c1141716dbf0f5869c639aa2ae5da0a4352f9650214f5268f5c0607ff70'
 
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
