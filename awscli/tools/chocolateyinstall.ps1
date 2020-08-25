$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.125.msi'
$checksum   = '0b29e77d5fa57b0c690d4b0adbfbcbeba9841c2f4b139a6634569eff84171b0f'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.125.msi'
$checksum64 = '53bfccbe5a0973f9d9f2068f98603ed8fcca9cf698b635cd2f99d4c4a7edb438'
 
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
