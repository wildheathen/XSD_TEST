object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 569
  ClientWidth = 764
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnShow = FormShow
  DesignSize = (
    764
    569)
  TextHeight = 15
  object M_XML: TMemo
    Left = 0
    Top = 0
    Width = 764
    Height = 569
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = 24
    ExplicitWidth = 681
    ExplicitHeight = 513
  end
  object BT_Load: TButton
    Left = 624
    Top = 488
    Width = 89
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Load'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BT_LoadClick
  end
  object BT_Generate: TButton
    Left = 434
    Top = 488
    Width = 89
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Generate'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BT_GenerateClick
  end
  object BT_Save: TButton
    Left = 529
    Top = 488
    Width = 89
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Save'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BT_SaveClick
  end
  object E_Filename: TEdit
    Left = 529
    Top = 527
    Width = 89
    Height = 23
    Anchors = [akRight, akBottom]
    TabOrder = 4
    Text = 'File1'
  end
end
