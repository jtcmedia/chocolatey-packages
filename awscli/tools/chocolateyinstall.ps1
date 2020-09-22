$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.143.msi'
$checksum   = 'dd82ce56639b257648b333f801625444b3f8e612d49f41a1f8fd6d1f525a4744'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.143.msi'
$checksum64 = '44124714d2ec00e3ea7e15d30ee7c3fdc105cd122a87c0c86483dc654b6a7cf6'
 
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
