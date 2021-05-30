$ErrorActionPreference = 'Stop';

$url32      = 'https://dl.paragon-software.com/demo/Paragon-1081-FRU_WinInstallDemo_x86_17.9.1_000.exe'
$checksum32 = '91a32a656fcce6a3ba690561bc198d82bca9246cf1cd19dc1a6fec46f70c508b'
$url64      = 'https://dl.paragon-software.com/demo/Paragon-1081-FRU_WinInstallDemo_x64_17.9.1_000.exe'
$checksum64 = 'ada3012de59fc453475367dde8ebf4775c6a2de84362eb3c964c4b1c18eff257'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url32
  url64bit      = $url64
  softwareName  = 'Paragon Partition Manager*'
  checksum      = $checksum32
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs    = "/quiet"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
