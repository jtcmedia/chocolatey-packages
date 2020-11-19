$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.181.msi'
$checksum   = 'ad3584500d1ed05931ae8b85c35ffd78b8b2b8729c3247d35a3a5d598f5ade07'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.181.msi'
$checksum64 = 'fa51ba58df19f054968538a8a4162ce69121625ea35605b88c9e92054cbcd45f'
 
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
