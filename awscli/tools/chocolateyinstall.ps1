$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.135.msi'
$checksum   = 'fd3a7523457153fb71d0fc1af08abe3684ab87ee3da6f385955e5bab9c87489f'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.135.msi'
$checksum64 = '4dc17390b5fac4f9ad60415a6ed45e1a01b6197db5806b7206eeec6855d3d74a'
 
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
