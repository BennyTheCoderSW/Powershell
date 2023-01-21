# create form
$form = New-Object Windows.Forms.Form

# set title
$form.Text = "Test GUI Powershell"

# create label
$objLabel = New-Object Windows.Forms.Label
$objLabel.Location = New-Object Drawing.Point 50,30
$objLabel.Size = New-Object Drawing.Point 250,30
$objLabel.text = "Enter Name and click the button"

# textbox
$textfield = New-Object Windows.Forms.TextBox
$textfield.Location = New-Object Drawing.Point 50,60
$textfield.Size = New-Object Drawing.Point 210,15

# button
$button = New-Object Windows.Forms.Button
$button.text = "Name"
$button.Location = New-Object Drawing.Point 100,100

#input handler for button
$button.add_click({
$objLabel.Text = "Hello " + $textfield.Text
})

#add controls to form
$form.controls.Add($objLabel)
$form.controls.Add($button)
$form.controls.Add($textfield)

#show form
$form.ShowDialog()