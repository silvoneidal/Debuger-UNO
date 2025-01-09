VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Main 
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   5025
   ClientLeft      =   1350
   ClientTop       =   2970
   ClientWidth     =   6270
   Icon            =   "Main.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5025
   ScaleWidth      =   6270
   StartUpPosition =   2  'CenterScreen
   Begin MSComctlLib.ProgressBar pgbBuffer 
      Height          =   345
      Left            =   120
      TabIndex        =   16
      Top             =   4440
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   609
      _Version        =   393216
      BorderStyle     =   1
      Appearance      =   0
      Scrolling       =   1
   End
   Begin VB.CommandButton cmdPause 
      Caption         =   "Pause"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   350
      Left            =   3720
      TabIndex        =   13
      Top             =   4440
      Width           =   1095
   End
   Begin VB.CommandButton cmdReset 
      Caption         =   "Reset"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   350
      Left            =   4920
      TabIndex        =   12
      Top             =   4440
      Width           =   1095
   End
   Begin VB.Timer Timer1 
      Interval        =   500
      Left            =   840
      Top             =   4320
   End
   Begin VB.Frame frmDebuger 
      Caption         =   "Debuger"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3375
      Left            =   120
      TabIndex        =   7
      Top             =   960
      Width           =   6015
      Begin VB.CommandButton cmdEditarVariable 
         Caption         =   "Editar"
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   350
         Left            =   3600
         TabIndex        =   14
         Top             =   2880
         Width           =   1095
      End
      Begin VB.TextBox txtVariable 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   350
         Left            =   120
         TabIndex        =   11
         Top             =   2880
         Width           =   3375
      End
      Begin MSComctlLib.ListView lstDebugger 
         Height          =   2535
         Left            =   120
         TabIndex        =   9
         Top             =   240
         Width           =   5775
         _ExtentX        =   10186
         _ExtentY        =   4471
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   1
         NumItems        =   0
      End
      Begin VB.CommandButton cmdClearList 
         Caption         =   "Limpar"
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   350
         Left            =   4800
         TabIndex        =   8
         Top             =   2880
         Width           =   1095
      End
   End
   Begin VB.Frame frmConnect 
      Height          =   735
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   6015
      Begin VB.CommandButton cmdScanPort 
         Caption         =   "Scanear"
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   350
         Left            =   3120
         TabIndex        =   6
         Top             =   240
         Width           =   1335
      End
      Begin VB.CommandButton cmdConnectPort 
         Caption         =   "Conectar"
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   350
         Left            =   4560
         TabIndex        =   5
         Top             =   240
         Width           =   1335
      End
      Begin VB.ComboBox cboBaudRate 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   1560
         Style           =   2  'Dropdown List
         TabIndex        =   4
         Top             =   240
         Width           =   1335
      End
      Begin VB.ComboBox cboCommPort 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   120
         Style           =   2  'Dropdown List
         TabIndex        =   3
         Top             =   240
         Width           =   1335
      End
   End
   Begin MSCommLib.MSComm MSComm1 
      Left            =   120
      Top             =   4200
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
   End
   Begin VB.TextBox txtData 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   120
      TabIndex        =   10
      Top             =   4440
      Width           =   2295
   End
   Begin VB.Label lblRx 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00000080&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Rx"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   350
      Left            =   2520
      TabIndex        =   15
      Top             =   4440
      Width           =   1095
   End
   Begin VB.Shape shpConnect 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   135
      Left            =   -120
      Top             =   4920
      Width           =   6495
   End
   Begin VB.Label lblData 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5280
      TabIndex        =   1
      Top             =   6120
      Width           =   1695
   End
   Begin VB.Label lblHora 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5400
      TabIndex        =   0
      Top             =   5880
      Width           =   1455
   End
   Begin VB.Menu mGerenciador 
      Caption         =   "Gerenciador de Dispositivos"
   End
End
Attribute VB_Name = "Main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' Microsoft Comm Control 6.0
' Microsoft Windows Common Controls 6.0 (SP6)

' API para uso de sleep
Private Declare Sub Sleep Lib "kernel32.dll" (ByVal dwMilliseconds As Long)

Dim Titulo As String
Dim Index As Integer
Dim newIndex As Integer
Dim Value As String

Private Sub Form_Load()
    
    Titulo = App.Title & " - " & "Version " & App.Major & "." & App.Minor & "." & App.Revision
    Me.Caption = Titulo

On Error GoTo Erro

    ' Propriedades para listview
    lstDebugger.View = lvwReport ' para mostrar as colunas

    ' Adiciona colunas ao listview
    With lstDebugger
        .ColumnHeaders.Add , , "Index", 600 ' Cabeçalho da coluna
        .ColumnHeaders.Add , , "Variável", 1600 ' Cabeçalho da coluna
        .ColumnHeaders.Add , , "Valor", 3500 ' Cabeçalho da coluna
    End With
    
    ' Inicia com nenhum item selecionado
    lstDebugger.SelectedItem = Nothing
    
    ' Informações ao usuário
    lstDebugger.ToolTipText = "Selecione um index para editar a variável."
        
    ' Adiciona lista de baudrate
    With cboBaudRate
        .AddItem "1200"
        .AddItem "2400"
        .AddItem "4800"
        .AddItem "9600"
        .AddItem "19200"
        .AddItem "38400"
        .AddItem "57600"
        .AddItem "115200"
        .ListIndex = 3
    End With
    
    ' Busca portas disponiveis
    Call cmdScanPort_Click
    
    ' Comandos inicialmente desabilitados
    cmdConnectPort.Enabled = True
    
    '
    shpConnect.BackColor = vbRed
    '
    txtData.Visible = False
    
Exit Sub

Erro:
    MsgBox "Erro " & Err & ". " & Error, vbCritical, "DALCOQUIO AUTOMAÇÃO"
    
End Sub

Private Sub cmdScanPort_Click()
    Dim i As Integer
    
On Error GoTo Erro

    'Detecta portas disponiveis
    cmdScanPort.Caption = "Scan..."
    cboCommPort.Clear
    For i = 1 To 32
        If DetectaPortaCOM(i) <> 0 Then
            cboCommPort.AddItem "COM" & i
        End If
    Next
    cboCommPort.ListIndex = 0
    cmdScanPort.Caption = "Scanear"
        
Exit Sub
    
Erro:
    MsgBox "Erro " & Err & ". " & Error, vbCritical, "DALCOQUIO AUTOMAÇÃO"

End Sub

Private Sub cmdConnectPort_Click()
On Error GoTo Erro

    ' Conectar
    If cmdConnectPort.Caption = "Conectar" Then
        cmdConnectPort.Caption = "Desconectar"
        MSComm1.CommPort = Mid(cboCommPort.Text, 4, 2)
        MSComm1.Settings = cboBaudRate.Text & "n,8,1"
        MSComm1.RThreshold = 1
        MSComm1.DTREnable = False
        MSComm1.RTSEnable = True
        MSComm1.PortOpen = True
        cboCommPort.Enabled = False
        cboBaudRate.Enabled = False
        cmdScanPort.Enabled = False
        shpConnect.BackColor = vbGreen
        Me.Caption = "Conectado na COM" & MSComm1.CommPort & "," & MSComm1.Settings
    ' Desconectar
    Else
        cmdConnectPort.Caption = "Conectar"
        MSComm1.PortOpen = False
        cboCommPort.Enabled = True
        cboBaudRate.Enabled = True
        cmdScanPort.Enabled = True
        shpConnect.BackColor = vbRed
        Me.Caption = Titulo
    End If
    
    
Exit Sub

Erro:
    MsgBox "Erro " & Err & ". " & Error, vbCritical, "DALCOQUIO AUTOMAÇÃO"
    
End Sub

Private Sub MSComm1_OnComm()
    Dim Data As String
    Dim strData As String
    
On Error GoTo Erro

    If MSComm1.PortOpen = False Then Exit Sub
    If cmdPause.Caption = "Run" Then Exit Sub

    Select Case MSComm1.CommEvent
        Case comEvReceive
            ' Start da sinalização de recepção
            lblRx.BackColor = vbRed
            DoEvents
            
            ' Recebe os dados da serial
            strData = MSComm1.Input
            txtData = txtData + strData
            
            ' Verifica protocolo de dados
            If Left(txtData, 1) = "#" Then ' And InStr(txtData, Chr(10)) > 0 Then
                Call UpdateDebugger(txtData)
                txtData = Empty
            End If
            
            ' Stop da sinalização de recepção
            pgbBuffer.Value = MapValue(Len(strData), 0, 1024, 0, 100) ' Mapeando um valor de 0 a 1024 para 0 a 100
            lblRx.BackColor = &H80&
            Sleep 100
            pgbBuffer.Value = 0
            
    End Select
    
Exit Sub

Erro:
    If Err = 13 Or Err = 35600 Or Err = 8018 Then
        txtData = Empty
    Else
        MsgBox "Erro " & Err & ". " & Error, vbCritical, "DALCOQUIO AUTOMAÇÃO"
    End If

End Sub

Private Sub ClearBufferSerial()
  Dim Data As String

  ' Verifica se há dados disponíveis
  Do While MSComm1.InBufferCount > 0
    ' Lê todos os dados disponíveis
    Data = MSComm1.Input
    ' Descarta os dados (opcional: você poderia processá-los aqui se necessário)
  Loop
End Sub

Private Function UpdateDebugger(Data As String)
    Index = Int(Mid(Data, 2, 1))
    Value = Mid(Data, 3, Len(Data))
    
    ' Verifica se Index atual existe
    For i = 1 To Index
        If Index = i Then
            ' Atualiza index atual
            lstDebugger.ListItems(Index).SubItems(2) = Value
        ElseIf Index > newIndex Then
            ' Adiciona novo index, variável, valor
            newIndex = newIndex + 1
            With lstDebugger
                .ListItems.Add , , newIndex
                .ListItems(.ListItems.Count).SubItems(1) = "Variável_" & newIndex
                .ListItems(.ListItems.Count).SubItems(2) = valorValue
            End With
        End If
    Next i
    
End Function

Public Function MapValue(ByVal x As Single, ByVal in_min As Single, ByVal in_max As Single, ByVal out_min As Single, ByVal out_max As Single) As Single

  ' Verifica se o valor de entrada está dentro do intervalo válido.  Caso contrário, retorna o valor mínimo ou máximo.
  If x < in_min Then
    MapValue = out_min
    Exit Function
  End If
  If x > in_max Then
    MapValue = out_max
    Exit Function
  End If

  ' Fórmula de interpolação linear
  MapValue = (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min

End Function

Private Sub cmdPause_Click()
    If cmdPause.Caption = "Pause" Then
        cmdPause.Caption = "Run"
    Else
        cmdPause.Caption = "Pause"
        Call ClearBufferSerial
    End If

End Sub

Private Sub cmdReset_Click()
    ' Efetua um reset de hardware
    MSComm1.DTREnable = True
    Sleep (250)
    MSComm1.DTREnable = False
    
End Sub

Private Sub deleteDuplicados()
    Dim i As Integer, j As Integer
    
    For i = 0 To cboSendData.ListCount
        For j = i + 1 To cboSendData.ListCount
            If cboSendData.List(i) = cboSendData.List(j) Then
                cboSendData.RemoveItem (j)
                j = j - 1
            End If
        Next
    Next
    
End Sub

Private Sub cmdEditarVariable_Click()
    Dim item As ListItem
    Set item = lstDebugger.SelectedItem
    
    If txtVariable.Text = Empty Then
        MsgBox "Digite um nome para editar a variável.", vbInformation, "DALCOQUIO AUTOMAÇÃO"
        lstDebugger.SelectedItem = Nothing
        Exit Sub
    End If
    
    ' Verifica se algum index foi selecionado
    If Not item Is Nothing Then
        ' Alterar variavel do index selecionado
        item.SubItems(1) = txtVariable.Text
        lstDebugger.SelectedItem = Nothing
        txtVariable.Text = Empty
    Else
        MsgBox "Nenhum index selecionado.", vbInformation, "DALCOQUIO AUTOMAÇÃO"
    End If
    
    lstDebugger.SelectedItem = Nothing

End Sub

Private Sub cmdClearList_Click()
    lstDebugger.ListItems.Clear
    newIndex = 0
    
End Sub

Private Sub mGerenciador_Click()
    Shell ("cmd.exe /c devmgmt.msc")
    
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Erro
    
    If MSComm1.PortOpen Then MSComm1.PortOpen = False
    
Exit Sub

Erro:
    MsgBox "Erro " & Err & ". " & Error, vbCritical, "DALCOQUIO AUTOMAÇÃO"
    
End Sub

'------------------------------------------------------------------------------------------
'Mid: Retorna o número especificado de caracteres de uma string.
'exemplo: mid(text1.text,1,5) -> retorna as letras 1,2,3,4,5 do text1.
'exemplo: mid(text1.text,20,5) -> retorna  as ultimas 5 letras iniciando da posicai 20 do text1.

'Left:Retorna o número especificado de caracteres a partir do início de uma string.
'exemplo: left(text1.text,3) -> retorna as 3 primeiras letras do text1.

'right:Retorna o número especificado de caracteres a partir do lado direito de uma string.
'exemplo: right(text1.text, 4) -> retorna as quatro últimas letras do text1.


' Função para verificar tempo de processo
'------------------------------------------------------------------------------------------
' Start tempo de processo
'Dim startTime As Double
'Dim endTime As Double
'Dim elapsedTime As Double
'startTime = Timer

' Loop de processo aqui...

' End tempo de processo
'endTime = Timer
'elapsedTime = endTime - startTime
'If elapsedTime > 2 Then txtData = Empty ' limpa txtData, pois houve algum erro.


' Função para conversão de string para decimal
'------------------------------------------------------------------------------------------
'Private Function StringToDec(s As String) As String
'    Dim result As String
'
'    For i = 1 To Len(s)
'        result = result & " " & Format(Asc(Mid(s, i, 1)), "000")
'    Next i
'
'    StringToDec = result
'
'End Function

' Anotações diversas
'------------------------------------------------------------------------------------------
'            'Verificar se a última linha é new line:
'            If Len(strData) > 0 Then
'                lines = Split(strData, vbLf)
'                If Len(lines(UBound(lines))) = 0 Then
'                    strData = Empty
'                    txtData = Empty
'                End If
'            End If

'            'Verificar se tem alguma new line:
'            lastNewLine = InStrRev(strData, vbCrLf)
'            If lastNewLine = 0 Then
'              lastNewLine = InStrRev(strData, vbCr)
'              If lastNewLine = 0 Then
'                lastNewLine = InStrRev(strData, vbLf)
'              End If
'            End If
'
'            If lastNewLine > 0 Then
'              strData = Empty
'              txtData = Empty
'              ClearBufferSerial
'              If lastNewLine = Len(strData) Then
'                'A última linha termina com uma nova linha.
'              End If
'            End If

' End tempo de processo
'endTime = Timer
'elapsedTime = endTime - startTime
'If elapsedTime > 2 Then txtData = Empty ' limpa txtData, pois houve algum erro.
