$ErrorActionPreference = 'Stop';
$packageName = 'heroku-cli'

#First need to uninstall old toolbelt pkg if installed
$softwareName = 'Heroku Toolbelt*'
$installerType = 'EXE' 
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)
$uninstalled = $false
[array]$key = Get-UninstallRegistryKey -SoftwareName $softwareName

if ($key.Count -eq 1) {
  $key | % { 
    $file = "$($_.UninstallString)"

    Uninstall-ChocolateyPackage -PackageName $packageName `
                                -FileType $installerType `
                                -SilentArgs "$silentArgs" `
                                -ValidExitCodes $validExitCodes `
                                -File "$file"
  }
}
# Remove heroku config file as requested https://blog.heroku.com/the-new-heroku-cli
Remove-Item $env:USERPROFILE\.config\heroku -Recurse -ErrorAction SilentlyContinue -Force

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://cli-assets.heroku.com/branches/stable/heroku-windows-386.exe'
$url64      = 'https://cli-assets.heroku.com/branches/stable/heroku-windows-amd64.exe'
$checksum32 = 'f376344f30243dedf2101bdae556c19d465dd1ec398958ac98211db4cacc437b'
$checksum64 = '9977289c0d4ee42f385ba5545c1536a344623ba049526af186338bf3198588a6'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Heroku CLI*'

  checksum      = $checksum32
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
