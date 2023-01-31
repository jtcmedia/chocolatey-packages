$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.60.msi'
$checksum   = 'bbcfbd2973fcc92ff08608258f3d4fa926edda8bc540a3b5636897c5dd1a4d57'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.60.msi'
$checksum64 = '46ced3ca43c31a19ce8487ac3fbf878d8f26438aca4dba737344bfcf83ef85a5'
 
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
