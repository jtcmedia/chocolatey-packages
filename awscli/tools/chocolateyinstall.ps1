$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.194.msi'
$checksum   = 'aa2cbb642aa46459e94a176b2818cffe8df8fcfa330eb4b4cd4e436fd2d5414b'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.194.msi'
$checksum64 = '312868b8fa3f42d8bfdd662698db0d92bd646601a135c1030a660720c56de9f3'
 
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
