$ErrorActionPreference = 'Stop';

$url64      = 'https://dl.paragon-software.com/demo/Paragon-1081-FRU_WinInstallDemo_x64_17.9.1_000.exe'
$checksum64 = '8ed1ed6919c7e2105989469669af8daf6d37ebcb6d6c6b3cbfa44107d6c390ef'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'Paragon Partition Manager*'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs    = '/q /c:"setup.exe /quiet"'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
