
Imports AForge
Imports AForge.Video
Imports AForge.Video.DirectShow
Imports System.IO
Imports System.IO.Ports
Imports System.Threading
Imports System.Data
Imports VB = Microsoft.VisualBasic








Public Class Form2


    Private Sub wait(ByVal Seconds As Double, Optional ByRef BreakCondition As Boolean = False)
        Dim l_WaitUntil As Date
        l_WaitUntil = Now.AddSeconds(Seconds)
        Do Until Now > l_WaitUntil
            If BreakCondition Then Exit Do
        Loop
    End Sub


    Dim CAMERA As VideoCaptureDevice
    Dim bmp As Bitmap


    Private Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Dim cameras As VideoCaptureDeviceForm = New VideoCaptureDeviceForm
        If cameras.ShowDialog() = Windows.Forms.DialogResult.OK Then
            CAMERA = cameras.VideoDevice
            AddHandler CAMERA.NewFrame, New NewFrameEventHandler(AddressOf Captured)
            CAMERA.Start()

        End If
    End Sub

    Private Sub Captured(sender As Object, eventArgs As NewFrameEventArgs)

        bmp = DirectCast(eventArgs.Frame.Clone(), Bitmap)
        PictureBox1.Image = DirectCast(eventArgs.Frame.Clone(), Bitmap)
    End Sub

    Private Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        PictureBox2.Image = PictureBox1.Image
        Dim timeStamp As DateTime = DateTime.Now
        ' Dim exePath As String = Application.StartupPath()
        Dim path As String = "C:\Users\gieck\Desktop\img" + timeStamp.ToString(" MMM ddd d HH_mm yyyy") + ".jpg"
        PictureBox2.Image.Save(path, Imaging.ImageFormat.Jpeg)
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        '1
        PictureBox2.Image = PictureBox1.Image


        Dim testo As String
        Dim dataArr() As String


        For i As Integer = 1 To 10

            testo = "carta," + SerialPort1.ReadExisting
            dataArr = testo.Split(",")
            If dataArr.Length = 8 Then
                DataGridView1.Rows.Add(dataArr)
                Dim timeStamp As DateTime = DateTime.Now
                ' Dim exePath As String = Application.StartupPath()
                Dim path As String = "C:\Users\gieck\Desktop\carta" + timeStamp.ToString + i.ToString + ".jpg"
                PictureBox2.Image.Save(path, Imaging.ImageFormat.Jpeg)
            Else
                testo = "carta," + SerialPort1.ReadExisting
                dataArr = testo.Split(",")
                If dataArr.Length = 8 Then
                    DataGridView1.Rows.Add(dataArr)
                    Dim timeStamp As DateTime = DateTime.Now
                    ' Dim exePath As String = Application.StartupPath()
                    Dim path As String = "C:\Users\gieck\Desktop\carta" + timeStamp.ToString + i.ToString + ".jpg"
                    PictureBox2.Image.Save(path, Imaging.ImageFormat.Jpeg)
                End If
            End If

            SerialPort1.Write("3")
        Next





    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        '1

        Button1.Enabled = False
        Button2.Enabled = False
        Button3.Enabled = False
        Button6.Enabled = False

        Dim testo As String
        Dim dataArr() As String

        Dim h As Integer = 0

        For i As Integer = 1 To 10

            PictureBox2.Image = PictureBox1.Image

            testo = "plastica," + SerialPort1.ReadExisting
            dataArr = testo.Split(",")
            If dataArr.Length <> 9 Then
                testo = "plastica," + SerialPort1.ReadExisting
                dataArr = testo.Split(",")
            End If
            If dataArr.Length <> 9 Then
                testo = "plastica," + SerialPort1.ReadExisting
                dataArr = testo.Split(",")
            End If
            If dataArr.Length <> 9 Then
                testo = "plastica," + SerialPort1.ReadExisting
                dataArr = testo.Split(",")
            End If
            If dataArr.Length <> 9 Then
                testo = "plastica," + SerialPort1.ReadExisting
                dataArr = testo.Split(",")
            End If
            If dataArr.Length <> 9 Then
                testo = "plastica," + SerialPort1.ReadExisting
                dataArr = testo.Split(",")
            End If
            If dataArr.Length = 8 Then
                DataGridView1.Rows.Add(dataArr)
                Dim timeStamp As DateTime = DateTime.Now
                Dim ora As String = timeStamp.ToString
                ora = ora.Replace(":", "_")
                ora = ora.Replace("/", "_")
                ora = ora.Replace(" ", "_")
                ' Dim exePath As String = Application.StartupPath()
                Dim path As String = "C:\Users\gieck\Desktop\plastica" + ora + i.ToString + ".jpg"
                PictureBox2.Image.Save(path, Imaging.ImageFormat.Jpeg)
                h = h + 1
            Else
                testo = "plastica," + SerialPort1.ReadExisting
                dataArr = testo.Split(",")
                If dataArr.Length = 8 Then
                    DataGridView1.Rows.Add(dataArr)
                    Dim timeStamp As DateTime = DateTime.Now
                    Dim ora As String = timeStamp.ToString
                    ora = ora.Replace(":", "_")
                    ora = ora.Replace("/", "_")
                    ora = ora.Replace(" ", "_")
                    ' Dim exePath As String = Application.StartupPath()
                    Dim path As String = "C:\Users\gieck\Desktop\plastica" + ora + i.ToString + ".jpg"
                    PictureBox2.Image.Save(path, Imaging.ImageFormat.Jpeg)
                    h = h + 1
                End If
            End If

        Next

        Button1.Enabled = True
        Button2.Enabled = True
        Button3.Enabled = True
        Button6.Enabled = True

        MessageBox.Show("Fatto, i record registrati sono " & h.ToString)

    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        '1
        PictureBox2.Image = PictureBox1.Image


        Dim testo As String
        Dim dataArr() As String


        For i As Integer = 1 To 10

            testo = "vetro," + SerialPort1.ReadExisting
            dataArr = testo.Split(",")
            If dataArr.Length = 8 Then
                DataGridView1.Rows.Add(dataArr)
                Dim timeStamp As DateTime = DateTime.Now
                ' Dim exePath As String = Application.StartupPath()
                Dim path As String = "C:\Users\gieck\Desktop\vetro" + timeStamp.ToString + i.ToString + ".jpg"
                PictureBox2.Image.Save(path, Imaging.ImageFormat.Jpeg)
            Else
                testo = "vetro," + SerialPort1.ReadExisting
                dataArr = testo.Split(",")
                If dataArr.Length = 8 Then
                    DataGridView1.Rows.Add(dataArr)
                    Dim timeStamp As DateTime = DateTime.Now
                    ' Dim exePath As String = Application.StartupPath()
                    Dim path As String = "C:\Users\gieck\Desktop\vetro" + timeStamp.ToString + i.ToString + ".jpg"
                    PictureBox2.Image.Save(path, Imaging.ImageFormat.Jpeg)
                End If
            End If

            SerialPort1.Write("3")
        Next

    End Sub

    Private Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        '1
        PictureBox2.Image = PictureBox1.Image


        Dim testo As String
        Dim dataArr() As String


        For i As Integer = 1 To 10

            testo = "indifferenziato," + SerialPort1.ReadExisting
            dataArr = testo.Split(",")
            If dataArr.Length = 8 Then
                DataGridView1.Rows.Add(dataArr)
                Dim timeStamp As DateTime = DateTime.Now
                ' Dim exePath As String = Application.StartupPath()
                Dim path As String = "C:\Users\gieck\Desktop\indifferenziato" + timeStamp.ToString + i.ToString + ".jpg"
                PictureBox2.Image.Save(path, Imaging.ImageFormat.Jpeg)
            Else
                testo = "indifferenziato," + SerialPort1.ReadExisting
                dataArr = testo.Split(",")
                If dataArr.Length = 8 Then
                    DataGridView1.Rows.Add(dataArr)
                    Dim timeStamp As DateTime = DateTime.Now
                    ' Dim exePath As String = Application.StartupPath()
                    Dim path As String = "C:\Users\gieck\Desktop\indifferenziato" + timeStamp.ToString + i.ToString + ".jpg"
                    PictureBox2.Image.Save(path, Imaging.ImageFormat.Jpeg)
                End If
            End If

            SerialPort1.Write("3")
        Next

    End Sub

    Private Sub Label1_Click(sender As Object, e As EventArgs) Handles Label1.Click

    End Sub

    Private Sub Form2_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.CenterToParent()
        Button1.Enabled = False
        Button2.Enabled = False
        Button3.Enabled = False
        Button6.Enabled = False
        Button10.Enabled = False
        Button10.BringToFront()
        Button11.Enabled = False
        Button11.SendToBack()

        Dim exePath As String = Application.StartupPath()

        '  Dim fname As String = exePath + "\DATI.csv"




        Dim dt As New DataTable
        DataGridView1.ColumnCount = 9
        DataGridView1.Columns(0).Name = "Type"
        DataGridView1.Columns(1).Name = "Peso"
        DataGridView1.Columns(2).Name = "luce1"
        DataGridView1.Columns(3).Name = "luce2"
        DataGridView1.Columns(4).Name = "distanza1"
        DataGridView1.Columns(5).Name = "distanza2"
        DataGridView1.Columns(6).Name = "rosso"
        DataGridView1.Columns(7).Name = "verde"
        DataGridView1.Columns(8).Name = "blu"





        '   Using MyReader As New Microsoft.VisualBasic.
        '   FileIO.TextFieldParser(fname)
        '   MyReader.TextFieldType = FileIO.FieldType.Delimited
        '  MyReader.SetDelimiters(",")
        ' Dim currentRow As String()
        'While Not MyReader.EndOfData
        'Try
        'currentRow = MyReader.ReadFields()
        '
        ' DataGridView1.Rows.Add(currentRow)
        'Catch ex As Microsoft.VisualBasic.
        'FileIO.MalformedLineException
        'MsgBox("Line " & ex.Message &
        '           "is not valid and will be skipped.")
        'End Try
        'End While
        ' End Using


        '  DataGridView1.Columns(0).AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        ' DataGridView1.Columns(1).AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        DataGridView1.Columns(2).AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        DataGridView1.Columns(3).AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        DataGridView1.Columns(4).AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        DataGridView1.Columns(5).AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        DataGridView1.Columns(6).AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells

    End Sub

    Private Sub Button9_Click(sender As Object, e As EventArgs) Handles Button9.Click
        ComboBox1.Items.Clear()
        Dim myPort As Array
        Dim i As Integer
        myPort = IO.Ports.SerialPort.GetPortNames()
        ComboBox1.Items.AddRange(myPort)
        i = ComboBox1.Items.Count
        i = i - i
        Try
            ComboBox1.SelectedIndex = i
        Catch ex As Exception
            Dim result As DialogResult
            result = MessageBox.Show("Com port not detected", "Warning !!!", MessageBoxButtons.OK)
            ComboBox1.Text = ""
            ComboBox1.Items.Clear()
            Call Form2_Load(Me, e)
        End Try

        Button10.Enabled = True
        Button10.BringToFront()
        ComboBox1.DroppedDown = True

    End Sub

    Private Sub Button10_Click(sender As Object, e As EventArgs) Handles Button10.Click

        Button10.Enabled = False
        Button10.SendToBack()

        SerialPort1.BaudRate = 9600
        SerialPort1.PortName = ComboBox1.SelectedItem
        SerialPort1.Open()
        ' per capiare il testo (serial.println)
        ' Dim testo As Single = SerialPort1.ReadExisting
        ' Dim testo1 As String = testo.ToString


        Button11.Enabled = True
        Button11.BringToFront()

        Button1.Enabled = True
        Button2.Enabled = True
        Button3.Enabled = True
        Button6.Enabled = True
    End Sub

    Private Sub Button11_Click(sender As Object, e As EventArgs) Handles Button11.Click

        Button11.Enabled = False
        Button11.SendToBack()

        SerialPort1.Close()




        Button10.Enabled = True
        Button10.BringToFront()

        Button1.Enabled = False
        Button2.Enabled = False
        Button3.Enabled = False
        Button6.Enabled = False

    End Sub

    Private Sub DataGridView1_CellContentClick(sender As Object, e As DataGridViewCellEventArgs) Handles DataGridView1.CellContentClick

    End Sub

    Private Sub Button12_Click(sender As Object, e As EventArgs) Handles Button12.Click




        'create empty string
        Dim thecsvfile As String = String.Empty
        'get the column headers
        For Each column As DataGridViewColumn In DataGridView1.Columns
            thecsvfile = thecsvfile & column.HeaderText & ","
        Next
        'trim the last comma
        thecsvfile = thecsvfile.TrimEnd(",")
        'Add the line to the output
        thecsvfile = thecsvfile & vbCr & vbLf
        'get the rows
        For Each row As DataGridViewRow In DataGridView1.Rows
            'get the cells
            For Each cell As DataGridViewCell In row.Cells
                thecsvfile = thecsvfile & cell.FormattedValue.replace(",", "") & ","
            Next
            'trim the last comma
            thecsvfile = thecsvfile.TrimEnd(",")
            'Add the line to the output
            thecsvfile = thecsvfile & vbCr & vbLf
        Next
        'write the file

        thecsvfile = thecsvfile.Substring(0, thecsvfile.Length - 2)

        Dim exePath As String = Application.StartupPath()

        Dim fileName As String = exePath + "\DATI.csv"






        My.Computer.FileSystem.WriteAllText(exePath + "\DATI.csv", thecsvfile, False)


        MessageBox.Show("Il file è stato salvato!")
    End Sub
End Class