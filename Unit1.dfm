object Form1: TForm1
  Left = 120
  Top = 61
  BorderStyle = bsDialog
  Caption = 'proRFL.DLL Demo '
  ClientHeight = 606
  ClientWidth = 848
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Label10: TLabel
    Left = 16
    Top = 128
    Width = 137
    Height = 25
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Hotel ID [coID]'
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'System'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
  end
  object Label17: TLabel
    Left = 0
    Top = 416
    Width = 161
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Card Data [cardHexStr]'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'System'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 848
    Height = 49
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'proUSB Card Lock Interface Demostration'
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 48
    Width = 489
    Height = 73
    Caption = 'Search USB Reader'
    Font.Charset = GB2312_CHARSET
    Font.Color = clPurple
    Font.Height = -16
    Font.Name = 'System'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Button1: TButton
      Left = 16
      Top = 24
      Width = 313
      Height = 33
      Caption = 'Step 1: initialize USB'
      TabOrder = 0
      OnClick = Button1Click
    end
    object RadioButton3: TRadioButton
      Left = 352
      Top = 16
      Width = 129
      Height = 25
      Caption = 'USB'
      TabOrder = 1
      OnClick = RadioButton3Click
    end
    object RadioButton4: TRadioButton
      Left = 352
      Top = 40
      Width = 129
      Height = 25
      Caption = 'proUSB'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = RadioButton4Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 168
    Width = 489
    Height = 241
    BiDiMode = bdRightToLeftNoAlign
    Caption = 'Guest Card Information'
    Font.Charset = GB2312_CHARSET
    Font.Color = clPurple
    Font.Height = -16
    Font.Name = 'System'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    object Label13: TLabel
      Left = 16
      Top = 64
      Width = 161
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Lock No.'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'System'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 48
      Top = 112
      Width = 6
      Height = 12
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 8
      Top = 120
      Width = 161
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Check Out [eTime]'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'System'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 88
      Width = 473
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'You can get Lock No. in the Card Lock Management System'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'System'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 160
      Width = 161
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Guest Dai [Dai]'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'System'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 16
      Top = 24
      Width = 161
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Card No.'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'System'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 112
      Top = 40
      Width = 65
      Height = 22
      AutoSize = False
      Caption = #65288'0-15'#65289
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 72
      Top = 176
      Width = 97
      Height = 22
      AutoSize = False
      Caption = #65288'0-255'#65289
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'System'
      Font.Style = []
      ParentFont = False
    end
    object edt_LockNo: TEdit
      Left = 184
      Top = 64
      Width = 97
      Height = 24
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'System'
      Font.Style = [fsBold]
      ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 0
      Text = '01020399'
    end
    object edt_Dai: TEdit
      Left = 184
      Top = 160
      Width = 97
      Height = 24
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'System'
      Font.Style = [fsBold]
      ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 1
      Text = '0'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 184
      Top = 120
      Width = 129
      Height = 24
      Date = 39106.698791226850000000
      Time = 39106.698791226850000000
      ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 2
    end
    object DateTimePicker2: TDateTimePicker
      Left = 312
      Top = 120
      Width = 65
      Height = 24
      Date = 39106.699220914350000000
      Format = 'HH:mm'
      Time = 39106.699220914350000000
      ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      Kind = dtkTime
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      Left = 304
      Top = 24
      Width = 177
      Height = 33
      Caption = 'Default'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'System'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn4Click
    end
    object edt_CardNo: TEdit
      Left = 184
      Top = 24
      Width = 97
      Height = 24
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'System'
      Font.Style = [fsBold]
      ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 5
      Text = '0'
    end
    object CheckBox1: TCheckBox
      Left = 80
      Top = 208
      Width = 369
      Height = 25
      Caption = 'Guest Card unlock deadbolt'
      TabOrder = 6
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 440
    Width = 833
    Height = 137
    Caption = 'Guide'
    Font.Charset = GB2312_CHARSET
    Font.Color = clPurple
    Font.Height = -16
    Font.Name = 'System'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 809
      Height = 25
      AutoSize = False
      Caption = 
        '1,The USB Reader must be initialized (connected to PC) before it' +
        #39's used'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'System'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 56
      Width = 809
      Height = 49
      AutoSize = False
      Caption = 
        '2, Guest Dai stands for overwrite function, for example, if the ' +
        'Dai of first card issued is 5 and the Dai of second card issued ' +
        'is 3, then the first card can'#8217't open  the lock after the second ' +
        'card opens the lock, we name it by Overwrite'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'System'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
  end
  object edt_coID: TEdit
    Left = 168
    Top = 130
    Width = 73
    Height = 24
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'System'
    Font.Style = [fsBold]
    ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentFont = False
    TabOrder = 3
    Text = '0'
  end
  object Button3: TButton
    Left = 256
    Top = 128
    Width = 233
    Height = 25
    Caption = 'Get coID from Card'
    Enabled = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'System'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button3Click
  end
  object GroupBox4: TGroupBox
    Left = 504
    Top = 152
    Width = 337
    Height = 257
    Caption = 'Normal Functions'
    Enabled = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'System'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object BitBtn1: TBitBtn
      Left = 8
      Top = 24
      Width = 321
      Height = 33
      Caption = 'Buzzer'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'System'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn3: TBitBtn
      Left = 8
      Top = 56
      Width = 321
      Height = 33
      Caption = 'Get Card Info'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'System'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object BitBtn2: TBitBtn
      Left = 8
      Top = 88
      Width = 321
      Height = 33
      Caption = 'Issue Guest Card'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'System'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn5: TBitBtn
      Left = 8
      Top = 120
      Width = 321
      Height = 33
      Caption = 'Card Erase'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'System'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn5Click
    end
    object BitBtn7: TBitBtn
      Left = 8
      Top = 152
      Width = 321
      Height = 33
      Caption = 'GetCardTypeByCardDataStr'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn7Click
    end
    object BitBtn8: TBitBtn
      Left = 8
      Top = 184
      Width = 321
      Height = 33
      Caption = 'GetGuestLockNoByCardDataStr'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 8
      Top = 216
      Width = 321
      Height = 33
      Caption = 'GetGuestETimeByCardDataStr'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn9Click
    end
  end
  object BitBtn6: TBitBtn
    Left = 528
    Top = 64
    Width = 281
    Height = 33
    Caption = 'DLL'#39's Version [GetDLLVersion]'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'System'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn6Click
  end
  object edt_CardData: TEdit
    Left = 176
    Top = 416
    Width = 649
    Height = 22
    Color = clScrollBar
    Ctl3D = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'System'
    Font.Style = [fsBold]
    ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 7
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 582
    Width = 848
    Height = 24
    Panels = <
      item
        Alignment = taCenter
        Width = 100
      end
      item
        Width = 50
      end>
  end
  object cmdExit: TBitBtn
    Left = 528
    Top = 104
    Width = 281
    Height = 33
    Caption = 'E&xit'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'System'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = cmdExitClick
  end
end
