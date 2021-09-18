$ErrorActionPreference = 'Stop';

$url32 = 'https://dl4jz3rbrsfum.cloudfront.net/software/ppp_windows_2_3_0.exe'
$checksum32 = 'c5a699673964f1a241af2a5225a7cc06fcfbf845dd616af75840fa410782ab48'

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
