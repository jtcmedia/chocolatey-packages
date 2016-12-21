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

$installerFile = if ((Get-ProcessorBits 64) -and $env:chocolateyForceX86 -ne 'true') {
         Write-Host "Installing x64 bit version"; Get-Item "$toolsDir\*_x64.exe"
} else { Write-Host "Installing x32 bit version"; Get-Item "$toolsDir\*_x32.exe" }

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  file          = $installerFile
  softwareName  = 'Heroku CLI*'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs

# Don't need installers anymore
Remove-Item ($toolsDir + '\*.' + $packageArgs.fileType)
