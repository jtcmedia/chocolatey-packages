$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.241.msi'
$checksum   = '8c7df4e27008f8d465823bd96f8241c0db7b7455f0e10dc51359affeec4a0d5f'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.241.msi'
$checksum64 = 'f9a6f797aa9a1175b45ef196aeaaef470225a348ceb5e63c38a7439aaf34b4c2'
 
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
