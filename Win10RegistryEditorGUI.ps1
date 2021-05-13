# YOOHOO! IF YOU WANNA EDIT THIS CLONE IT FROM GITHUB!

#make windows dummy...

#$mmkc = Get-Item "assets/mmkc.png"
#$img = [System.Drawing.Image]::Fromfile($mmkc)

#$Window.Backcolor = "Blue"

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


   

    #region Main Menu Buttons






    #HLEL Button for Main
    $HLELBUT = New-Object System.Windows.Forms.Button
    $HLELBUT.Location = New-Object System.Drawing.Size(5,150)
    $HLELBUT.Size = New-Object System.Drawing.Size(120,46)
    $HLELBUT.Text = "Hilight Editor"
    $HLELBUT.Add_Click({$HLEL.ShowDialog()})


    #Disable Retard for Main
    $DCW = New-Object System.Windows.Forms.Button
    $DCW.Location = New-Object System.Drawing.Size(300,150)
    $DCW.Size = New-Object System.Drawing.Size(120,23)
    $DCW.Text = "Disable Cortana"
    $DCW.Add_Click({CortanaGUI})

 

    #Disable WUFR for Main
    $DWUFR = New-Object System.Windows.Forms.Button
    $DWUFR.Location = New-Object System.Drawing.Size(5,250)
    $DWUFR.Size = New-Object System.Drawing.Size(120,46)
    $DWUFR.Text = "Disable WU Forced Reboot"
    $DWUFR.Add_Click({DWUFR})


    #CPANC Button for Main
    $CPANCC = New-Object System.Windows.Forms.Button
    $CPANCC.Location = New-Object System.Drawing.Size(155,150)
    $CPANCC.Size = New-Object System.Drawing.Size(120,46)
    $CPANCC.Text = "Custom Control Panel Entries"
    $CPANCC.Add_Click({$CPANC.ShowDialog()})


    #BSOD Button for Main
    $BSODB = New-Object System.Windows.Forms.Button
    $BSODB.Location = New-Object System.Drawing.Size(300,175)
    $BSODB.Size = New-Object System.Drawing.Size(120,23)
    $BSODB.Text = "BSOD Keystroke"
    $BSODB.Add_Click({BSOD})

    #ALERTB Button for Main
    $ALERTB = New-Object System.Windows.Forms.Button
    $ALERTB.Location = New-Object System.Drawing.Size(5,200)
    $ALERTB.Size = New-Object System.Drawing.Size(120,46)
    $ALERTB.Text = "Set Message on Boot Screen"
    $ALERTB.Add_Click({$ALERT.ShowDialog()})


    #DBINGB Button for Main
    $DBINGB = New-Object System.Windows.Forms.Button
    $DBINGB.Location = New-Object System.Drawing.Size(155,200)
    $DBINGB.Size = New-Object System.Drawing.Size(120,46)
    $DBINGB.Text = "Disable Bing in Windows search"
    $DBINGB.Add_Click({Disbing})


    #endregion Main Menu Buttons


    #region Cpanc windows



    #CPANC WINDOW
    $CPANC = New-Object System.Windows.Forms.Form
    $CPANC.Text ='Create Control Panel Entries'
    $CPANC.Width = 350
    $CPANC.Height = 250
    $CPANC.AutoSize = $true
    $CPANC.Icon       = [System.Drawing.Icon]::FromHandle((New-Object System.Drawing.Bitmap -Argument $stream).GetHIcon())

    #CPANCTextboxes

    $CPANCNAME = New-Object System.Windows.Forms.TextBox
    $CPANCNAME.Location = New-Object System.Drawing.Point(90,50)
    $CPANCNAME.Size = New-Object System.Drawing.Size(250,20)

    $CPANCDESC = New-Object System.Windows.Forms.TextBox
    $CPANCDESC.Location = New-Object System.Drawing.Point(90,80)
    $CPANCDESC.Size = New-Object System.Drawing.Size(250,20)

    $CPANCICON = New-Object System.Windows.Forms.TextBox
    $CPANCICON.Location = New-Object System.Drawing.Point(90,110)
    $CPANCICON.Size = New-Object System.Drawing.Size(250,20)

    $CPANCCOMM = New-Object System.Windows.Forms.TextBox
    $CPANCCOMM.Location = New-Object System.Drawing.Point(90,140)
    $CPANCCOMM.Size = New-Object System.Drawing.Size(250,20)

    #CPANC Label
    $CPANCL = New-Object System.Windows.Forms.Label
    $CPANCL.Location = New-Object System.Drawing.Size(90,20)
    $CPANCL.Size = New-Object System.Drawing.Size(250,20)
    $CPANCL.Text = " Enter Values Below, see readme for details."

    $CPANCN = New-Object System.Windows.Forms.Label
    $CPANCN.Location = New-Object System.Drawing.Size(0,50)
    $CPANCN.Size = New-Object System.Drawing.Size(80,20)
    $CPANCN.Text = "Name:"

    $CPANCD = New-Object System.Windows.Forms.Label
    $CPANCD.Location = New-Object System.Drawing.Size(0,80)
    $CPANCD.Size = New-Object System.Drawing.Size(80,20)
    $CPANCD.Text = "Description:"

    $CPANCI = New-Object System.Windows.Forms.Label
    $CPANCI.Location = New-Object System.Drawing.Size(0,110)
    $CPANCI.Size = New-Object System.Drawing.Size(80,20)
    $CPANCI.Text = "Icon Path:"

    $CPANCE = New-Object System.Windows.Forms.Label
    $CPANCE.Location = New-Object System.Drawing.Size(0,140)
    $CPANCE.Size = New-Object System.Drawing.Size(80,20)
    $CPANCE.Text = "Command:"

    #CPANC Button execute
    $CPANCB = New-Object System.Windows.Forms.Button
    $CPANCB.Location = New-Object System.Drawing.Size(120,170)
    $CPANCB.Size = New-Object System.Drawing.Size(120,40)
    $CPANCB.Text = "Create!"
    $CPANCB.Add_Click({CPANC})

    #endregion Cpanc windows    


    #region Credits Windows

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
    $CREDITS.Icon       = [System.Drawing.Icon]::FromHandle((New-Object System.Drawing.Bitmap -Argument $stream).GetHIcon())
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

    #endregion Credits Windows


    #region HLEL Window

    #HLEL MENU
    $HLEL = New-Object System.Windows.Forms.Form
    $HLEL.Text ='Hilight Editor'
    $HLEL.Width = 200
    $HLEL.Height = 200
    $HLEL.Icon       = [System.Drawing.Icon]::FromHandle((New-Object System.Drawing.Bitmap -Argument $stream).GetHIcon())
    $HLEL.AutoSize = $true
   

    #HLE Label
    $HLELL = New-Object System.Windows.Forms.Label
    $HLELL.Location = New-Object System.Drawing.Size(50,20)
    $HLELL.Size = New-Object System.Drawing.Size(80,30)
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

    # Adding an OK button to the text box window
    $HLELI = New-Object System.Windows.Forms.Button
    $HLELI.Location = New-Object System.Drawing.Point(50,125) ### Location of where the button will be
    $HLELI.Size = New-Object System.Drawing.Size(75,23) ### Size of the button
    $HLELI.Text = 'Import' ### Text inside the button
    $HLELI.DialogResult = [System.Windows.Forms.DialogResult]::OK
    $HLELI.Add_Click({HILIGHT})

    #endregion HLEL Window
   

    #region ALERT window





    #ALERT MENU
    $ALERT = New-Object System.Windows.Forms.Form
    $ALERT.Text ='Boot Message'
    $ALERT.Width = 350
    $ALERT.Height = 200
    $ALERT.Icon       = [System.Drawing.Icon]::FromHandle((New-Object System.Drawing.Bitmap -Argument $stream).GetHIcon())
    $ALERT.AutoSize = $true

    #ALERT LABELS
    $ALERTL = New-Object System.Windows.Forms.Label
    $ALERTL.Location = New-Object System.Drawing.Size(5,20)
    $ALERTL.Size = New-Object System.Drawing.Size(100,20)
    $ALERTL.Text = "Message Title:"

    $ALERTM = New-Object System.Windows.Forms.Label
    $ALERTM.Location = New-Object System.Drawing.Size(5,50)
    $ALERTM.Size = New-Object System.Drawing.Size(100,20)
    $ALERTM.Text = "Message Content:"

    #ALERT TEXTBOXES
    $ALERTBT = New-Object System.Windows.Forms.TextBox
    $ALERTBT.Location = New-Object System.Drawing.Point(120,20)
    $ALERTBT.Size = New-Object System.Drawing.Size(200,20)

    $ALERTBC = New-Object System.Windows.Forms.TextBox
    $ALERTBC.Location = New-Object System.Drawing.Point(120,50)
    $ALERTBC.Size = New-Object System.Drawing.Size(200,100)
    $ALERTBC.Multiline = $true
    $ALERTBC.ScrollBars = "Both"

    #ALERT APPLY BUTTON

    $ALERTA = New-Object System.Windows.Forms.Button
    $ALERTA.Location = New-Object System.Drawing.Size(5,100)
    $ALERTA.Size = New-Object System.Drawing.Size(100,43)
    $ALERTA.Text = "Apply"
    $ALERTA.Add_Click({ALERT})


    #endregion ALERT Window
   


    #region button classes

    #Add Various Labels/buttons

    $HLEL.Controls.Add($HLELL)
    $HLEL.Controls.Add($HLELR)
    $HLEL.Controls.Add($HLELG)
    $HLEL.Controls.Add($HLELB)
    $HLEL.Controls.Add($HLELI)
    $HLEL.Controls.Add($HLELTR)
    $HLEL.Controls.Add($HLELTG)
    $HLEL.Controls.Add($HLELTB)

    $CPANC.Controls.Add($CPANCNAME)
    $CPANC.Controls.Add($CPANCDESC)
    $CPANC.Controls.Add($CPANCICON)
    $CPANC.Controls.Add($CPANCCOMM)
    $CPANC.Controls.Add($CPANCL)
    $CPANC.Controls.Add($CPANCN)
    $CPANC.Controls.Add($CPANCD)
    $CPANC.Controls.Add($CPANCI)
    $CPANC.Controls.Add($CPANCE)
    $CPANC.Controls.Add($CPANCB)

    $ALERT.Controls.Add($ALERTL)
    $ALERT.Controls.Add($ALERTM)
    $ALERT.Controls.Add($ALERTBT)
    $ALERT.Controls.Add($ALERTBC)
    $ALERT.Controls.Add($ALERTA)
           
    $main_form.Controls.Add($HLELBUT)
    $main_form.Controls.Add($DWUFR)
    $main_form.Controls.Add($DCW)
    $main_form.Controls.Add($CREDITSB)
    $main_form.Controls.Add($CPANCC)
    $main_form.Controls.Add($BSODB)
    $main_form.Controls.Add($ALERTB)
    $main_form.Controls.Add($DBINGB)        

    $HLEL.AcceptButton = $HLELI
    $HLEL.Add_Shown({$HLELR.Select()})
    $HLEL.Add_Shown({$HLELG.Select()})
    $HLEL.Add_Shown({$HLELB.Select()})  
   
    $CREDITS.Controls.Add($CREDITSL)
    $CREDITS.Controls.Add($CREDITSI)  
   
    #endregion button classes  



    #keep this bottom of the list
    $main_form.ShowDialog()
}

function CPANC
{
    $Guid = New-Guid
    $CPLNAME = $CPANCNAME.Text
    $CPLICON = $CPANCICON.Text
    $CPLDESC = $CPANCDESC.Text
    $CPLCOMM = $CPANCCOMM.Text


    # C:\Users\brenden.a.scarfone\Desktop\coffee.ico
    try{
    Set-Location -Path "Registry::HKEY_CLASSES_ROOT"

    New-Item -Path "Registry::HKEY_CLASSES_ROOT\CLSID\" -Name "{$Guid}"
    New-ItemProperty "Registry::HKEY_CLASSES_ROOT\CLSID\{$Guid}" -Name "(Default)" -Value "$CPLNAME" -PropertyType "String"
    New-ItemProperty "Registry::HKEY_CLASSES_ROOT\CLSID\{$Guid}" -Name "InfoTip" -Value "$CPLDESC" -PropertyType "String"

    New-Item -Path "Registry::HKEY_CLASSES_ROOT\CLSID\{$Guid}" -Name "DefaultIcon"
    New-ItemProperty "Registry::HKEY_CLASSES_ROOT\CLSID\{$Guid}\DefaultIcon" -Name "(Default)" -Value "$CPLICON" -PropertyType "String"
   
    New-Item -Path "Registry::HKEY_CLASSES_ROOT\CLSID\{$Guid}" -Name "Shell"
    New-Item -Path "Registry::HKEY_CLASSES_ROOT\CLSID\{$Guid}\Shell" -Name "Open"
    New-Item -Path "Registry::HKEY_CLASSES_ROOT\CLSID\{$Guid}\shell\Open" -Name "Command"
    New-ItemProperty -Path "Registry::HKEY_CLASSES_ROOT\CLSID\{$Guid}\shell\Open\Command" -Name "(Default)" -Value "$CPLCOMM" -PropertyType "String"
    New-Item -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\" -Name "{$Guid}"
    New-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{$Guid}" -Name "(Default)" -Value "$CPLNAME" -PropertyType "String"
    }
    catch{$_
    throw "SCREWED UP"
    }


    $CPANCDONE = New-Object System.Windows.Forms.Form
    $CPANCDONE.Text ='CPANC'
    $CPANCDONE.Width = 200
    $CPANCDONE.Height = 200
    $CPANCDONE.AutoSize = $true

    $CPANCDONEL = New-Object System.Windows.Forms.Label
    $CPANCDONEL.Location = New-Object System.Drawing.Size(0,0)
    $CPANCDONEL.Size = New-Object System.Drawing.Size(180,180)
    $CPANCDONEL.Text = "Task Finished Succesfully!"
    $CPANCDONE.Controls.Add($CPANCDONEL)
    $CPANCDONE.ShowDialog()
}


function HILIGHT
{
    $HILIGHTR = $HLELR.Text
    $HILIGHTG = $HLELG.Text
    $HILIGHTB = $HLELB.Text

    try {
    Set-Itemproperty -Path 'Registry::HKEY_CURRENT_USER\Control Panel\Colors' -Name 'Hilight' -Value "$HILIGHTR $HILIGHTG $HILIGHTB"
    write-output "$HLELR.Text,$HLELG.Text  ,$HLELB.Text, $HILIGHTR $HILIGHTG $HILIGHTB"  
    }

    catch{$_   
    throw "SCREWED UP"
    }



   
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
    try{
    New-Item -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows" -Name "WindowsUpdate"  
    New-Item -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\" -Name "AU"
    New-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoRebootWithLoggedOnUsers" -Value "1" -PropertyType "DWord"
    Set-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoRebootWithLoggedOnUsers" -Value "1" -PropertyType "DWord"
    }
    catch{$_
    throw "SCREWED UP"
    }
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
    try{

    New-Item -Path 'Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\' -Name 'Windows Search'
    New-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'AllowCortana' -Value "00000000" -PropertyType "String"
    Set-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -Name 'AllowCortana' -Value "00000000" -PropertyType "String"
    }

    catch{$_
    throw "SCREWED UP"   
    }

   
    finally{}

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
    $DCWFC.Text = "Task Completed Succesfully"
    $DCWF.Controls.Add($DCWFC)
    $DCWF.ShowDialog()
   

}


function BSOD
{
    try{
    New-Item -Path "Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\" -Name "services"
    New-Item -Path "Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\" -Name "kbdhid"    
    New-Item -Path "Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\kbdhid\" -Name "Parameters"
    New-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\kbdhid\Parameters" -Name "CrashOnCtrlScroll" -Value "1"
    Set-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\kbdhid\Parameters" -Name "CrashOnCtrlScroll" -Value "1"
    }
    catch{$_
    throw "SCREWED UP"
    }
    #BSOD windows
    $BSOD = New-Object System.Windows.Forms.Form
    $BSOD.Text ='BSOD'
    $BSOD.Width = 300
    $BSOD.Height = 100
    $BSOD.AutoSize = $true

    #BSOD WINDOW YIPPEE
    $BSODC = New-Object System.Windows.Forms.Label
    $BSODC.Location = New-Object System.Drawing.Size(0,0)
    $BSODC.Size = New-Object System.Drawing.Size(300,50)
    $BSODC.Text = "Task Finished Succesfully! `nHold right control and press Scroll Lock Twice"
    $BSOD.Controls.Add($BSODC)
    $BSOD.ShowDialog()
}


function ALERT
{
   
    $LNC = $ALERTBT.Text
    $LNT = $ALERTBC.Text
    try {
    Set-ItemProperty -path "REGISTRY::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\" -Name "legalnoticecaption" -Value "$LNC"
    Set-ItemProperty -path "REGISTRY::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\" -Name "legalnoticetext" -Value "$LNT"
    }
    catch{$_
    throw "SCRWED UP"
    }
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



function Disbing
{
   try{
    New-Item -path -path "REGISTRY::HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\" -Name "Explorer"
    New-ItemProperty -path "REGISTRY::HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer\" -Name "DisableSearchBoxSuggestions" -Value "1"
    Set-ItemProperty -path "REGISTRY::HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer\" -Name "DisableSearchBoxSuggestions" -Value "1"
    }

    catch{$_
    throw "SCREWED UP"
    
    }
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