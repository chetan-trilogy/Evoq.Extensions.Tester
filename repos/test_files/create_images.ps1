Add-Type -AssemblyName System.Drawing

# Create blue PNG image
$bmp = New-Object System.Drawing.Bitmap(100,100)
$g = [System.Drawing.Graphics]::FromImage($bmp)
$g.Clear([System.Drawing.Color]::Blue)
$bmp.Save("$PSScriptRoot\test_image.png")
$bmp.Dispose()
$g.Dispose()

# Create red JPEG image
$bmp2 = New-Object System.Drawing.Bitmap(100,100)
$g2 = [System.Drawing.Graphics]::FromImage($bmp2)
$g2.Clear([System.Drawing.Color]::Red)
$bmp2.Save("$PSScriptRoot\test_image.jpg", [System.Drawing.Imaging.ImageFormat]::Jpeg)
$bmp2.Dispose()
$g2.Dispose()

# Create green GIF image
$bmp3 = New-Object System.Drawing.Bitmap(100,100)
$g3 = [System.Drawing.Graphics]::FromImage($bmp3)
$g3.Clear([System.Drawing.Color]::Green)
$bmp3.Save("$PSScriptRoot\test_image.gif", [System.Drawing.Imaging.ImageFormat]::Gif)
$bmp3.Dispose()
$g3.Dispose()

# Create large image (for file size testing) - 2000x2000
$bmp4 = New-Object System.Drawing.Bitmap(2000,2000)
$g4 = [System.Drawing.Graphics]::FromImage($bmp4)
$g4.Clear([System.Drawing.Color]::Yellow)
$bmp4.Save("$PSScriptRoot\large_image.png")
$bmp4.Dispose()
$g4.Dispose()

Write-Host "Test images created successfully"
