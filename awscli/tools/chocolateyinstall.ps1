$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.26.0.msi'
$checksum   = '7f68da866631d29c47c344a209559faf409ffdee709b8da0f57ed7255ce7d7e6'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.26.0.msi'
$checksum64 = 'dd300931a038bb8842dffda7a9b008a2aaef7ecfa550ada3cf505258c77c4172'
 
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
