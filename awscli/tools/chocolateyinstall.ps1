$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.216.msi'
$checksum   = 'a2a9c9f23b6403ec4d7dd0f4d84c21ef04801cfd375db3d349be98cdbee28ce1'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.216.msi'
$checksum64 = '6b7a83a74dd1a24ba44312d2eaa5e7bfe2f7f29425d1e8f6645b81f590317d8e'
 
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
