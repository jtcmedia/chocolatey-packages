$ErrorActionPreference = 'Stop'

$url32      = 'https://github.com/opentrack/opentrack/releases/download/opentrack-2023.2.0/opentrack-2023.2.0-win32-setup.exe'
$checksum32 = '5240ff43c84a5c5b25fc8b192c6ca21bd3955a7cce8383757ba362806ab75c32'

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
