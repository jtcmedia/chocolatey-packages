$ErrorActionPreference = 'Stop'

$url32      = 'https://github.com/opentrack/opentrack/releases/download/opentrack-2021.1.2/opentrack-2021.1.2-win32-setup.exe'
$checksum32 = '8e70bfb3d4ad2d101023d4dbe5a997285616151097cddd894f793478bbe0e02a'

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
