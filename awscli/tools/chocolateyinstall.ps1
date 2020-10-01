$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.150.msi'
$checksum   = 'c377c2709b4f40dedc6fe0c0c413bbb85dde70500bfceaade454e7fb1f0bf19c'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.150.msi'
$checksum64 = 'd985f631111bf8f937aa9efa21330bbcf5d158536b2ef4a4f77ed11b2aa268f8'
 
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
