$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.140.msi'
$checksum   = '03d53de867c9e117345fe0d4aae6c790ac6f2226bdf42bafdabb187d014ed5fc'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.140.msi'
$checksum64 = '1b6086c4b780d4d8020efa688b52c153d30fdb3d0013dcd7bc4cbf659a3f31bc'
 
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
