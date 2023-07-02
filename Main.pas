unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,
  Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    M_XML: TMemo;
    BT_Load: TButton;
    BT_Generate: TButton;
    BT_Save: TButton;
    E_Filename: TEdit;
    procedure BT_LoadClick(Sender: TObject);
    procedure BT_GenerateClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BT_SaveClick(Sender: TObject);
  private
    procedure Builder_DetailRow(Invoice: IXMLNode);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation
 uses
   Default_CBI_Sale;
{$R *.dfm}

procedure TMainForm.FormShow(Sender: TObject);
begin
  BT_GenerateClick(nil);
end;


procedure TMainForm.BT_GenerateClick(Sender: TObject);
var
  Invoice : IXMLInvoice;
  line : IXMLDetailRow_Line;
begin
  Invoice := NewInvoice;
  //SET THE ENCODING?

  Invoice.XTechProfile := 'Default';
  Invoice.TbNamespace := 'Document.ERP.?Sales?.Documents.Invoice'; //CHECK FOR THE RIGHT NAME (SaleDocuments probably)

  Invoice.Data.SaleDocument.DocumentDate := DateToStr(Now);

  Builder_DetailRow(Invoice);


  //Invoice.Data.Detail.Delete(0);
  //showmessage(Format('There are %d detail nodes', [Invoice.Data.Detail.Count]));

  M_XML.text := FormatXMLData(Invoice.XML);

end;

procedure TMainForm.BT_LoadClick(Sender: TObject);
var
  xml_doc : IXMLDocument;
begin
  xml_doc := TXMLDocument.Create(nil);
  xml_doc.LoadFromFile(E_Filename.Text+'.xml');
  M_XML.Text := xml_doc.XML.Text;
end;

procedure TMainForm.BT_SaveClick(Sender: TObject);
var
  xml_doc : IXMLDocument;
begin
  xml_doc := TXMLDocument.Create(nil);
  xml_doc.LoadFromXML(M_XML.text);
  xml_doc.SaveToFile(E_Filename.Text+'.xml'); //DateToStr(Now)
end;

procedure TMainForm.Builder_DetailRow(Invoice: IXMLNode);
var
  I: Integer;
  detailRow: IXMLDetailRow;
begin
  for I := 0 to 4 do
  begin
    detailRow := (Invoice as IXMLInvoice).Data.Detail.Add;

    //Since IXMLDetailRow_Line has no setter (why?) it is possible to manually add a child
    detailRow.AddChild('Line2').NodeValue := 'Line_farlocca';

    detailRow.LineType.Enum := 'Franco';
    detailRow.LineType.EnumNameSpace := 'Franco_Namespace';

    detailRow.Item := 'myItem' + I.ToString;
    detailRow.Qty := Random(15);

    if (Trunc(detailRow.Qty) mod 2) = 0 then
      detailRow.Discount1 := 420;
  end;
end;





end.
