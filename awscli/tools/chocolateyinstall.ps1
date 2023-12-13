$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.31.13.msi'
$checksum   = 'db296c653cf5b9c584cb0a054c94ec9702788e3040b3cb6b4e096e3c5e8de5b6'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.31.13.msi'
$checksum64 = '23aa90580fd00e2a361f63b35442851bbd84f338f962cb7e1a9d552c50042e7f'
 
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
