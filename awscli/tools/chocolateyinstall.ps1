$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.44.msi'
$checksum   = 'c8c6c6773b1ca20479054beeca3c809ce3cbe46c5ad9dd69c1f77b74dd67814d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.44.msi'
$checksum64 = 'f5a872435278a2b706a52cfd0dfb276bf5879eb946ded8b58239967f4367e2bf'
 
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
