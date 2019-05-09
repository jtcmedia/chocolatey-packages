$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.155.msi'
$checksum   = '1974b5203902420c1e53e85dc7404dafcbddb2793ebbc50bbb13efe8cc0d6d59'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.155.msi'
$checksum64 = '0a4075d00a43b4335e7fc24b4ff550d9b8a2ded4a148aa9b7962a58bb2d95c1d'
 
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
