$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.86.msi'
$checksum   = '4a5bff8409871ef4bcaddfe803f29ca3f720b884e246b9a72183196017bb10db'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.86.msi'
$checksum64 = 'c6cc0f1e98726ab3dfc483b6c9d3c35bd4e78d18be0ff6b85128346adb330ff9'
 
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
