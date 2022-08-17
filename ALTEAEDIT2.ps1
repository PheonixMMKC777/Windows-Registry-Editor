$path = Get-location
$CurrentTileValue = 0
Function Main {

$MainWindow = New-Object System.Windows.Forms.Form
$MainWindow.Size = "1000,800"

$table = New-Object System.Windows.Forms.TableLayoutPanel
$table.backcolor = "lightgreen"
$table.CellBorderStyle = "inset"
$table.Size = "546,546"  
$table.RowCount = 16
$table.ColumnCount = 16
$table.Add_Click({gridClick})












#region IDS Labels
    $IDBox00 = New-object System.windows.forms.Picturebox
    $IDBox00.Image = $Tile00
    $IdBox00.size = "40,40"
    $IDBOX00.Location = "800,40"
    $IDBox00.ADD_CLICK({$script:CurrentTileValue = 0})

    $IDBox01 = New-object System.windows.forms.Picturebox
    $IDBox01.Image = $Tile01
    $IdBox01.size = "40,40"
    $IDBOX01.Location = "840,40"
    $IDBox01.ADD_CLICK({$script:CurrentTileValue = 1})

    $IDBox02 = New-object System.windows.forms.Picturebox
    $IDBox02.Image = $Tile02
    $IdBox02.size = "40,40"
    $IDBOX02.Location = "880,40"
    $IDBox02.ADD_CLICK({$script:CurrentTileValue = 2})

    $IDBox03 = New-object System.windows.forms.Picturebox
    $IDBox03.Image = $Tile03
    $IdBox03.size = "40,40"
    $IDBOX03.Location = "921,40"
    $IDBox03.ADD_CLICK({$script:CurrentTileValue = 3})

    $IDBox04 = New-object System.windows.forms.Picturebox
    $IDBox04.Image = $Tile04
    $IdBox04.size = "40,40"
    $IDBOX04.Location = "800,80"
    $IDBox04.ADD_CLICK({$script:CurrentTileValue = 4})

    $IDBox05 = New-object System.windows.forms.Picturebox
    $IDBox05.Image = $Tile05
    $IdBox05.size = "40,40"
    $IDBOX05.Location = "840,80"
    $IDBox05.ADD_CLICK({$script:CurrentTileValue = 5})

    $IDBox06 = New-object System.windows.forms.Picturebox
    $IDBox06.Image = $Tile06
    $IdBox06.size = "40,40"
    $IDBOX06.Location = "880,80"
    $IDBox06.ADD_CLICK({$script:CurrentTileValue = 6})

    $IDBox07 = New-object System.windows.forms.Picturebox
    $IDBox07.Image = $Tile07
    $IdBox07.size = "40,40"
    $IDBOX07.Location = "920,80"
    $IDBox07.ADD_CLICK({$script:CurrentTileValue = 7})

    $IDBox08 = New-object System.windows.forms.Picturebox
    $IDBox08.Image = $Tile08
    $IdBox08.size = "40,40"
    $IDBOX08.Location = "800,120"
    $IDBox08.ADD_CLICK({$script:CurrentTileValue = 8})

    $IDBox09 = New-object System.windows.forms.Picturebox
    $IDBox09.Image = $Tile09
    $IdBox09.size = "40,40"
    $IDBOX09.Location = "840,120"
    $IDBox09.ADD_CLICK({$script:CurrentTileValue = 9})

    $IDBox0A = New-object System.windows.forms.Picturebox
    $IDBox0A.Image = $Tile0A
    $IdBox0A.size = "40,40"
    $IDBOX0A.Location = "880,120"
    $IDBox0A.ADD_CLICK({$script:CurrentTileValue = 10})

    $IDBox0B = New-object System.windows.forms.Picturebox
    $IDBox0B.Image = $Tile0B
    $IdBox0B.size = "40,40"
    $IDBOX0B.Location = "920,120"
    $IDBox0B.ADD_CLICK({$script:CurrentTileValue = 11})

    $IDBox0C = New-object System.windows.forms.Picturebox
    $IDBox0C.Image = $Tile0C
    $IdBox0C.size = "40,40"
    $IDBOX0C.Location = "800,160"
    $IDBox0C.ADD_CLICK({$script:CurrentTileValue = 12})

    $IDBox0D = New-object System.windows.forms.Picturebox
    $IDBox0D.Image = $Tile0D
    $IdBox0D.size = "40,40"
    $IDBOX0D.Location = "840,160"
    $IDBox0D.ADD_CLICK({$script:CurrentTileValue = 13})

    $IDBox0E = New-object System.windows.forms.Picturebox
    $IDBox0E.Image = $Tile0E
    $IdBox0E.size = "40,40"
    $IDBOX0E.Location = "880,160"
    $IDBox0E.ADD_CLICK({$script:CurrentTileValue = 14})

    $IDBox0F = New-object System.windows.forms.Picturebox
    $IDBox0F.Image = $Tile0F
    $IdBox0F.size = "40,40"
    $IDBOX0F.Location = "920,160"
    $IDBox0F.ADD_CLICK({$script:CurrentTileValue = 15})

    $IDBox11 = New-object System.windows.forms.Picturebox
    $IDBox11.Image = $Tile11
    $IdBox11.size = "40,40"
    $IDBOX11.Location = "800,200"
    $IDBox11.ADD_CLICK({$script:CurrentTileValue = 17})

    $IDBox12 = New-object System.windows.forms.Picturebox
    $IDBox12.Image = $Tile12
    $IdBox12.size = "40,40"
    $IDBOX12.Location = "840,200"
    $IDBox12.ADD_CLICK({$script:CurrentTileValue = 18})

    $IDBox13 = New-object System.windows.forms.Picturebox
    $IDBox13.Image = $Tile13
    $IdBox13.size = "40,40"
    $IDBOX13.Location = "880,200"
    $IDBox13.ADD_CLICK({$script:CurrentTileValue = 19})

    $IDBox14 = New-object System.windows.forms.Picturebox
    $IDBox14.Image = $Tile14
    $IdBox14.size = "40,40"
    $IDBOX14.Location = "920,200"
    $IDBox14.ADD_CLICK({$script:CurrentTileValue = 20})


    $IDBox80 = New-object System.windows.forms.Picturebox
    $IDBox80.Image = $Tile80
    $IDBox80.size = "40,40"
    $IDBox80.Location = "800,540"
    $IDBox80.ADD_CLICK({$script:CurrentTileValue = 128})

    $IDBox82 = New-object System.windows.forms.Picturebox
    $IDBox82.Image = $Tile82
    $IDBox82.size = "40,40"
    $IDBox82.Location = "840,540"
    $IDBox82.ADD_CLICK({$script:CurrentTileValue = 130})

    $IDBox87 = New-object System.windows.forms.Picturebox
    $IDBox87.Image = $Tile87
    $IDBox87.size = "40,40"
    $IDBox87.Location = "880,540"
    $IDBox87.ADD_CLICK({$script:CurrentTileValue = 135})

    $IDBox8A = New-object System.windows.forms.Picturebox
    $IDBox8A.Image = $Tile8A
    $IDBox8A.size = "40,40"
    $IDBox8A.Location = "920,540"
    $IDBox8A.ADD_CLICK({$script:CurrentTileValue = 138})


    $IDBox94 = New-object System.windows.forms.Picturebox
    $IDBox94.Image = $Tile94
    $IDBox94.size = "40,40"
    $IDBox94.Location = "800,580"
    $IDBox94.ADD_CLICK({$script:CurrentTileValue = 148})





    $ITSNOTRLE = New-Object System.Windows.Forms.label
    $ITSNOTRLE.Text = "Non-RLE Tiles"
    $ITSNOTRLE.Size = "100,20"
    $ITSNOTRLE.location = "800,20" 

    $ITISRLE = New-Object System.Windows.Forms.label
    $ITISRLE.Text = "RLE Tiles"
    $ITISRLE.Size = "100,20"
    $ITISRLE.location = "800,520"
#endregion

####################################################

$i =0
While ($i -lt 16)  {
$table.columnStyles.Add((new-object System.Windows.Forms.ColumnStyle([System.Windows.Forms.SizeType]::absolute,32)))
$table.RowStyles.Add((new-object System.Windows.Forms.RowStyle([System.Windows.Forms.SizeType]::absolute,32)))
$i++
}





Write-host $table.GetColumnWidths() -ForegroundColor Green
Write-host $table.GetRowHeights() -ForegroundColor Green

#region elements
    $MainWindow.Controls.Add($IDBOX00)
    $MainWindow.Controls.Add($IDBOX01)
    $MainWindow.Controls.Add($IDBOX02)
    $MainWindow.Controls.Add($IDBOX03)
    $MainWindow.Controls.Add($IDBOX04)
    $MainWindow.Controls.Add($IDBOX05)
    $MainWindow.Controls.Add($IDBOX06)
    $MainWindow.Controls.Add($IDBOX07)
    $MainWindow.Controls.Add($IDBOX08)
    $MainWindow.Controls.Add($IDBOX09)
    $MainWindow.Controls.Add($IDBOX0A)
    $MainWindow.Controls.Add($IDBOX0B)
    $MainWindow.Controls.Add($IDBOX0C)
    $MainWindow.Controls.Add($IDBOX0D)
    $MainWindow.Controls.Add($IDBOX0E)
    $MainWindow.Controls.Add($IDBOX0F)
    $MainWindow.Controls.Add($IDBOX11)
    $MainWindow.Controls.Add($IDBOX12)
    $MainWindow.Controls.Add($IDBOX13)
    $MainWindow.Controls.Add($IDBOX14)
    $MainWindow.Controls.Add($ITISRLE)
    $MainWindow.Controls.Add($ITSNOTRLE)
    $MainWindow.Controls.Add($IDBox80)
    $MainWindow.Controls.Add($IDBox82)
    $MainWindow.Controls.Add($IDBox87)
    $MainWindow.Controls.Add($IDBox8A)
    $MainWindow.Controls.Add($IDBox94)

#endregion

$MainWindow.Controls.Add($table)
$MainWindow.ShowDialog()
}

function LoadTiles {

    

    $Tile00 = (get-item "$Path/Tiles/00.png")
    $Tile00 = [System.Drawing.Image]::Fromfile($Tile00)

    $Tile01 = (get-item "$Path/Tiles/01.png")
    $Tile01 = [System.Drawing.Image]::Fromfile($Tile01)

    $Tile02 = (get-item "$Path/Tiles/02.png")
    $Tile02 = [System.Drawing.Image]::Fromfile($Tile02)

    $Tile03 = (get-item "$Path/Tiles/03.png")
    $Tile03 = [System.Drawing.Image]::Fromfile($Tile03)

    $Tile04 = (get-item "$Path/Tiles/04.png")
    $Tile04 = [System.Drawing.Image]::Fromfile($Tile04)

    $Tile05 = (get-item "$Path/Tiles/05.png")
    $Tile05 = [System.Drawing.Image]::Fromfile($Tile05)

    $Tile06 = (get-item "$Path/Tiles/06.png")
    $Tile06 = [System.Drawing.Image]::Fromfile($Tile06)

    $Tile07 = (get-item "$Path/Tiles/07.png")
    $Tile07 = [System.Drawing.Image]::Fromfile($Tile07)

    $Tile08 = (get-item "$Path/Tiles/08.png")
    $Tile08 = [System.Drawing.Image]::Fromfile($Tile08)

    $Tile09 = (get-item "$Path/Tiles/09.png")
    $Tile09 = [System.Drawing.Image]::Fromfile($Tile09)

    $Tile0A = (get-item "$Path/Tiles/0A.png")
    $Tile0A = [System.Drawing.Image]::Fromfile($Tile0A)

    $Tile0B = (get-item "$Path/Tiles/0B.png")
    $Tile0B = [System.Drawing.Image]::Fromfile($Tile0B)

    $Tile0C = (get-item "$Path/Tiles/0C.png")
    $Tile0C = [System.Drawing.Image]::Fromfile($Tile0C)

    $Tile0D = (get-item "$Path/Tiles/0D.png")
    $Tile0D = [System.Drawing.Image]::Fromfile($Tile0D)

    $Tile0E = (get-item "$Path/Tiles/0E.png")
    $Tile0E = [System.Drawing.Image]::Fromfile($Tile0E)

    $Tile0F = (get-item "$Path/Tiles/0F.png")
    $Tile0F = [System.Drawing.Image]::Fromfile($Tile0F)

    $Tile10 = (get-item "$Path/Tiles/10.png")
    $Tile10 = [System.Drawing.Image]::Fromfile($Tile10)

    $Tile11 = (get-item "$Path/Tiles/11.png")
    $Tile11 = [System.Drawing.Image]::Fromfile($Tile11)

    $Tile12 = (get-item "$Path/Tiles/12.png")
    $Tile12 = [System.Drawing.Image]::Fromfile($Tile12)

    $Tile13 = (get-item "$Path/Tiles/13.png")
    $Tile13 = [System.Drawing.Image]::Fromfile($Tile13)

    $Tile14 = (get-item "$Path/Tiles/14.png")
    $Tile14 = [System.Drawing.Image]::Fromfile($Tile14)

    $Tile15 = (get-item "$Path/Tiles/15.png")
    $Tile15 = [System.Drawing.Image]::Fromfile($Tile15)

    $Tile16 = (get-item "$Path/Tiles/16.png")
    $Tile16 = [System.Drawing.Image]::Fromfile($Tile16)

    $Tile17 = (get-item "$Path/Tiles/17.png")
    $Tile17 = [System.Drawing.Image]::Fromfile($Tile17)

    $Tile18 = (get-item "$Path/Tiles/18.png")
    $Tile18 = [System.Drawing.Image]::Fromfile($Tile18)

    $Tile19 = (get-item "$Path/Tiles/19.png")
    $Tile19 = [System.Drawing.Image]::Fromfile($Tile19)

    $Tile1A = (get-item "$Path/Tiles/1A.png")
    $Tile1A = [System.Drawing.Image]::Fromfile($Tile1A)

    $Tile80 = (get-item "$Path/Tiles/00RLE.png")
    $Tile80 = [System.Drawing.Image]::Fromfile($Tile80)

    $Tile82 = (get-item "$Path/Tiles/02RLE.png")
    $Tile82 = [System.Drawing.Image]::Fromfile($Tile82)

    $Tile87 = (get-item "$Path/Tiles/07RLE.png")
    $Tile87 = [System.Drawing.Image]::Fromfile($Tile87)

    $Tile8A = (get-item "$Path/Tiles/0ARLE.png")
    $Tile8A = [System.Drawing.Image]::Fromfile($Tile8A)

    $Tile94 = (get-item "$Path/Tiles/14RLE.png")
    $Tile94 = [System.Drawing.Image]::Fromfile($Tile94)

    Write-host "Tiles loaded"
    main
}


function gridClick(){
<#
[int]$MouseX = [System.Windows.Forms.Cursor]::Position.X
[int]$MouseY = [System.Windows.Forms.Cursor]::Position.Y
[int]$winX = $mainwindow.Location.X
[int]$winY = $mainwindow.Location.y

Write-host "MX:$mousex, MY:$mouseY, WX: $winX, WY:$Winy" -fore yellow
[int]$Script:XIndex = $winx - $MouseX
[int]$Script:YIndex = $winY - $MouseY
Write-host "INX: $Xindex, INY: $Yindex" -fore yellow

#lowest coord is  8x  31y
#next  coord is  40x  63y
#max coord is   553x 576y

#account for border and title
#[int]$Script:Xindex = $xindex + 2 # Firstline
[int]$Script:Yindex = $Yindex + 25 #taskbar
Write-host "INX: $Xindex, INY: $Yindex" -fore red

#account for 15/16 little borders betweeen cells
[int]$Script:Xindex = $xindex + 32
[int]$Script:Yindex = $Yindex + 32

#convert index to positive
[int]$Script:Xindex = -$xindex 
[int]$Script:Yindex = -$Yindex 
Write-host "INX: $Xindex, INY: $Yindex" -fore cyan





#cells are a little off
$CellX = $Xindex / 32
$CellY = $Yindex / 32
Write-host "Cellx: $CellX, Celly: $CellY" -fore blue
#> 

[int]$MouseX = [System.Windows.Forms.Cursor]::Position.X
[int]$MouseY = [System.Windows.Forms.Cursor]::Position.Y
[int]$winX = $mainwindow.Location.X
[int]$winY = $mainwindow.Location.y

Write-host "MX:$mousex, MY:$mouseY, WX: $winX, WY:$Winy" -fore yellow
$Xindex = $MouseX - $winX
$Yindex = $MouseY - $winY
Write-host "INX:$xindex, INY:$yindex" -fore red
$Xindex = $XIndex - 8
$Yindex = $Yindex - 31
Write-host "INX:$xindex, INY:$yindex" -fore cyan

}









loadtiles