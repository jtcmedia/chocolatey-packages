$ErrorActionPreference = 'Stop'

$url32      = 'https://github.com/opentrack/opentrack/releases/download/opentrack-2.3.12/opentrack-2.3.12-win32-setup.exe'
$checksum32 = '0b92b3ae911d88c7be056f296fe937df73a9b36d306f8c498948dd29c5ffd447'

$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  fileType        = 'exe'
  Url             = $url32
  silentArgs      = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes  = @(0)
  softwareName    = 'opentrack*'
  Checksum        = $checksum32
  ChecksumType    = 'sha256'
}

Install-ChocolateyPackage @packageArgs
