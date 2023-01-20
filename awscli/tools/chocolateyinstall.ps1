$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.53.msi'
$checksum   = '6c851b195f686f84a4aba4df4fd3a661ba2ee91ae8e77f60bba3ffb6e2e94898'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.53.msi'
$checksum64 = '11835c016e3cf19fb18a82f15857f4e1704e880ec78727f438fdaac2454aadcf'
 
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
