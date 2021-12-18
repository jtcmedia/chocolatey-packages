$ErrorActionPreference = 'Stop';

$url32 = 'https://dl4jz3rbrsfum.cloudfront.net/software/PPP_Windows_v2.3.4.exe'
$checksum32 = '7838b776561275960f6e784bbfbf0da235e0e31191380d9b1150752188fff9a7'

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
