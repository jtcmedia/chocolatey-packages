$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.25.94.msi'
$checksum   = '2cdc8676c1f16abff83ebf8831f3aae2f9f93ad49ebc0148efb5d5a35849c98b'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.25.94.msi'
$checksum64 = '8200d1fa04188a0c9a8c7fd1ba349199e412e58fd9fe4f0f106c0e4cdc386629'
 
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
