$ErrorActionPreference = 'Stop';

$url32 = 'https://dl4jz3rbrsfum.cloudfront.net/software/ppp_windows_2_2_2.exe'
$checksum32 = 'e0fe308c2caacfb08012cac11decd20a5e22aab6e506aa85ef04849e24c22bda'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url            = $url32
  softwareName   = 'CyberPower PowerPanel Personal*'
  checksum       = $checksum32
  checksumType   = 'sha256'
  silentArgs     = '-q'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
