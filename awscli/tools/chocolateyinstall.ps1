$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.286.msi'
$checksum   = '2ea3533000748b7f0c7e4f643c0d4dc5fceb18ee6ac433f5db87729baeb7786b'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.286.msi'
$checksum64 = 'df97d4d064819778597d87dbdbc25abb1a13d51442b19bd83dc523614ea4ed15'
 
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
