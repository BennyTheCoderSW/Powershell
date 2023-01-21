# Import the System.Windows.Forms namespace
Add-Type -AssemblyName System.Windows.Forms

# Create a new Form object
$form = New-Object System.Windows.Forms.Form

# Set the form's properties
$form.Text = "Form with Labels, TextBoxes, and Button"
$form.Size = New-Object System.Drawing.Size(400,300)

# Create the first label
$label1 = New-Object System.Windows.Forms.Label
$label1.Text = "Age: "
$label1.Location = New-Object System.Drawing.Size(10,10)
$label1.AutoSize = $True

# Create the second label
$label2 = New-Object System.Windows.Forms.Label
$label2.Text = "Salary: "
$label2.Location = New-Object System.Drawing.Size(10,40)
$label2.AutoSize = $True

# Create the third label
$label3 = New-Object System.Windows.Forms.Label
$label3.Text = "Salary: "
$label3.Location = New-Object System.Drawing.Size(10,70)
$label3.AutoSize = $True

# Create the first textbox
$textbox1 = New-Object System.Windows.Forms.TextBox
$textbox1.Location = New-Object System.Drawing.Size(100,10)
$textbox1.Size = New-Object System.Drawing.Size(200,20)

# Create the second textbox
$textbox2 = New-Object System.Windows.Forms.TextBox
$textbox2.Location = New-Object System.Drawing.Size(100,40)
$textbox2.Size = New-Object System.Drawing.Size(200,20)

# Create the button
$button = New-Object System.Windows.Forms.Button
$button.Text = "Submit"
$button.Location = New-Object System.Drawing.Size(150,70)
$button.Size = New-Object System.Drawing.Size(100,30)

# Add an event listener to the button
$button.Add_Click({
    # Code to execute when button is clicked
    $number = [float]$textbox1.Text
    $number2 = [float]$textbox2.Text
    $decimal = 0.10
    $result = $number2 * $decimal
    $result2 = 65 - $number
    $result3 = $result2 * $result
    Write-Host = "$"$result" 10% of this years salary" "You have" $result2 "Years until retirement" "at 10% you will have saved" $result3 "for retirement"
})

# Add the labels, textboxes, and button to the form
$form.Controls.Add($label1)
$form.Controls.Add($label2)
$form.Controls.Add($textbox1)
$form.Controls.Add($textbox2)
$form.Controls.Add($button)

# Show the form
$form.ShowDialog()
