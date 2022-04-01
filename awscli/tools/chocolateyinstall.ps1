$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.22.86.msi'
$checksum   = '4d021ff5d1fcbf9f6ca3e9667acaac5d68ab34de7e525980772d0f19558385a5'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.22.86.msi'
$checksum64 = 'ea6ba434ad16fd7101fc9abfc73df9fb0f2dcace57b40081dfcc29a475e7ce6f'
 
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
