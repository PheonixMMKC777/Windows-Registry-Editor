﻿# YOOHOO! IF YOU WANNA EDIT THIS CLONE IT FROM GITHUB!

#make windows dummy...

#$mmkc = Get-Item "assets/mmkc.png"
#$img = [System.Drawing.Image]::Fromfile($mmkc)



[System.Windows.Forms.Application]::EnableVisualStyles()

function BuildGUI
{
    Add-Type -assembly System.Windows.Forms

    $main_form = New-Object System.Windows.Forms.Form
    $main_form.Text ='Win10 Registry Editor'
    $main_form.Width = 300
    $main_form.Height = 400
    $main_form.AutoSize = $true

    #icon but base64-ified
    $iconBase64      = 'iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAGISURBVHhe7ZgxSwNBFIQvVgF7/0oKi1RCwMIioJUWwV4sTSM2acVeUmilYGEhCFYWFoK/xF5IF7l3sxYPltu93B3CzAfJtxzsBmaHC7uD0fRiXbTI8Gdqfn/9MAe+H4cYpbFzuMKoYjzZNYd15+tb82Jwak7Fz9uyb2L+GnC/vLQHTTmeXZl9A3J33hOaEGtAU9QAoABgWhQATIsCgGlRADAtCgCmRQHAtPQWQHmqy/nUUZ7mcu8CSvw8+gb0diMUCOf6Ovz82LzY78Tw66gB48lXqw2IselOBVKbEcPPVwN6ewfcHWGQyMkDBhVhp8O6by9n5r39G3Mqfp4a0PWtcPbOe9CEWAOaogYABQDTogBgWhQATIsCgGlRADAtCgCmpb/ToDvf1+Lm+dNgIPdU6O8P1ADdCpPT263wf0UN6OodsNp+MrdFV+uqAaEBs8W5PWjKcn5t9jv1ebDZ7e3oufrf7mpd+gYoAJgWBQDTogBgWhQATIsCgGlRADAtCgCmRTdCMClF8QvGSrIt9zs8ggAAAABJRU5ErkJggg=='
    $iconBytes       = [Convert]::FromBase64String($iconBase64)
    $stream          = New-Object IO.MemoryStream($iconBytes, 0, $iconBytes.Length)
    $stream.Write($iconBytes, 0, $iconBytes.Length)
    $main_form.Icon       = [System.Drawing.Icon]::FromHandle((New-Object System.Drawing.Bitmap -Argument $stream).GetHIcon())
    $main_form.Icon       = [System.Drawing.Icon]::FromHandle((New-Object System.Drawing.Bitmap -Argument $stream).GetHIcon())

    #HLEL Button for Main
    $HLELBUT = New-Object System.Windows.Forms.Button
    $HLELBUT.Location = New-Object System.Drawing.Size(0,150)
    $HLELBUT.Size = New-Object System.Drawing.Size(120,46)
    $HLELBUT.Text = "Hilight Editor"
    $HLELBUT.Add_Click({$HLEL.ShowDialog()})

    #HLEL MENU
    $HLEL = New-Object System.Windows.Forms.Form
    $HLEL.Text ='Hilight Editor'
    $HLEL.Width = 200
    $HLEL.Height = 200
    $HLEL.AutoSize = $true
    

    #HLE Label
    $HLELL = New-Object System.Windows.Forms.Label
    $HLELL.Location = New-Object System.Drawing.Size(50,20)
    $HLELL.Size = New-Object System.Drawing.Size(80,23)
    $HLELL.Text = " Hilight Editor `n     (0-255)"

    $HLELTR = New-Object System.Windows.Forms.Label
    $HLELTR.Location = New-Object System.Drawing.Size(20,53)
    $HLELTR.Size = New-Object System.Drawing.Size(80,15)
    $HLELTR.Text = "  Red:"

    $HLELTG = New-Object System.Windows.Forms.Label
    $HLELTG.Location = New-Object System.Drawing.Size(15,78)
    $HLELTG.Size = New-Object System.Drawing.Size(80,15)
    $HLELTG.Text = "Green:"

    $HLELTB = New-Object System.Windows.Forms.Label
    $HLELTB.Location = New-Object System.Drawing.Size(25,104)
    $HLELTB.Size = New-Object System.Drawing.Size(80,15)
    $HLELTB.Text = "Blue:"

    #HLELTextboxes

    $HLELR = New-Object System.Windows.Forms.TextBox
    $HLELR.Location = New-Object System.Drawing.Point(65,50)
    $HLELR.Size = New-Object System.Drawing.Size(40,20)

    $HLELG = New-Object System.Windows.Forms.TextBox
    $HLELG.Location = New-Object System.Drawing.Point(65,75)
    $HLELG.Size = New-Object System.Drawing.Size(40,20)


    $HLELB = New-Object System.Windows.Forms.TextBox
    $HLELB.Location = New-Object System.Drawing.Point(65,100)
    $HLELB.Size = New-Object System.Drawing.Size(40,20)

    #HLELIMPORT
    
    # Adding an OK button to the text box window
    $HLELI = New-Object System.Windows.Forms.Button
    $HLELI.Location = New-Object System.Drawing.Point(50,125) ### Location of where the button will be
    $HLELI.Size = New-Object System.Drawing.Size(75,23) ### Size of the button
    $HLELI.Text = 'Import' ### Text inside the button
    $HLELI.DialogResult = [System.Windows.Forms.DialogResult]::OK
    $HLELI.Add_Click({HILIGHT})



    #Disable Retard thing
    $DCW = New-Object System.Windows.Forms.Button
    $DCW.Location = New-Object System.Drawing.Size(300,100)
    $DCW.Size = New-Object System.Drawing.Size(120,23)
    $DCW.Text = "Disable Cortana"
    $DCW.Add_Click({CortanaGUI})

  

    #Disable WUFR for Main
    $DWUFR = New-Object System.Windows.Forms.Button
    $DWUFR.Location = New-Object System.Drawing.Size(0,200)
    $DWUFR.Size = New-Object System.Drawing.Size(120,46)
    $DWUFR.Text = "Disable WU Forced Reboot"
    $DWUFR.Add_Click({DWUFR})








        #Credits Button For Main
    $CREDITSB = New-Object System.Windows.Forms.Button
    $CREDITSB.Location = New-Object System.Drawing.Size(300,350)
    $CREDITSB.Size = New-Object System.Drawing.Size(120,23)
    $CREDITSB.Text = "Credits"
    $CREDITSB.Add_Click({$CREDITS.ShowDialog()})

        #Cresdits Window
    $CREDITS = New-Object System.Windows.Forms.Form
    $CREDITS.Text ='Credits'
    $CREDITS.Width = 120
    $CREDITS.Height = 60
    $CREDITS.AutoSize = $true

        #Credits Text
    $CREDITSL = New-Object System.Windows.Forms.Label
    $CREDITSL.Location = New-Object System.Drawing.Size(0,0)
    $CREDITSL.Size = New-Object System.Drawing.Size(220,60)
    $CREDITSL.Text = "`n   Programmed by PheonixMMKC777"

        #Credits Image
    #$CREDITSI = New-Object System.Windows.Forms.PictureBox
    #$CREDITSI.Image = $img
    #$CREDITSI.SizeMode = "center"
    #$CREDITSI.Anchor = "bottom, left" 




    
    
    #Add Various Labels/buttons

    $HLEL.Controls.Add($HLELL)
    $HLEL.Controls.Add($HLELR)
    $HLEL.Controls.Add($HLELG)
    $HLEL.Controls.Add($HLELB)
    $HLEL.Controls.Add($HLELI)
    $HLEL.Controls.Add($HLELTR)
    $HLEL.Controls.Add($HLELTG)
    $HLEL.Controls.Add($HLELTB)
    $main_form.Controls.Add($HLELBUT)
    $main_form.Controls.Add($DWUFR)
    $main_form.Controls.Add($DCW)
    $main_form.Controls.Add($CREDITSB)
    $HLEL.AcceptButton = $HLELI
    $HLEL.Add_Shown({$HLELR.Select()})
    $HLEL.Add_Shown({$HLELG.Select()})
    $HLEL.Add_Shown({$HLELB.Select()})   
    $CREDITS.Controls.Add($CREDITSL)
    $CREDITS.Controls.Add($CREDITSI)    

    #keep this bottom of the list
    $main_form.ShowDialog()
}



function HILIGHT 
{
    $HILIGHTR = $HLELR.Text
    $HILIGHTG = $HLELG.Text
    $HILIGHTB = $HLELB.Text

    Set-Itemproperty -Path 'Registry::HKEY_CURRENT_USER\Control Panel\Colors' -Name 'Hilight' -Value "$HILIGHTR $HILIGHTG $HILIGHTB" 
    write-output "$HLELR.Text,$HLELG.Text  ,$HLELB.Text, $HILIGHTR $HILIGHTG $HILIGHTB"   

    $HLELTC = New-Object System.Windows.Forms.Form
    $HLELTC.Text ='HLEL'
    $HLELTC.Width = 200
    $HLELTC.Height = 200
    $HLELTC.AutoSize = $true

    $HLELTCL = New-Object System.Windows.Forms.Label
    $HLELTCL.Location = New-Object System.Drawing.Size(0,0)
    $HLELTCL.Size = New-Object System.Drawing.Size(180,180)
    $HLELTCL.Text = "Task Finished Succesfully!"
    $HLELTC.Controls.Add($HLELTCL)
    $HLELTC.ShowDialog()

}

function DWUFR
{
    New-Item -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows" -Name "WindowsUpdate"   
    New-Item -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\" -Name "AU"
    New-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoRebootWithLoggedOnUsers" -Value "1" -PropertyType "DWord"
    
    $DWUFRTC = New-Object System.Windows.Forms.Form
    $DWUFRTC.Text ='DWUFR'
    $DWUFRTC.Width = 200
    $DWUFRTC.Height = 200
    $DWUFRTC.AutoSize = $true

    $DWUFRTCL = New-Object System.Windows.Forms.Label
    $DWUFRTCL.Location = New-Object System.Drawing.Size(0,0)
    $DWUFRTCL.Size = New-Object System.Drawing.Size(180,180)
    $DWUFRTCL.Text = "Task Finished Succesfully!"
    $DWUFRTC.Controls.Add($DWUFRTCL)
    $DWUFRTC.ShowDialog()
}


function CortanaGUI
{
    New-Item -Path 'Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\' -Name 'Windows Search'
    New-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'AllowCortana' -Value "00000000" -PropertyType "String"
    
    #Retards dead windows.
    $DCWF = New-Object System.Windows.Forms.Form
    $DCWF.Text ='DCW'
    $DCWF.Width = 200
    $DCWF.Height = 200
    $DCWF.AutoSize = $true

    #say retards dead
    $DCWFC = New-Object System.Windows.Forms.Label
    $DCWFC.Location = New-Object System.Drawing.Size(0,0)
    $DCWFC.Size = New-Object System.Drawing.Size(180,180)
    $DCWFC.Text = "Task Finished Succesfully!"
    $DCWF.Controls.Add($DCWFC)
    $DCWF.ShowDialog()
}


#Execute the function

BuildGUI
