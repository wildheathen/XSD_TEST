
{****************************************************************}
{                                                                }
{                        XML Data Binding                        }
{                                                                }
{         Generated on: 01/07/2023 16:47:19                      }
{       Generated from: C:\Users\david\Desktop\Default_CBI.xsd   }
{   Settings stored in: C:\Users\david\Desktop\Default_CBI.xdb   }
{                                                                }
{****************************************************************}

unit Default_CBI_Sale;

interface

uses Xml.xmldom, Xml.XMLDoc, Xml.XMLIntf;

type

{ Forward Decls }

  IXMLInvoice = interface;
  IXMLData = interface;
  IXMLSaleDocument = interface;
  IXMLSaleDocument_DocumentType = interface;
  IXMLSaleDocument_CustSuppType = interface;
  IXMLSaleDocument_CustSupp = interface;
  IXMLSaleDocument_CustSupp_CustomersSuppliers = interface;
  IXMLSaleDocument_CustSupp_OtherBranches = interface;
  IXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow = interface;
  IXMLSaleDocument_CustSupp_Options = interface;
  IXMLSaleDocument_PymtTerm = interface;
  IXMLSaleDocument_PymtTerm_PaymentTerms = interface;
  IXMLSaleDocument_CustomerBank = interface;
  IXMLSaleDocument_CustomerBank_Banks = interface;
  IXMLSaleDocument_CompanyBank = interface;
  IXMLSaleDocument_CompanyBank_Banks = interface;
  IXMLSaleDocument_CompanyBank_BanksCAs = interface;
  IXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow = interface;
  IXMLSaleDocument_CompanyBank_BillsCAs = interface;
  IXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow = interface;
  IXMLSaleDocument_SaleDocId = interface;
  IXMLSaleDocument_Company = interface;
  IXMLSaleDocument_Company_Company = interface;
  IXMLNotes = interface;
  IXMLNotes_SaleDocId = interface;
  IXMLDetail = interface;
  IXMLDetailRow = interface;
  IXMLDetailRow_SaleDocId = interface;
  IXMLDetailRow_Line = interface;
  IXMLDetailRow_LineType = interface;
  IXMLDetailRow_UnitsOfMeasure = interface;
  IXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure = interface;
  IXMLDetailRow_TaxCode = interface;
  IXMLDetailRow_TaxCode_TaxCode = interface;
  IXMLDetailRow_DeliveryNote = interface;
  IXMLDetailRow_DeliveryNote_SaleDocument = interface;
  IXMLDetailRow_ReferenceDocType = interface;
  IXMLTaxSummary = interface;
  IXMLTaxSummaryRow = interface;
  IXMLTaxSummaryRow_SaleDocId = interface;
  IXMLTaxSummaryRow_TaxCode = interface;
  IXMLTaxSummaryRow_TaxCodeSummaryRow = interface;
  IXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode = interface;
  IXMLCharges = interface;
  IXMLCharges_SaleDocId = interface;
  IXMLCharges_PaymentTerm = interface;
  IXMLShipping = interface;
  IXMLShipping_SaleDocId = interface;
  IXMLPymtSchedule = interface;
  IXMLPymtScheduleRow = interface;
  IXMLPymtScheduleRow_SaleDocId = interface;
  IXMLPymtScheduleRow_InstallmentNo = interface;
  IXMLPymtScheduleRow_InstallmentType = interface;
  IXMLDiagnostic = interface;
  IXMLDiagnostic_Errors = interface;
  IXMLDiagnostic_Errors_Error = interface;
  IXMLDiagnostic_Warnings = interface;
  IXMLDiagnostic_Warnings_Warning = interface;

{ IXMLInvoice }

  IXMLInvoice = interface(IXMLNode)
    ['{11475F7F-78F0-4393-B23F-80E668BD263E}']
    { Property Accessors }
    function Get_TbNamespace: UnicodeString;
    function Get_XTechProfile: UnicodeString;
    function Get_Postable: Boolean;
    function Get_PostBack: Boolean;
    function Get_Data: IXMLData;
    function Get_Diagnostic: IXMLDiagnostic;
    procedure Set_TbNamespace(const Value: UnicodeString);
    procedure Set_XTechProfile(const Value: UnicodeString);
    procedure Set_Postable(const Value: Boolean);
    procedure Set_PostBack(const Value: Boolean);
    { Methods & Properties }
    property TbNamespace: UnicodeString read Get_TbNamespace write Set_TbNamespace;
    property XTechProfile: UnicodeString read Get_XTechProfile write Set_XTechProfile;
    property Postable: Boolean read Get_Postable write Set_Postable;
    property PostBack: Boolean read Get_PostBack write Set_PostBack;
    property Data: IXMLData read Get_Data;
    property Diagnostic: IXMLDiagnostic read Get_Diagnostic;
  end;

{ IXMLData }

  IXMLData = interface(IXMLNode)
    ['{4F18E644-5DC9-4BF9-B3D7-8C55432B65C0}']
    { Property Accessors }
    function Get_SaleDocument: IXMLSaleDocument;
    function Get_Notes: IXMLNotes;
    function Get_Detail: IXMLDetail;
    function Get_TaxSummary: IXMLTaxSummary;
    function Get_Charges: IXMLCharges;
    function Get_Shipping: IXMLShipping;
    function Get_PymtSchedule: IXMLPymtSchedule;
    { Methods & Properties }
    property SaleDocument: IXMLSaleDocument read Get_SaleDocument;
    property Notes: IXMLNotes read Get_Notes;
    property Detail: IXMLDetail read Get_Detail;
    property TaxSummary: IXMLTaxSummary read Get_TaxSummary;
    property Charges: IXMLCharges read Get_Charges;
    property Shipping: IXMLShipping read Get_Shipping;
    property PymtSchedule: IXMLPymtSchedule read Get_PymtSchedule;
  end;

{ IXMLSaleDocument }

  IXMLSaleDocument = interface(IXMLNode)
    ['{65F580FD-E119-4A8A-9966-6ABC8EDED342}']
    { Property Accessors }
    function Get_Master: Boolean;
    function Get_DocumentType: IXMLSaleDocument_DocumentType;
    function Get_DocNo: UnicodeString;
    function Get_DocumentDate: UnicodeString;
    function Get_CustSuppType: IXMLSaleDocument_CustSuppType;
    function Get_CustSupp: IXMLSaleDocument_CustSupp;
    function Get_Language: UnicodeString;
    function Get_OurReference: UnicodeString;
    function Get_YourReference: UnicodeString;
    function Get_PymtTerm: IXMLSaleDocument_PymtTerm;
    function Get_CustomerBank: IXMLSaleDocument_CustomerBank;
    function Get_CompanyBank: IXMLSaleDocument_CompanyBank;
    function Get_SendDocumentsTo: UnicodeString;
    function Get_Currency: UnicodeString;
    function Get_Fixing: Double;
    function Get_SaleDocId: IXMLSaleDocument_SaleDocId;
    function Get_Company: IXMLSaleDocument_Company;
    function Get_TBGuid: UnicodeString;
    procedure Set_Master(const Value: Boolean);
    procedure Set_DocNo(const Value: UnicodeString);
    procedure Set_DocumentDate(const Value: UnicodeString);
    procedure Set_Language(const Value: UnicodeString);
    procedure Set_OurReference(const Value: UnicodeString);
    procedure Set_YourReference(const Value: UnicodeString);
    procedure Set_SendDocumentsTo(const Value: UnicodeString);
    procedure Set_Currency(const Value: UnicodeString);
    procedure Set_Fixing(const Value: Double);
    procedure Set_TBGuid(const Value: UnicodeString);
    { Methods & Properties }
    property Master: Boolean read Get_Master write Set_Master;
    property DocumentType: IXMLSaleDocument_DocumentType read Get_DocumentType;
    property DocNo: UnicodeString read Get_DocNo write Set_DocNo;
    property DocumentDate: UnicodeString read Get_DocumentDate write Set_DocumentDate;
    property CustSuppType: IXMLSaleDocument_CustSuppType read Get_CustSuppType;
    property CustSupp: IXMLSaleDocument_CustSupp read Get_CustSupp;
    property Language: UnicodeString read Get_Language write Set_Language;
    property OurReference: UnicodeString read Get_OurReference write Set_OurReference;
    property YourReference: UnicodeString read Get_YourReference write Set_YourReference;
    property PymtTerm: IXMLSaleDocument_PymtTerm read Get_PymtTerm;
    property CustomerBank: IXMLSaleDocument_CustomerBank read Get_CustomerBank;
    property CompanyBank: IXMLSaleDocument_CompanyBank read Get_CompanyBank;
    property SendDocumentsTo: UnicodeString read Get_SendDocumentsTo write Set_SendDocumentsTo;
    property Currency: UnicodeString read Get_Currency write Set_Currency;
    property Fixing: Double read Get_Fixing write Set_Fixing;
    property SaleDocId: IXMLSaleDocument_SaleDocId read Get_SaleDocId;
    property Company: IXMLSaleDocument_Company read Get_Company;
    property TBGuid: UnicodeString read Get_TBGuid write Set_TBGuid;
  end;

{ IXMLSaleDocument_DocumentType }

  IXMLSaleDocument_DocumentType = interface(IXMLNode)
    ['{FD167058-86DB-42FC-B058-4292F1D060B0}']
    { Property Accessors }
    function Get_Enum: UnicodeString;
    function Get_EnumNameSpace: UnicodeString;
    procedure Set_Enum(const Value: UnicodeString);
    procedure Set_EnumNameSpace(const Value: UnicodeString);
    { Methods & Properties }
    property Enum: UnicodeString read Get_Enum write Set_Enum;
    property EnumNameSpace: UnicodeString read Get_EnumNameSpace write Set_EnumNameSpace;
  end;

{ IXMLSaleDocument_CustSuppType }

  IXMLSaleDocument_CustSuppType = interface(IXMLNode)
    ['{F575EE62-4CB6-48DD-9983-C841030C0B22}']
    { Property Accessors }
    function Get_Enum: UnicodeString;
    function Get_EnumNameSpace: UnicodeString;
    procedure Set_Enum(const Value: UnicodeString);
    procedure Set_EnumNameSpace(const Value: UnicodeString);
    { Methods & Properties }
    property Enum: UnicodeString read Get_Enum write Set_Enum;
    property EnumNameSpace: UnicodeString read Get_EnumNameSpace write Set_EnumNameSpace;
  end;

{ IXMLSaleDocument_CustSupp }

  IXMLSaleDocument_CustSupp = interface(IXMLNode)
    ['{624CF2D3-3BFD-425B-AF22-D2E3475FE6F2}']
    { Property Accessors }
    function Get_ExternalReference: Boolean;
    function Get_CustomersSuppliers: IXMLSaleDocument_CustSupp_CustomersSuppliers;
    function Get_OtherBranches: IXMLSaleDocument_CustSupp_OtherBranches;
    function Get_Options: IXMLSaleDocument_CustSupp_Options;
    procedure Set_ExternalReference(const Value: Boolean);
    { Methods & Properties }
    property ExternalReference: Boolean read Get_ExternalReference write Set_ExternalReference;
    property CustomersSuppliers: IXMLSaleDocument_CustSupp_CustomersSuppliers read Get_CustomersSuppliers;
    property OtherBranches: IXMLSaleDocument_CustSupp_OtherBranches read Get_OtherBranches;
    property Options: IXMLSaleDocument_CustSupp_Options read Get_Options;
  end;

{ IXMLSaleDocument_CustSupp_CustomersSuppliers }

  IXMLSaleDocument_CustSupp_CustomersSuppliers = interface(IXMLNode)
    ['{430BC0DA-F640-4A16-BD9D-EA26E6596886}']
    { Property Accessors }
    function Get_Master: Boolean;
    function Get_CustSuppType: UnicodeString;
    function Get_CustSupp: UnicodeString;
    function Get_CompanyName: UnicodeString;
    function Get_TaxIdNumber: UnicodeString;
    function Get_FiscalCode: UnicodeString;
    function Get_Address: UnicodeString;
    function Get_ZIPCode: UnicodeString;
    function Get_City: UnicodeString;
    function Get_County: UnicodeString;
    function Get_Country: UnicodeString;
    function Get_Telephone1: UnicodeString;
    function Get_Fax: UnicodeString;
    function Get_ISOCountryCode: UnicodeString;
    function Get_NaturalPerson: UnicodeString;
    function Get_IBAN: UnicodeString;
    function Get_ExternalCode: UnicodeString;
    function Get_CBICode: UnicodeString;
    procedure Set_Master(const Value: Boolean);
    procedure Set_CustSuppType(const Value: UnicodeString);
    procedure Set_CustSupp(const Value: UnicodeString);
    procedure Set_CompanyName(const Value: UnicodeString);
    procedure Set_TaxIdNumber(const Value: UnicodeString);
    procedure Set_FiscalCode(const Value: UnicodeString);
    procedure Set_Address(const Value: UnicodeString);
    procedure Set_ZIPCode(const Value: UnicodeString);
    procedure Set_City(const Value: UnicodeString);
    procedure Set_County(const Value: UnicodeString);
    procedure Set_Country(const Value: UnicodeString);
    procedure Set_Telephone1(const Value: UnicodeString);
    procedure Set_Fax(const Value: UnicodeString);
    procedure Set_ISOCountryCode(const Value: UnicodeString);
    procedure Set_NaturalPerson(const Value: UnicodeString);
    procedure Set_IBAN(const Value: UnicodeString);
    procedure Set_ExternalCode(const Value: UnicodeString);
    procedure Set_CBICode(const Value: UnicodeString);
    { Methods & Properties }
    property Master: Boolean read Get_Master write Set_Master;
    property CustSuppType: UnicodeString read Get_CustSuppType write Set_CustSuppType;
    property CustSupp: UnicodeString read Get_CustSupp write Set_CustSupp;
    property CompanyName: UnicodeString read Get_CompanyName write Set_CompanyName;
    property TaxIdNumber: UnicodeString read Get_TaxIdNumber write Set_TaxIdNumber;
    property FiscalCode: UnicodeString read Get_FiscalCode write Set_FiscalCode;
    property Address: UnicodeString read Get_Address write Set_Address;
    property ZIPCode: UnicodeString read Get_ZIPCode write Set_ZIPCode;
    property City: UnicodeString read Get_City write Set_City;
    property County: UnicodeString read Get_County write Set_County;
    property Country: UnicodeString read Get_Country write Set_Country;
    property Telephone1: UnicodeString read Get_Telephone1 write Set_Telephone1;
    property Fax: UnicodeString read Get_Fax write Set_Fax;
    property ISOCountryCode: UnicodeString read Get_ISOCountryCode write Set_ISOCountryCode;
    property NaturalPerson: UnicodeString read Get_NaturalPerson write Set_NaturalPerson;
    property IBAN: UnicodeString read Get_IBAN write Set_IBAN;
    property ExternalCode: UnicodeString read Get_ExternalCode write Set_ExternalCode;
    property CBICode: UnicodeString read Get_CBICode write Set_CBICode;
  end;

{ IXMLSaleDocument_CustSupp_OtherBranches }

  IXMLSaleDocument_CustSupp_OtherBranches = interface(IXMLNodeCollection)
    ['{D076E536-07EC-48BB-ACDE-754AC540B89B}']
    { Property Accessors }
    function Get_OtherBranchesRow(const Index: Integer): IXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow;
    { Methods & Properties }
    function Add: IXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow;
    function Insert(const Index: Integer): IXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow;
    property OtherBranchesRow[const Index: Integer]: IXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow read Get_OtherBranchesRow; default;
  end;

{ IXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow }

  IXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow = interface(IXMLNode)
    ['{E5D595FC-75D2-4B0A-AC53-37EC52DB31D5}']
    { Property Accessors }
    function Get_CustSuppType: UnicodeString;
    function Get_CustSupp: UnicodeString;
    function Get_Branch: UnicodeString;
    function Get_CompanyName: UnicodeString;
    function Get_Address: UnicodeString;
    function Get_ZIPCode: UnicodeString;
    function Get_City: UnicodeString;
    function Get_County: UnicodeString;
    function Get_Country: UnicodeString;
    function Get_ISOCountryCode: UnicodeString;
    procedure Set_CustSuppType(const Value: UnicodeString);
    procedure Set_CustSupp(const Value: UnicodeString);
    procedure Set_Branch(const Value: UnicodeString);
    procedure Set_CompanyName(const Value: UnicodeString);
    procedure Set_Address(const Value: UnicodeString);
    procedure Set_ZIPCode(const Value: UnicodeString);
    procedure Set_City(const Value: UnicodeString);
    procedure Set_County(const Value: UnicodeString);
    procedure Set_Country(const Value: UnicodeString);
    procedure Set_ISOCountryCode(const Value: UnicodeString);
    { Methods & Properties }
    property CustSuppType: UnicodeString read Get_CustSuppType write Set_CustSuppType;
    property CustSupp: UnicodeString read Get_CustSupp write Set_CustSupp;
    property Branch: UnicodeString read Get_Branch write Set_Branch;
    property CompanyName: UnicodeString read Get_CompanyName write Set_CompanyName;
    property Address: UnicodeString read Get_Address write Set_Address;
    property ZIPCode: UnicodeString read Get_ZIPCode write Set_ZIPCode;
    property City: UnicodeString read Get_City write Set_City;
    property County: UnicodeString read Get_County write Set_County;
    property Country: UnicodeString read Get_Country write Set_Country;
    property ISOCountryCode: UnicodeString read Get_ISOCountryCode write Set_ISOCountryCode;
  end;

{ IXMLSaleDocument_CustSupp_Options }

  IXMLSaleDocument_CustSupp_Options = interface(IXMLNode)
    ['{15B61498-C5B1-4402-B43B-1FD9936A205E}']
    { Property Accessors }
    function Get_CustSuppType: UnicodeString;
    function Get_Customer: UnicodeString;
    function Get_ExemptFromTax: UnicodeString;
    procedure Set_CustSuppType(const Value: UnicodeString);
    procedure Set_Customer(const Value: UnicodeString);
    procedure Set_ExemptFromTax(const Value: UnicodeString);
    { Methods & Properties }
    property CustSuppType: UnicodeString read Get_CustSuppType write Set_CustSuppType;
    property Customer: UnicodeString read Get_Customer write Set_Customer;
    property ExemptFromTax: UnicodeString read Get_ExemptFromTax write Set_ExemptFromTax;
  end;

{ IXMLSaleDocument_PymtTerm }

  IXMLSaleDocument_PymtTerm = interface(IXMLNode)
    ['{E4A53AF0-5496-4174-8540-4918A37DA711}']
    { Property Accessors }
    function Get_ExternalReference: Boolean;
    function Get_PaymentTerms: IXMLSaleDocument_PymtTerm_PaymentTerms;
    procedure Set_ExternalReference(const Value: Boolean);
    { Methods & Properties }
    property ExternalReference: Boolean read Get_ExternalReference write Set_ExternalReference;
    property PaymentTerms: IXMLSaleDocument_PymtTerm_PaymentTerms read Get_PaymentTerms;
  end;

{ IXMLSaleDocument_PymtTerm_PaymentTerms }

  IXMLSaleDocument_PymtTerm_PaymentTerms = interface(IXMLNode)
    ['{7AD6D215-3899-4051-A771-A455308E6B1E}']
    { Property Accessors }
    function Get_Master: Boolean;
    function Get_Payment: UnicodeString;
    function Get_Description: UnicodeString;
    procedure Set_Master(const Value: Boolean);
    procedure Set_Payment(const Value: UnicodeString);
    procedure Set_Description(const Value: UnicodeString);
    { Methods & Properties }
    property Master: Boolean read Get_Master write Set_Master;
    property Payment: UnicodeString read Get_Payment write Set_Payment;
    property Description: UnicodeString read Get_Description write Set_Description;
  end;

{ IXMLSaleDocument_CustomerBank }

  IXMLSaleDocument_CustomerBank = interface(IXMLNode)
    ['{AD139A7E-D218-4C2E-B9B0-3AE8221B1037}']
    { Property Accessors }
    function Get_ExternalReference: Boolean;
    function Get_Banks: IXMLSaleDocument_CustomerBank_Banks;
    procedure Set_ExternalReference(const Value: Boolean);
    { Methods & Properties }
    property ExternalReference: Boolean read Get_ExternalReference write Set_ExternalReference;
    property Banks: IXMLSaleDocument_CustomerBank_Banks read Get_Banks;
  end;

{ IXMLSaleDocument_CustomerBank_Banks }

  IXMLSaleDocument_CustomerBank_Banks = interface(IXMLNode)
    ['{6E091ED3-3039-4063-91C2-E58A66C7164A}']
    { Property Accessors }
    function Get_Master: Boolean;
    function Get_Bank: UnicodeString;
    function Get_IsACompanyBank: UnicodeString;
    function Get_Description: UnicodeString;
    function Get_Swift: UnicodeString;
    procedure Set_Master(const Value: Boolean);
    procedure Set_Bank(const Value: UnicodeString);
    procedure Set_IsACompanyBank(const Value: UnicodeString);
    procedure Set_Description(const Value: UnicodeString);
    procedure Set_Swift(const Value: UnicodeString);
    { Methods & Properties }
    property Master: Boolean read Get_Master write Set_Master;
    property Bank: UnicodeString read Get_Bank write Set_Bank;
    property IsACompanyBank: UnicodeString read Get_IsACompanyBank write Set_IsACompanyBank;
    property Description: UnicodeString read Get_Description write Set_Description;
    property Swift: UnicodeString read Get_Swift write Set_Swift;
  end;

{ IXMLSaleDocument_CompanyBank }

  IXMLSaleDocument_CompanyBank = interface(IXMLNode)
    ['{2B482931-B004-4BDA-85E1-CA05F1F927A1}']
    { Property Accessors }
    function Get_ExternalReference: Boolean;
    function Get_Banks: IXMLSaleDocument_CompanyBank_Banks;
    function Get_BanksCAs: IXMLSaleDocument_CompanyBank_BanksCAs;
    function Get_BillsCAs: IXMLSaleDocument_CompanyBank_BillsCAs;
    procedure Set_ExternalReference(const Value: Boolean);
    { Methods & Properties }
    property ExternalReference: Boolean read Get_ExternalReference write Set_ExternalReference;
    property Banks: IXMLSaleDocument_CompanyBank_Banks read Get_Banks;
    property BanksCAs: IXMLSaleDocument_CompanyBank_BanksCAs read Get_BanksCAs;
    property BillsCAs: IXMLSaleDocument_CompanyBank_BillsCAs read Get_BillsCAs;
  end;

{ IXMLSaleDocument_CompanyBank_Banks }

  IXMLSaleDocument_CompanyBank_Banks = interface(IXMLNode)
    ['{DE3F039C-5489-4580-A2DA-E6049B7139CA}']
    { Property Accessors }
    function Get_Master: Boolean;
    function Get_Bank: UnicodeString;
    function Get_IsACompanyBank: UnicodeString;
    function Get_Account: UnicodeString;
    function Get_Swift: UnicodeString;
    function Get_PreferredCA: UnicodeString;
    procedure Set_Master(const Value: Boolean);
    procedure Set_Bank(const Value: UnicodeString);
    procedure Set_IsACompanyBank(const Value: UnicodeString);
    procedure Set_Account(const Value: UnicodeString);
    procedure Set_Swift(const Value: UnicodeString);
    procedure Set_PreferredCA(const Value: UnicodeString);
    { Methods & Properties }
    property Master: Boolean read Get_Master write Set_Master;
    property Bank: UnicodeString read Get_Bank write Set_Bank;
    property IsACompanyBank: UnicodeString read Get_IsACompanyBank write Set_IsACompanyBank;
    property Account: UnicodeString read Get_Account write Set_Account;
    property Swift: UnicodeString read Get_Swift write Set_Swift;
    property PreferredCA: UnicodeString read Get_PreferredCA write Set_PreferredCA;
  end;

{ IXMLSaleDocument_CompanyBank_BanksCAs }

  IXMLSaleDocument_CompanyBank_BanksCAs = interface(IXMLNodeCollection)
    ['{34D28134-1EFD-4725-AE26-0905478CD3A2}']
    { Property Accessors }
    function Get_BanksCAsRow(const Index: Integer): IXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow;
    { Methods & Properties }
    function Add: IXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow;
    function Insert(const Index: Integer): IXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow;
    property BanksCAsRow[const Index: Integer]: IXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow read Get_BanksCAsRow; default;
  end;

{ IXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow }

  IXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow = interface(IXMLNode)
    ['{29F10480-FF06-4ED4-A0BE-66BE973A070F}']
    { Property Accessors }
    function Get_Bank: UnicodeString;
    function Get_IsACompanyBank: UnicodeString;
    function Get_CA: UnicodeString;
    function Get_IBAN: UnicodeString;
    function Get_Presentation: UnicodeString;
    procedure Set_Bank(const Value: UnicodeString);
    procedure Set_IsACompanyBank(const Value: UnicodeString);
    procedure Set_CA(const Value: UnicodeString);
    procedure Set_IBAN(const Value: UnicodeString);
    procedure Set_Presentation(const Value: UnicodeString);
    { Methods & Properties }
    property Bank: UnicodeString read Get_Bank write Set_Bank;
    property IsACompanyBank: UnicodeString read Get_IsACompanyBank write Set_IsACompanyBank;
    property CA: UnicodeString read Get_CA write Set_CA;
    property IBAN: UnicodeString read Get_IBAN write Set_IBAN;
    property Presentation: UnicodeString read Get_Presentation write Set_Presentation;
  end;

{ IXMLSaleDocument_CompanyBank_BillsCAs }

  IXMLSaleDocument_CompanyBank_BillsCAs = interface(IXMLNodeCollection)
    ['{D5BC899C-9D7D-4D03-B196-E78380439CBD}']
    { Property Accessors }
    function Get_BillsCAsRow(const Index: Integer): IXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow;
    { Methods & Properties }
    function Add: IXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow;
    function Insert(const Index: Integer): IXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow;
    property BillsCAsRow[const Index: Integer]: IXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow read Get_BillsCAsRow; default;
  end;

{ IXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow }

  IXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow = interface(IXMLNode)
    ['{38122F4E-F975-459E-A974-7B30438817E4}']
    { Property Accessors }
    function Get_Bank: UnicodeString;
    function Get_IsACompanyBank: UnicodeString;
    function Get_CA: UnicodeString;
    function Get_IBAN: UnicodeString;
    function Get_Presentation: UnicodeString;
    procedure Set_Bank(const Value: UnicodeString);
    procedure Set_IsACompanyBank(const Value: UnicodeString);
    procedure Set_CA(const Value: UnicodeString);
    procedure Set_IBAN(const Value: UnicodeString);
    procedure Set_Presentation(const Value: UnicodeString);
    { Methods & Properties }
    property Bank: UnicodeString read Get_Bank write Set_Bank;
    property IsACompanyBank: UnicodeString read Get_IsACompanyBank write Set_IsACompanyBank;
    property CA: UnicodeString read Get_CA write Set_CA;
    property IBAN: UnicodeString read Get_IBAN write Set_IBAN;
    property Presentation: UnicodeString read Get_Presentation write Set_Presentation;
  end;

{ IXMLSaleDocument_SaleDocId }

  IXMLSaleDocument_SaleDocId = interface(IXMLNode)
    ['{6CAD5C34-85DC-4D62-AEBB-EB9C12026155}']
    { Property Accessors }
    function Get_PrimaryKey: Boolean;
    procedure Set_PrimaryKey(const Value: Boolean);
    { Methods & Properties }
    property PrimaryKey: Boolean read Get_PrimaryKey write Set_PrimaryKey;
  end;

{ IXMLSaleDocument_Company }

  IXMLSaleDocument_Company = interface(IXMLNode)
    ['{F10CE368-7816-481E-9D38-E6462A0C3A30}']
    { Property Accessors }
    function Get_ExternalReference: Boolean;
    function Get_Company: IXMLSaleDocument_Company_Company;
    procedure Set_ExternalReference(const Value: Boolean);
    { Methods & Properties }
    property ExternalReference: Boolean read Get_ExternalReference write Set_ExternalReference;
    property Company: IXMLSaleDocument_Company_Company read Get_Company;
  end;

{ IXMLSaleDocument_Company_Company }

  IXMLSaleDocument_Company_Company = interface(IXMLNode)
    ['{82E7B283-868E-42B9-BD83-04600B2278E8}']
    { Property Accessors }
    function Get_Master: Boolean;
    function Get_CompanyId: Integer;
    function Get_CompanyName: UnicodeString;
    function Get_TaxIdNumber: UnicodeString;
    function Get_FiscalCode: UnicodeString;
    function Get_Address: UnicodeString;
    function Get_ZIPCode: UnicodeString;
    function Get_City: UnicodeString;
    function Get_County: UnicodeString;
    function Get_ISOCountryCode: UnicodeString;
    function Get_NaturalPerson: UnicodeString;
    function Get_CBICode: UnicodeString;
    procedure Set_Master(const Value: Boolean);
    procedure Set_CompanyId(const Value: Integer);
    procedure Set_CompanyName(const Value: UnicodeString);
    procedure Set_TaxIdNumber(const Value: UnicodeString);
    procedure Set_FiscalCode(const Value: UnicodeString);
    procedure Set_Address(const Value: UnicodeString);
    procedure Set_ZIPCode(const Value: UnicodeString);
    procedure Set_City(const Value: UnicodeString);
    procedure Set_County(const Value: UnicodeString);
    procedure Set_ISOCountryCode(const Value: UnicodeString);
    procedure Set_NaturalPerson(const Value: UnicodeString);
    procedure Set_CBICode(const Value: UnicodeString);
    { Methods & Properties }
    property Master: Boolean read Get_Master write Set_Master;
    property CompanyId: Integer read Get_CompanyId write Set_CompanyId;
    property CompanyName: UnicodeString read Get_CompanyName write Set_CompanyName;
    property TaxIdNumber: UnicodeString read Get_TaxIdNumber write Set_TaxIdNumber;
    property FiscalCode: UnicodeString read Get_FiscalCode write Set_FiscalCode;
    property Address: UnicodeString read Get_Address write Set_Address;
    property ZIPCode: UnicodeString read Get_ZIPCode write Set_ZIPCode;
    property City: UnicodeString read Get_City write Set_City;
    property County: UnicodeString read Get_County write Set_County;
    property ISOCountryCode: UnicodeString read Get_ISOCountryCode write Set_ISOCountryCode;
    property NaturalPerson: UnicodeString read Get_NaturalPerson write Set_NaturalPerson;
    property CBICode: UnicodeString read Get_CBICode write Set_CBICode;
  end;

{ IXMLNotes }

  IXMLNotes = interface(IXMLNode)
    ['{BAC46FE2-40DC-45F1-B21D-A5307D138A55}']
    { Property Accessors }
    function Get_UpdateType: Integer;
    function Get_SaleDocId: IXMLNotes_SaleDocId;
    function Get_Notes: UnicodeString;
    procedure Set_UpdateType(const Value: Integer);
    procedure Set_Notes(const Value: UnicodeString);
    { Methods & Properties }
    property UpdateType: Integer read Get_UpdateType write Set_UpdateType;
    property SaleDocId: IXMLNotes_SaleDocId read Get_SaleDocId;
    property Notes: UnicodeString read Get_Notes write Set_Notes;
  end;

{ IXMLNotes_SaleDocId }

  IXMLNotes_SaleDocId = interface(IXMLNode)
    ['{F7F54954-729F-4C3F-A910-FF4478FD71DD}']
    { Property Accessors }
    function Get_PrimaryKey: Boolean;
    procedure Set_PrimaryKey(const Value: Boolean);
    { Methods & Properties }
    property PrimaryKey: Boolean read Get_PrimaryKey write Set_PrimaryKey;
  end;

{ IXMLDetail }

  IXMLDetail = interface(IXMLNodeCollection)
    ['{A28FB510-74D6-4FB8-985F-9F2C95DD6952}']
    { Property Accessors }
    function Get_UpdateType: Integer;
    function Get_DetailRow(const Index: Integer): IXMLDetailRow;
    procedure Set_UpdateType(const Value: Integer);
    { Methods & Properties }
    function Add: IXMLDetailRow;
    function Insert(const Index: Integer): IXMLDetailRow;
    property UpdateType: Integer read Get_UpdateType write Set_UpdateType;
    property DetailRow[const Index: Integer]: IXMLDetailRow read Get_DetailRow; default;
  end;

{ IXMLDetailRow }

  IXMLDetailRow = interface(IXMLNode)
    ['{4191642E-E597-4742-9B2E-E4F2A76CF675}']
    { Property Accessors }
    function Get_SaleDocId: IXMLDetailRow_SaleDocId;
    function Get_Line: IXMLDetailRow_Line;
    function Get_LineType: IXMLDetailRow_LineType;
    function Get_Description: UnicodeString;
    function Get_Item: UnicodeString;
    function Get_UnitsOfMeasure: IXMLDetailRow_UnitsOfMeasure;
    function Get_Qty: Double;
    function Get_UnitValue: Double;
    function Get_TaxableAmount: Double;
    function Get_TaxCode: IXMLDetailRow_TaxCode;
    function Get_TotalAmount: Double;
    function Get_Discount1: Double;
    function Get_Discount2: Double;
    function Get_DiscountFormula: UnicodeString;
    function Get_DiscountAmount: Double;
    function Get_NoOfPacks: SmallInt;
    function Get_PacksUoM: UnicodeString;
    function Get_GrossWeight: Double;
    function Get_NetWeight: Double;
    function Get_SaleOrdId: Integer;
    function Get_SaleOrdNo: UnicodeString;
    function Get_Packing: UnicodeString;
    function Get_CombinedNomenclature: UnicodeString;
    function Get_CountyOfOrigin: UnicodeString;
    function Get_DeliveryNote: IXMLDetailRow_DeliveryNote;
    function Get_ReferenceDocType: IXMLDetailRow_ReferenceDocType;
    function Get_CPACode: UnicodeString;
    procedure Set_Description(const Value: UnicodeString);
    procedure Set_Item(const Value: UnicodeString);
    procedure Set_Qty(const Value: Double);
    procedure Set_UnitValue(const Value: Double);
    procedure Set_TaxableAmount(const Value: Double);
    procedure Set_TotalAmount(const Value: Double);
    procedure Set_Discount1(const Value: Double);
    procedure Set_Discount2(const Value: Double);
    procedure Set_DiscountFormula(const Value: UnicodeString);
    procedure Set_DiscountAmount(const Value: Double);
    procedure Set_NoOfPacks(const Value: SmallInt);
    procedure Set_PacksUoM(const Value: UnicodeString);
    procedure Set_GrossWeight(const Value: Double);
    procedure Set_NetWeight(const Value: Double);
    procedure Set_SaleOrdId(const Value: Integer);
    procedure Set_SaleOrdNo(const Value: UnicodeString);
    procedure Set_Packing(const Value: UnicodeString);
    procedure Set_CombinedNomenclature(const Value: UnicodeString);
    procedure Set_CountyOfOrigin(const Value: UnicodeString);
    procedure Set_CPACode(const Value: UnicodeString);
    { Methods & Properties }
    property SaleDocId: IXMLDetailRow_SaleDocId read Get_SaleDocId;
    property Line: IXMLDetailRow_Line read Get_Line;
    property LineType: IXMLDetailRow_LineType read Get_LineType;
    property Description: UnicodeString read Get_Description write Set_Description;
    property Item: UnicodeString read Get_Item write Set_Item;
    property UnitsOfMeasure: IXMLDetailRow_UnitsOfMeasure read Get_UnitsOfMeasure;
    property Qty: Double read Get_Qty write Set_Qty;
    property UnitValue: Double read Get_UnitValue write Set_UnitValue;
    property TaxableAmount: Double read Get_TaxableAmount write Set_TaxableAmount;
    property TaxCode: IXMLDetailRow_TaxCode read Get_TaxCode;
    property TotalAmount: Double read Get_TotalAmount write Set_TotalAmount;
    property Discount1: Double read Get_Discount1 write Set_Discount1;
    property Discount2: Double read Get_Discount2 write Set_Discount2;
    property DiscountFormula: UnicodeString read Get_DiscountFormula write Set_DiscountFormula;
    property DiscountAmount: Double read Get_DiscountAmount write Set_DiscountAmount;
    property NoOfPacks: SmallInt read Get_NoOfPacks write Set_NoOfPacks;
    property PacksUoM: UnicodeString read Get_PacksUoM write Set_PacksUoM;
    property GrossWeight: Double read Get_GrossWeight write Set_GrossWeight;
    property NetWeight: Double read Get_NetWeight write Set_NetWeight;
    property SaleOrdId: Integer read Get_SaleOrdId write Set_SaleOrdId;
    property SaleOrdNo: UnicodeString read Get_SaleOrdNo write Set_SaleOrdNo;
    property Packing: UnicodeString read Get_Packing write Set_Packing;
    property CombinedNomenclature: UnicodeString read Get_CombinedNomenclature write Set_CombinedNomenclature;
    property CountyOfOrigin: UnicodeString read Get_CountyOfOrigin write Set_CountyOfOrigin;
    property DeliveryNote: IXMLDetailRow_DeliveryNote read Get_DeliveryNote;
    property ReferenceDocType: IXMLDetailRow_ReferenceDocType read Get_ReferenceDocType;
    property CPACode: UnicodeString read Get_CPACode write Set_CPACode;
  end;

{ IXMLDetailRow_SaleDocId }

  IXMLDetailRow_SaleDocId = interface(IXMLNode)
    ['{13152C8E-00CE-45B3-9F19-D2A257AF95EF}']
    { Property Accessors }
    function Get_PrimaryKey: Boolean;
    procedure Set_PrimaryKey(const Value: Boolean);
    { Methods & Properties }
    property PrimaryKey: Boolean read Get_PrimaryKey write Set_PrimaryKey;
  end;

{ IXMLDetailRow_Line }

  IXMLDetailRow_Line = interface(IXMLNode)
    ['{6F46FEAB-8A24-4907-9BF1-C0B750C9E70A}']
    { Property Accessors }
    function Get_PrimaryKey: Boolean;
    procedure Set_PrimaryKey(const Value: Boolean);
    { Methods & Properties }
    property PrimaryKey: Boolean read Get_PrimaryKey write Set_PrimaryKey;
  end;

{ IXMLDetailRow_LineType }

  IXMLDetailRow_LineType = interface(IXMLNode)
    ['{0CA71E9E-B50D-4345-958B-3377C1CFD758}']
    { Property Accessors }
    function Get_Enum: UnicodeString;
    function Get_EnumNameSpace: UnicodeString;
    procedure Set_Enum(const Value: UnicodeString);
    procedure Set_EnumNameSpace(const Value: UnicodeString);
    { Methods & Properties }
    property Enum: UnicodeString read Get_Enum write Set_Enum;
    property EnumNameSpace: UnicodeString read Get_EnumNameSpace write Set_EnumNameSpace;
  end;

{ IXMLDetailRow_UnitsOfMeasure }

  IXMLDetailRow_UnitsOfMeasure = interface(IXMLNode)
    ['{BCCB0A39-3E9E-49F9-B80D-2829F2BBB3B5}']
    { Property Accessors }
    function Get_ExternalReference: Boolean;
    function Get_UnitsOfMeasure: IXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure;
    procedure Set_ExternalReference(const Value: Boolean);
    { Methods & Properties }
    property ExternalReference: Boolean read Get_ExternalReference write Set_ExternalReference;
    property UnitsOfMeasure: IXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure read Get_UnitsOfMeasure;
  end;

{ IXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure }

  IXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure = interface(IXMLNode)
    ['{6D3A0AAF-14A3-43B7-B11C-48ACA3399488}']
    { Property Accessors }
    function Get_Master: Boolean;
    function Get_BaseUoM: UnicodeString;
    function Get_Description: UnicodeString;
    function Get_Symbol: UnicodeString;
    procedure Set_Master(const Value: Boolean);
    procedure Set_BaseUoM(const Value: UnicodeString);
    procedure Set_Description(const Value: UnicodeString);
    procedure Set_Symbol(const Value: UnicodeString);
    { Methods & Properties }
    property Master: Boolean read Get_Master write Set_Master;
    property BaseUoM: UnicodeString read Get_BaseUoM write Set_BaseUoM;
    property Description: UnicodeString read Get_Description write Set_Description;
    property Symbol: UnicodeString read Get_Symbol write Set_Symbol;
  end;

{ IXMLDetailRow_TaxCode }

  IXMLDetailRow_TaxCode = interface(IXMLNode)
    ['{FE2223A2-7F4D-4CDA-947B-743E2DE6924C}']
    { Property Accessors }
    function Get_ExternalReference: Boolean;
    function Get_TaxCode: IXMLDetailRow_TaxCode_TaxCode;
    procedure Set_ExternalReference(const Value: Boolean);
    { Methods & Properties }
    property ExternalReference: Boolean read Get_ExternalReference write Set_ExternalReference;
    property TaxCode: IXMLDetailRow_TaxCode_TaxCode read Get_TaxCode;
  end;

{ IXMLDetailRow_TaxCode_TaxCode }

  IXMLDetailRow_TaxCode_TaxCode = interface(IXMLNode)
    ['{6EA79A6B-BCEF-4FEC-82FC-31B00C8FCAEC}']
    { Property Accessors }
    function Get_Master: Boolean;
    function Get_TaxCode: UnicodeString;
    function Get_Description: UnicodeString;
    function Get_Perc: Double;
    procedure Set_Master(const Value: Boolean);
    procedure Set_TaxCode(const Value: UnicodeString);
    procedure Set_Description(const Value: UnicodeString);
    procedure Set_Perc(const Value: Double);
    { Methods & Properties }
    property Master: Boolean read Get_Master write Set_Master;
    property TaxCode: UnicodeString read Get_TaxCode write Set_TaxCode;
    property Description: UnicodeString read Get_Description write Set_Description;
    property Perc: Double read Get_Perc write Set_Perc;
  end;

{ IXMLDetailRow_DeliveryNote }

  IXMLDetailRow_DeliveryNote = interface(IXMLNode)
    ['{B7524E33-E526-4537-8BA3-477733383386}']
    { Property Accessors }
    function Get_ExternalReference: Boolean;
    function Get_SaleDocument: IXMLDetailRow_DeliveryNote_SaleDocument;
    procedure Set_ExternalReference(const Value: Boolean);
    { Methods & Properties }
    property ExternalReference: Boolean read Get_ExternalReference write Set_ExternalReference;
    property SaleDocument: IXMLDetailRow_DeliveryNote_SaleDocument read Get_SaleDocument;
  end;

{ IXMLDetailRow_DeliveryNote_SaleDocument }

  IXMLDetailRow_DeliveryNote_SaleDocument = interface(IXMLNode)
    ['{901DFCEC-8CCA-4DB1-8B18-39E57E15D54C}']
    { Property Accessors }
    function Get_Master: Boolean;
    function Get_DocNo: UnicodeString;
    function Get_DocumentDate: UnicodeString;
    function Get_SaleDocId: Integer;
    function Get_TBGuid: UnicodeString;
    procedure Set_Master(const Value: Boolean);
    procedure Set_DocNo(const Value: UnicodeString);
    procedure Set_DocumentDate(const Value: UnicodeString);
    procedure Set_SaleDocId(const Value: Integer);
    procedure Set_TBGuid(const Value: UnicodeString);
    { Methods & Properties }
    property Master: Boolean read Get_Master write Set_Master;
    property DocNo: UnicodeString read Get_DocNo write Set_DocNo;
    property DocumentDate: UnicodeString read Get_DocumentDate write Set_DocumentDate;
    property SaleDocId: Integer read Get_SaleDocId write Set_SaleDocId;
    property TBGuid: UnicodeString read Get_TBGuid write Set_TBGuid;
  end;

{ IXMLDetailRow_ReferenceDocType }

  IXMLDetailRow_ReferenceDocType = interface(IXMLNode)
    ['{39495388-9808-4F89-B45C-2A41677A22BE}']
    { Property Accessors }
    function Get_Enum: UnicodeString;
    function Get_EnumNameSpace: UnicodeString;
    procedure Set_Enum(const Value: UnicodeString);
    procedure Set_EnumNameSpace(const Value: UnicodeString);
    { Methods & Properties }
    property Enum: UnicodeString read Get_Enum write Set_Enum;
    property EnumNameSpace: UnicodeString read Get_EnumNameSpace write Set_EnumNameSpace;
  end;

{ IXMLTaxSummary }

  IXMLTaxSummary = interface(IXMLNodeCollection)
    ['{9B0B70D8-0C5C-4E86-8F13-9FDF2AF27461}']
    { Property Accessors }
    function Get_UpdateType: Integer;
    function Get_TaxSummaryRow(const Index: Integer): IXMLTaxSummaryRow;
    procedure Set_UpdateType(const Value: Integer);
    { Methods & Properties }
    function Add: IXMLTaxSummaryRow;
    function Insert(const Index: Integer): IXMLTaxSummaryRow;
    property UpdateType: Integer read Get_UpdateType write Set_UpdateType;
    property TaxSummaryRow[const Index: Integer]: IXMLTaxSummaryRow read Get_TaxSummaryRow; default;
  end;

{ IXMLTaxSummaryRow }

  IXMLTaxSummaryRow = interface(IXMLNode)
    ['{4B107F96-23CB-4996-A6B7-F3D56ABD8E5E}']
    { Property Accessors }
    function Get_SaleDocId: IXMLTaxSummaryRow_SaleDocId;
    function Get_TaxCode: IXMLTaxSummaryRow_TaxCode;
    function Get_TaxCodeSummaryRow: IXMLTaxSummaryRow_TaxCodeSummaryRow;
    function Get_TaxableAmount: Double;
    function Get_TaxAmount: Double;
    function Get_TotalAmount: Double;
    function Get_TaxableAmountDocCurr: Double;
    function Get_TaxAmountDocCurr: Double;
    function Get_TotalAmountDocCurr: Double;
    procedure Set_TaxableAmount(const Value: Double);
    procedure Set_TaxAmount(const Value: Double);
    procedure Set_TotalAmount(const Value: Double);
    procedure Set_TaxableAmountDocCurr(const Value: Double);
    procedure Set_TaxAmountDocCurr(const Value: Double);
    procedure Set_TotalAmountDocCurr(const Value: Double);
    { Methods & Properties }
    property SaleDocId: IXMLTaxSummaryRow_SaleDocId read Get_SaleDocId;
    property TaxCode: IXMLTaxSummaryRow_TaxCode read Get_TaxCode;
    property TaxCodeSummaryRow: IXMLTaxSummaryRow_TaxCodeSummaryRow read Get_TaxCodeSummaryRow;
    property TaxableAmount: Double read Get_TaxableAmount write Set_TaxableAmount;
    property TaxAmount: Double read Get_TaxAmount write Set_TaxAmount;
    property TotalAmount: Double read Get_TotalAmount write Set_TotalAmount;
    property TaxableAmountDocCurr: Double read Get_TaxableAmountDocCurr write Set_TaxableAmountDocCurr;
    property TaxAmountDocCurr: Double read Get_TaxAmountDocCurr write Set_TaxAmountDocCurr;
    property TotalAmountDocCurr: Double read Get_TotalAmountDocCurr write Set_TotalAmountDocCurr;
  end;

{ IXMLTaxSummaryRow_SaleDocId }

  IXMLTaxSummaryRow_SaleDocId = interface(IXMLNode)
    ['{9F6A0F59-6466-4D8F-BD20-37656B803EDC}']
    { Property Accessors }
    function Get_PrimaryKey: Boolean;
    procedure Set_PrimaryKey(const Value: Boolean);
    { Methods & Properties }
    property PrimaryKey: Boolean read Get_PrimaryKey write Set_PrimaryKey;
  end;

{ IXMLTaxSummaryRow_TaxCode }

  IXMLTaxSummaryRow_TaxCode = interface(IXMLNode)
    ['{B85397A1-6A94-48A2-9CC6-C338AD4BF7DC}']
    { Property Accessors }
    function Get_PrimaryKey: Boolean;
    procedure Set_PrimaryKey(const Value: Boolean);
    { Methods & Properties }
    property PrimaryKey: Boolean read Get_PrimaryKey write Set_PrimaryKey;
  end;

{ IXMLTaxSummaryRow_TaxCodeSummaryRow }

  IXMLTaxSummaryRow_TaxCodeSummaryRow = interface(IXMLNode)
    ['{E89B7C95-E99F-4ACB-B931-2C600E0CE321}']
    { Property Accessors }
    function Get_ExternalReference: Boolean;
    function Get_TaxCode: IXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode;
    procedure Set_ExternalReference(const Value: Boolean);
    { Methods & Properties }
    property ExternalReference: Boolean read Get_ExternalReference write Set_ExternalReference;
    property TaxCode: IXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode read Get_TaxCode;
  end;

{ IXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode }

  IXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode = interface(IXMLNode)
    ['{B985B21A-E59A-47AC-A489-685D307EC798}']
    { Property Accessors }
    function Get_Master: Boolean;
    function Get_TaxCode: UnicodeString;
    function Get_Description: UnicodeString;
    function Get_Perc: Double;
    procedure Set_Master(const Value: Boolean);
    procedure Set_TaxCode(const Value: UnicodeString);
    procedure Set_Description(const Value: UnicodeString);
    procedure Set_Perc(const Value: Double);
    { Methods & Properties }
    property Master: Boolean read Get_Master write Set_Master;
    property TaxCode: UnicodeString read Get_TaxCode write Set_TaxCode;
    property Description: UnicodeString read Get_Description write Set_Description;
    property Perc: Double read Get_Perc write Set_Perc;
  end;

{ IXMLCharges }

  IXMLCharges = interface(IXMLNode)
    ['{12FFA80D-6D8C-46E9-988D-67190DEDB6EE}']
    { Property Accessors }
    function Get_UpdateType: Integer;
    function Get_SaleDocId: IXMLCharges_SaleDocId;
    function Get_TaxableAmount: Double;
    function Get_TaxAmount: Double;
    function Get_TotalAmount: Double;
    function Get_GoodsAmount: Double;
    function Get_ServiceAmounts: Double;
    function Get_PayableAmount: Double;
    function Get_FreeSamples: Double;
    function Get_Discounts: Double;
    function Get_Allowances: Double;
    function Get_Advance: Double;
    function Get_PackagingCharges: Double;
    function Get_ShippingCharges: Double;
    function Get_StampsCharges: Double;
    function Get_CollectionCharges: Double;
    function Get_AdditionalCharges: Double;
    function Get_CashOnDeliveryCharges: Double;
    function Get_TotalAmountDocCurr: Double;
    function Get_TaxableAmountDocCurr: Double;
    function Get_TaxAmountDocCurr: Double;
    function Get_WithholdingTaxManagement: UnicodeString;
    function Get_ProfessionalsCash: Double;
    function Get_WithholdingTax: Double;
    function Get_PaymentTerm: IXMLCharges_PaymentTerm;
    function Get_AmountsWithWHTax: UnicodeString;
    procedure Set_UpdateType(const Value: Integer);
    procedure Set_TaxableAmount(const Value: Double);
    procedure Set_TaxAmount(const Value: Double);
    procedure Set_TotalAmount(const Value: Double);
    procedure Set_GoodsAmount(const Value: Double);
    procedure Set_ServiceAmounts(const Value: Double);
    procedure Set_PayableAmount(const Value: Double);
    procedure Set_FreeSamples(const Value: Double);
    procedure Set_Discounts(const Value: Double);
    procedure Set_Allowances(const Value: Double);
    procedure Set_Advance(const Value: Double);
    procedure Set_PackagingCharges(const Value: Double);
    procedure Set_ShippingCharges(const Value: Double);
    procedure Set_StampsCharges(const Value: Double);
    procedure Set_CollectionCharges(const Value: Double);
    procedure Set_AdditionalCharges(const Value: Double);
    procedure Set_CashOnDeliveryCharges(const Value: Double);
    procedure Set_TotalAmountDocCurr(const Value: Double);
    procedure Set_TaxableAmountDocCurr(const Value: Double);
    procedure Set_TaxAmountDocCurr(const Value: Double);
    procedure Set_WithholdingTaxManagement(const Value: UnicodeString);
    procedure Set_ProfessionalsCash(const Value: Double);
    procedure Set_WithholdingTax(const Value: Double);
    procedure Set_AmountsWithWHTax(const Value: UnicodeString);
    { Methods & Properties }
    property UpdateType: Integer read Get_UpdateType write Set_UpdateType;
    property SaleDocId: IXMLCharges_SaleDocId read Get_SaleDocId;
    property TaxableAmount: Double read Get_TaxableAmount write Set_TaxableAmount;
    property TaxAmount: Double read Get_TaxAmount write Set_TaxAmount;
    property TotalAmount: Double read Get_TotalAmount write Set_TotalAmount;
    property GoodsAmount: Double read Get_GoodsAmount write Set_GoodsAmount;
    property ServiceAmounts: Double read Get_ServiceAmounts write Set_ServiceAmounts;
    property PayableAmount: Double read Get_PayableAmount write Set_PayableAmount;
    property FreeSamples: Double read Get_FreeSamples write Set_FreeSamples;
    property Discounts: Double read Get_Discounts write Set_Discounts;
    property Allowances: Double read Get_Allowances write Set_Allowances;
    property Advance: Double read Get_Advance write Set_Advance;
    property PackagingCharges: Double read Get_PackagingCharges write Set_PackagingCharges;
    property ShippingCharges: Double read Get_ShippingCharges write Set_ShippingCharges;
    property StampsCharges: Double read Get_StampsCharges write Set_StampsCharges;
    property CollectionCharges: Double read Get_CollectionCharges write Set_CollectionCharges;
    property AdditionalCharges: Double read Get_AdditionalCharges write Set_AdditionalCharges;
    property CashOnDeliveryCharges: Double read Get_CashOnDeliveryCharges write Set_CashOnDeliveryCharges;
    property TotalAmountDocCurr: Double read Get_TotalAmountDocCurr write Set_TotalAmountDocCurr;
    property TaxableAmountDocCurr: Double read Get_TaxableAmountDocCurr write Set_TaxableAmountDocCurr;
    property TaxAmountDocCurr: Double read Get_TaxAmountDocCurr write Set_TaxAmountDocCurr;
    property WithholdingTaxManagement: UnicodeString read Get_WithholdingTaxManagement write Set_WithholdingTaxManagement;
    property ProfessionalsCash: Double read Get_ProfessionalsCash write Set_ProfessionalsCash;
    property WithholdingTax: Double read Get_WithholdingTax write Set_WithholdingTax;
    property PaymentTerm: IXMLCharges_PaymentTerm read Get_PaymentTerm;
    property AmountsWithWHTax: UnicodeString read Get_AmountsWithWHTax write Set_AmountsWithWHTax;
  end;

{ IXMLCharges_SaleDocId }

  IXMLCharges_SaleDocId = interface(IXMLNode)
    ['{2453AAF6-7232-4D1A-AE10-E179021F9319}']
    { Property Accessors }
    function Get_PrimaryKey: Boolean;
    procedure Set_PrimaryKey(const Value: Boolean);
    { Methods & Properties }
    property PrimaryKey: Boolean read Get_PrimaryKey write Set_PrimaryKey;
  end;

{ IXMLCharges_PaymentTerm }

  IXMLCharges_PaymentTerm = interface(IXMLNode)
    ['{B9B80416-97C2-4FA1-BE12-239F4E72879D}']
    { Property Accessors }
    function Get_Enum: UnicodeString;
    function Get_EnumNameSpace: UnicodeString;
    procedure Set_Enum(const Value: UnicodeString);
    procedure Set_EnumNameSpace(const Value: UnicodeString);
    { Methods & Properties }
    property Enum: UnicodeString read Get_Enum write Set_Enum;
    property EnumNameSpace: UnicodeString read Get_EnumNameSpace write Set_EnumNameSpace;
  end;

{ IXMLShipping }

  IXMLShipping = interface(IXMLNode)
    ['{A7BEE496-2F12-4EE3-8665-E551DD78DEB9}']
    { Property Accessors }
    function Get_UpdateType: Integer;
    function Get_SaleDocId: IXMLShipping_SaleDocId;
    function Get_NoOfPacks: SmallInt;
    function Get_NetWeight: Double;
    function Get_GrossWeight: Double;
    function Get_DepartureDate: UnicodeString;
    function Get_Transport: UnicodeString;
    function Get_PackageDescription: UnicodeString;
    procedure Set_UpdateType(const Value: Integer);
    procedure Set_NoOfPacks(const Value: SmallInt);
    procedure Set_NetWeight(const Value: Double);
    procedure Set_GrossWeight(const Value: Double);
    procedure Set_DepartureDate(const Value: UnicodeString);
    procedure Set_Transport(const Value: UnicodeString);
    procedure Set_PackageDescription(const Value: UnicodeString);
    { Methods & Properties }
    property UpdateType: Integer read Get_UpdateType write Set_UpdateType;
    property SaleDocId: IXMLShipping_SaleDocId read Get_SaleDocId;
    property NoOfPacks: SmallInt read Get_NoOfPacks write Set_NoOfPacks;
    property NetWeight: Double read Get_NetWeight write Set_NetWeight;
    property GrossWeight: Double read Get_GrossWeight write Set_GrossWeight;
    property DepartureDate: UnicodeString read Get_DepartureDate write Set_DepartureDate;
    property Transport: UnicodeString read Get_Transport write Set_Transport;
    property PackageDescription: UnicodeString read Get_PackageDescription write Set_PackageDescription;
  end;

{ IXMLShipping_SaleDocId }

  IXMLShipping_SaleDocId = interface(IXMLNode)
    ['{CCDA642E-6209-4B3D-B56C-0613ABB9FC1D}']
    { Property Accessors }
    function Get_PrimaryKey: Boolean;
    procedure Set_PrimaryKey(const Value: Boolean);
    { Methods & Properties }
    property PrimaryKey: Boolean read Get_PrimaryKey write Set_PrimaryKey;
  end;

{ IXMLPymtSchedule }

  IXMLPymtSchedule = interface(IXMLNodeCollection)
    ['{F76B82F2-7A16-438F-9190-4610E5A0E5AA}']
    { Property Accessors }
    function Get_UpdateType: Integer;
    function Get_PymtScheduleRow(const Index: Integer): IXMLPymtScheduleRow;
    procedure Set_UpdateType(const Value: Integer);
    { Methods & Properties }
    function Add: IXMLPymtScheduleRow;
    function Insert(const Index: Integer): IXMLPymtScheduleRow;
    property UpdateType: Integer read Get_UpdateType write Set_UpdateType;
    property PymtScheduleRow[const Index: Integer]: IXMLPymtScheduleRow read Get_PymtScheduleRow; default;
  end;

{ IXMLPymtScheduleRow }

  IXMLPymtScheduleRow = interface(IXMLNode)
    ['{06C21422-69B4-4DB2-8ABE-939DD48D0A36}']
    { Property Accessors }
    function Get_SaleDocId: IXMLPymtScheduleRow_SaleDocId;
    function Get_InstallmentNo: IXMLPymtScheduleRow_InstallmentNo;
    function Get_InstallmentType: IXMLPymtScheduleRow_InstallmentType;
    function Get_DueDate: UnicodeString;
    function Get_InstallmentAmount: Double;
    function Get_InstallmentTaxAmount: Double;
    procedure Set_DueDate(const Value: UnicodeString);
    procedure Set_InstallmentAmount(const Value: Double);
    procedure Set_InstallmentTaxAmount(const Value: Double);
    { Methods & Properties }
    property SaleDocId: IXMLPymtScheduleRow_SaleDocId read Get_SaleDocId;
    property InstallmentNo: IXMLPymtScheduleRow_InstallmentNo read Get_InstallmentNo;
    property InstallmentType: IXMLPymtScheduleRow_InstallmentType read Get_InstallmentType;
    property DueDate: UnicodeString read Get_DueDate write Set_DueDate;
    property InstallmentAmount: Double read Get_InstallmentAmount write Set_InstallmentAmount;
    property InstallmentTaxAmount: Double read Get_InstallmentTaxAmount write Set_InstallmentTaxAmount;
  end;

{ IXMLPymtScheduleRow_SaleDocId }

  IXMLPymtScheduleRow_SaleDocId = interface(IXMLNode)
    ['{DE84E0F0-74A4-4764-87BC-AC1DDD50E076}']
    { Property Accessors }
    function Get_PrimaryKey: Boolean;
    procedure Set_PrimaryKey(const Value: Boolean);
    { Methods & Properties }
    property PrimaryKey: Boolean read Get_PrimaryKey write Set_PrimaryKey;
  end;

{ IXMLPymtScheduleRow_InstallmentNo }

  IXMLPymtScheduleRow_InstallmentNo = interface(IXMLNode)
    ['{EDAC2EA0-C851-43D5-8B97-6620481127DF}']
    { Property Accessors }
    function Get_PrimaryKey: Boolean;
    procedure Set_PrimaryKey(const Value: Boolean);
    { Methods & Properties }
    property PrimaryKey: Boolean read Get_PrimaryKey write Set_PrimaryKey;
  end;

{ IXMLPymtScheduleRow_InstallmentType }

  IXMLPymtScheduleRow_InstallmentType = interface(IXMLNode)
    ['{0BC83261-F2CA-40DA-BD78-754B0E155269}']
    { Property Accessors }
    function Get_Enum: UnicodeString;
    function Get_EnumNameSpace: UnicodeString;
    procedure Set_Enum(const Value: UnicodeString);
    procedure Set_EnumNameSpace(const Value: UnicodeString);
    { Methods & Properties }
    property Enum: UnicodeString read Get_Enum write Set_Enum;
    property EnumNameSpace: UnicodeString read Get_EnumNameSpace write Set_EnumNameSpace;
  end;

{ IXMLDiagnostic }

  IXMLDiagnostic = interface(IXMLNode)
    ['{8F49C359-4CDE-4563-A27C-755DCACA5EDD}']
    { Property Accessors }
    function Get_Errors: IXMLDiagnostic_Errors;
    function Get_Warnings: IXMLDiagnostic_Warnings;
    { Methods & Properties }
    property Errors: IXMLDiagnostic_Errors read Get_Errors;
    property Warnings: IXMLDiagnostic_Warnings read Get_Warnings;
  end;

{ IXMLDiagnostic_Errors }

  IXMLDiagnostic_Errors = interface(IXMLNodeCollection)
    ['{A420AA1B-AA81-45A0-82BE-5BF92DB72B9B}']
    { Property Accessors }
    function Get_Error(const Index: Integer): IXMLDiagnostic_Errors_Error;
    { Methods & Properties }
    function Add: IXMLDiagnostic_Errors_Error;
    function Insert(const Index: Integer): IXMLDiagnostic_Errors_Error;
    property Error[const Index: Integer]: IXMLDiagnostic_Errors_Error read Get_Error; default;
  end;

{ IXMLDiagnostic_Errors_Error }

  IXMLDiagnostic_Errors_Error = interface(IXMLNode)
    ['{4755B653-21F4-4DCC-9746-453D697579F3}']
    { Property Accessors }
    function Get_Code: Integer;
    function Get_Source: UnicodeString;
    function Get_Message: UnicodeString;
    procedure Set_Code(const Value: Integer);
    procedure Set_Source(const Value: UnicodeString);
    procedure Set_Message(const Value: UnicodeString);
    { Methods & Properties }
    property Code: Integer read Get_Code write Set_Code;
    property Source: UnicodeString read Get_Source write Set_Source;
    property Message: UnicodeString read Get_Message write Set_Message;
  end;

{ IXMLDiagnostic_Warnings }

  IXMLDiagnostic_Warnings = interface(IXMLNodeCollection)
    ['{10095A1E-1991-4625-B0AC-F0D021309A76}']
    { Property Accessors }
    function Get_Warning(const Index: Integer): IXMLDiagnostic_Warnings_Warning;
    { Methods & Properties }
    function Add: IXMLDiagnostic_Warnings_Warning;
    function Insert(const Index: Integer): IXMLDiagnostic_Warnings_Warning;
    property Warning[const Index: Integer]: IXMLDiagnostic_Warnings_Warning read Get_Warning; default;
  end;

{ IXMLDiagnostic_Warnings_Warning }

  IXMLDiagnostic_Warnings_Warning = interface(IXMLNode)
    ['{3FFDD92A-6DAD-43DC-ADFF-0A0B353DC30F}']
    { Property Accessors }
    function Get_Code: Integer;
    function Get_Source: UnicodeString;
    function Get_Message: UnicodeString;
    procedure Set_Code(const Value: Integer);
    procedure Set_Source(const Value: UnicodeString);
    procedure Set_Message(const Value: UnicodeString);
    { Methods & Properties }
    property Code: Integer read Get_Code write Set_Code;
    property Source: UnicodeString read Get_Source write Set_Source;
    property Message: UnicodeString read Get_Message write Set_Message;
  end;

{ Forward Decls }

  TXMLInvoice = class;
  TXMLData = class;
  TXMLSaleDocument = class;
  TXMLSaleDocument_DocumentType = class;
  TXMLSaleDocument_CustSuppType = class;
  TXMLSaleDocument_CustSupp = class;
  TXMLSaleDocument_CustSupp_CustomersSuppliers = class;
  TXMLSaleDocument_CustSupp_OtherBranches = class;
  TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow = class;
  TXMLSaleDocument_CustSupp_Options = class;
  TXMLSaleDocument_PymtTerm = class;
  TXMLSaleDocument_PymtTerm_PaymentTerms = class;
  TXMLSaleDocument_CustomerBank = class;
  TXMLSaleDocument_CustomerBank_Banks = class;
  TXMLSaleDocument_CompanyBank = class;
  TXMLSaleDocument_CompanyBank_Banks = class;
  TXMLSaleDocument_CompanyBank_BanksCAs = class;
  TXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow = class;
  TXMLSaleDocument_CompanyBank_BillsCAs = class;
  TXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow = class;
  TXMLSaleDocument_SaleDocId = class;
  TXMLSaleDocument_Company = class;
  TXMLSaleDocument_Company_Company = class;
  TXMLNotes = class;
  TXMLNotes_SaleDocId = class;
  TXMLDetail = class;
  TXMLDetailRow = class;
  TXMLDetailRow_SaleDocId = class;
  TXMLDetailRow_Line = class;
  TXMLDetailRow_LineType = class;
  TXMLDetailRow_UnitsOfMeasure = class;
  TXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure = class;
  TXMLDetailRow_TaxCode = class;
  TXMLDetailRow_TaxCode_TaxCode = class;
  TXMLDetailRow_DeliveryNote = class;
  TXMLDetailRow_DeliveryNote_SaleDocument = class;
  TXMLDetailRow_ReferenceDocType = class;
  TXMLTaxSummary = class;
  TXMLTaxSummaryRow = class;
  TXMLTaxSummaryRow_SaleDocId = class;
  TXMLTaxSummaryRow_TaxCode = class;
  TXMLTaxSummaryRow_TaxCodeSummaryRow = class;
  TXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode = class;
  TXMLCharges = class;
  TXMLCharges_SaleDocId = class;
  TXMLCharges_PaymentTerm = class;
  TXMLShipping = class;
  TXMLShipping_SaleDocId = class;
  TXMLPymtSchedule = class;
  TXMLPymtScheduleRow = class;
  TXMLPymtScheduleRow_SaleDocId = class;
  TXMLPymtScheduleRow_InstallmentNo = class;
  TXMLPymtScheduleRow_InstallmentType = class;
  TXMLDiagnostic = class;
  TXMLDiagnostic_Errors = class;
  TXMLDiagnostic_Errors_Error = class;
  TXMLDiagnostic_Warnings = class;
  TXMLDiagnostic_Warnings_Warning = class;

{ TXMLInvoice }

  TXMLInvoice = class(TXMLNode, IXMLInvoice)
  protected
    { IXMLInvoice }
    function Get_TbNamespace: UnicodeString;
    function Get_XTechProfile: UnicodeString;
    function Get_Postable: Boolean;
    function Get_PostBack: Boolean;
    function Get_Data: IXMLData;
    function Get_Diagnostic: IXMLDiagnostic;
    procedure Set_TbNamespace(const Value: UnicodeString);
    procedure Set_XTechProfile(const Value: UnicodeString);
    procedure Set_Postable(const Value: Boolean);
    procedure Set_PostBack(const Value: Boolean);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLData }

  TXMLData = class(TXMLNode, IXMLData)
  protected
    { IXMLData }
    function Get_SaleDocument: IXMLSaleDocument;
    function Get_Notes: IXMLNotes;
    function Get_Detail: IXMLDetail;
    function Get_TaxSummary: IXMLTaxSummary;
    function Get_Charges: IXMLCharges;
    function Get_Shipping: IXMLShipping;
    function Get_PymtSchedule: IXMLPymtSchedule;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSaleDocument }

  TXMLSaleDocument = class(TXMLNode, IXMLSaleDocument)
  protected
    { IXMLSaleDocument }
    function Get_Master: Boolean;
    function Get_DocumentType: IXMLSaleDocument_DocumentType;
    function Get_DocNo: UnicodeString;
    function Get_DocumentDate: UnicodeString;
    function Get_CustSuppType: IXMLSaleDocument_CustSuppType;
    function Get_CustSupp: IXMLSaleDocument_CustSupp;
    function Get_Language: UnicodeString;
    function Get_OurReference: UnicodeString;
    function Get_YourReference: UnicodeString;
    function Get_PymtTerm: IXMLSaleDocument_PymtTerm;
    function Get_CustomerBank: IXMLSaleDocument_CustomerBank;
    function Get_CompanyBank: IXMLSaleDocument_CompanyBank;
    function Get_SendDocumentsTo: UnicodeString;
    function Get_Currency: UnicodeString;
    function Get_Fixing: Double;
    function Get_SaleDocId: IXMLSaleDocument_SaleDocId;
    function Get_Company: IXMLSaleDocument_Company;
    function Get_TBGuid: UnicodeString;
    procedure Set_Master(const Value: Boolean);
    procedure Set_DocNo(const Value: UnicodeString);
    procedure Set_DocumentDate(const Value: UnicodeString);
    procedure Set_Language(const Value: UnicodeString);
    procedure Set_OurReference(const Value: UnicodeString);
    procedure Set_YourReference(const Value: UnicodeString);
    procedure Set_SendDocumentsTo(const Value: UnicodeString);
    procedure Set_Currency(const Value: UnicodeString);
    procedure Set_Fixing(const Value: Double);
    procedure Set_TBGuid(const Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSaleDocument_DocumentType }

  TXMLSaleDocument_DocumentType = class(TXMLNode, IXMLSaleDocument_DocumentType)
  protected
    { IXMLSaleDocument_DocumentType }
    function Get_Enum: UnicodeString;
    function Get_EnumNameSpace: UnicodeString;
    procedure Set_Enum(const Value: UnicodeString);
    procedure Set_EnumNameSpace(const Value: UnicodeString);
  end;

{ TXMLSaleDocument_CustSuppType }

  TXMLSaleDocument_CustSuppType = class(TXMLNode, IXMLSaleDocument_CustSuppType)
  protected
    { IXMLSaleDocument_CustSuppType }
    function Get_Enum: UnicodeString;
    function Get_EnumNameSpace: UnicodeString;
    procedure Set_Enum(const Value: UnicodeString);
    procedure Set_EnumNameSpace(const Value: UnicodeString);
  end;

{ TXMLSaleDocument_CustSupp }

  TXMLSaleDocument_CustSupp = class(TXMLNode, IXMLSaleDocument_CustSupp)
  protected
    { IXMLSaleDocument_CustSupp }
    function Get_ExternalReference: Boolean;
    function Get_CustomersSuppliers: IXMLSaleDocument_CustSupp_CustomersSuppliers;
    function Get_OtherBranches: IXMLSaleDocument_CustSupp_OtherBranches;
    function Get_Options: IXMLSaleDocument_CustSupp_Options;
    procedure Set_ExternalReference(const Value: Boolean);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSaleDocument_CustSupp_CustomersSuppliers }

  TXMLSaleDocument_CustSupp_CustomersSuppliers = class(TXMLNode, IXMLSaleDocument_CustSupp_CustomersSuppliers)
  protected
    { IXMLSaleDocument_CustSupp_CustomersSuppliers }
    function Get_Master: Boolean;
    function Get_CustSuppType: UnicodeString;
    function Get_CustSupp: UnicodeString;
    function Get_CompanyName: UnicodeString;
    function Get_TaxIdNumber: UnicodeString;
    function Get_FiscalCode: UnicodeString;
    function Get_Address: UnicodeString;
    function Get_ZIPCode: UnicodeString;
    function Get_City: UnicodeString;
    function Get_County: UnicodeString;
    function Get_Country: UnicodeString;
    function Get_Telephone1: UnicodeString;
    function Get_Fax: UnicodeString;
    function Get_ISOCountryCode: UnicodeString;
    function Get_NaturalPerson: UnicodeString;
    function Get_IBAN: UnicodeString;
    function Get_ExternalCode: UnicodeString;
    function Get_CBICode: UnicodeString;
    procedure Set_Master(const Value: Boolean);
    procedure Set_CustSuppType(const Value: UnicodeString);
    procedure Set_CustSupp(const Value: UnicodeString);
    procedure Set_CompanyName(const Value: UnicodeString);
    procedure Set_TaxIdNumber(const Value: UnicodeString);
    procedure Set_FiscalCode(const Value: UnicodeString);
    procedure Set_Address(const Value: UnicodeString);
    procedure Set_ZIPCode(const Value: UnicodeString);
    procedure Set_City(const Value: UnicodeString);
    procedure Set_County(const Value: UnicodeString);
    procedure Set_Country(const Value: UnicodeString);
    procedure Set_Telephone1(const Value: UnicodeString);
    procedure Set_Fax(const Value: UnicodeString);
    procedure Set_ISOCountryCode(const Value: UnicodeString);
    procedure Set_NaturalPerson(const Value: UnicodeString);
    procedure Set_IBAN(const Value: UnicodeString);
    procedure Set_ExternalCode(const Value: UnicodeString);
    procedure Set_CBICode(const Value: UnicodeString);
  end;

{ TXMLSaleDocument_CustSupp_OtherBranches }

  TXMLSaleDocument_CustSupp_OtherBranches = class(TXMLNodeCollection, IXMLSaleDocument_CustSupp_OtherBranches)
  protected
    { IXMLSaleDocument_CustSupp_OtherBranches }
    function Get_OtherBranchesRow(const Index: Integer): IXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow;
    function Add: IXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow;
    function Insert(const Index: Integer): IXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow }

  TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow = class(TXMLNode, IXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow)
  protected
    { IXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow }
    function Get_CustSuppType: UnicodeString;
    function Get_CustSupp: UnicodeString;
    function Get_Branch: UnicodeString;
    function Get_CompanyName: UnicodeString;
    function Get_Address: UnicodeString;
    function Get_ZIPCode: UnicodeString;
    function Get_City: UnicodeString;
    function Get_County: UnicodeString;
    function Get_Country: UnicodeString;
    function Get_ISOCountryCode: UnicodeString;
    procedure Set_CustSuppType(const Value: UnicodeString);
    procedure Set_CustSupp(const Value: UnicodeString);
    procedure Set_Branch(const Value: UnicodeString);
    procedure Set_CompanyName(const Value: UnicodeString);
    procedure Set_Address(const Value: UnicodeString);
    procedure Set_ZIPCode(const Value: UnicodeString);
    procedure Set_City(const Value: UnicodeString);
    procedure Set_County(const Value: UnicodeString);
    procedure Set_Country(const Value: UnicodeString);
    procedure Set_ISOCountryCode(const Value: UnicodeString);
  end;

{ TXMLSaleDocument_CustSupp_Options }

  TXMLSaleDocument_CustSupp_Options = class(TXMLNode, IXMLSaleDocument_CustSupp_Options)
  protected
    { IXMLSaleDocument_CustSupp_Options }
    function Get_CustSuppType: UnicodeString;
    function Get_Customer: UnicodeString;
    function Get_ExemptFromTax: UnicodeString;
    procedure Set_CustSuppType(const Value: UnicodeString);
    procedure Set_Customer(const Value: UnicodeString);
    procedure Set_ExemptFromTax(const Value: UnicodeString);
  end;

{ TXMLSaleDocument_PymtTerm }

  TXMLSaleDocument_PymtTerm = class(TXMLNode, IXMLSaleDocument_PymtTerm)
  protected
    { IXMLSaleDocument_PymtTerm }
    function Get_ExternalReference: Boolean;
    function Get_PaymentTerms: IXMLSaleDocument_PymtTerm_PaymentTerms;
    procedure Set_ExternalReference(const Value: Boolean);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSaleDocument_PymtTerm_PaymentTerms }

  TXMLSaleDocument_PymtTerm_PaymentTerms = class(TXMLNode, IXMLSaleDocument_PymtTerm_PaymentTerms)
  protected
    { IXMLSaleDocument_PymtTerm_PaymentTerms }
    function Get_Master: Boolean;
    function Get_Payment: UnicodeString;
    function Get_Description: UnicodeString;
    procedure Set_Master(const Value: Boolean);
    procedure Set_Payment(const Value: UnicodeString);
    procedure Set_Description(const Value: UnicodeString);
  end;

{ TXMLSaleDocument_CustomerBank }

  TXMLSaleDocument_CustomerBank = class(TXMLNode, IXMLSaleDocument_CustomerBank)
  protected
    { IXMLSaleDocument_CustomerBank }
    function Get_ExternalReference: Boolean;
    function Get_Banks: IXMLSaleDocument_CustomerBank_Banks;
    procedure Set_ExternalReference(const Value: Boolean);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSaleDocument_CustomerBank_Banks }

  TXMLSaleDocument_CustomerBank_Banks = class(TXMLNode, IXMLSaleDocument_CustomerBank_Banks)
  protected
    { IXMLSaleDocument_CustomerBank_Banks }
    function Get_Master: Boolean;
    function Get_Bank: UnicodeString;
    function Get_IsACompanyBank: UnicodeString;
    function Get_Description: UnicodeString;
    function Get_Swift: UnicodeString;
    procedure Set_Master(const Value: Boolean);
    procedure Set_Bank(const Value: UnicodeString);
    procedure Set_IsACompanyBank(const Value: UnicodeString);
    procedure Set_Description(const Value: UnicodeString);
    procedure Set_Swift(const Value: UnicodeString);
  end;

{ TXMLSaleDocument_CompanyBank }

  TXMLSaleDocument_CompanyBank = class(TXMLNode, IXMLSaleDocument_CompanyBank)
  protected
    { IXMLSaleDocument_CompanyBank }
    function Get_ExternalReference: Boolean;
    function Get_Banks: IXMLSaleDocument_CompanyBank_Banks;
    function Get_BanksCAs: IXMLSaleDocument_CompanyBank_BanksCAs;
    function Get_BillsCAs: IXMLSaleDocument_CompanyBank_BillsCAs;
    procedure Set_ExternalReference(const Value: Boolean);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSaleDocument_CompanyBank_Banks }

  TXMLSaleDocument_CompanyBank_Banks = class(TXMLNode, IXMLSaleDocument_CompanyBank_Banks)
  protected
    { IXMLSaleDocument_CompanyBank_Banks }
    function Get_Master: Boolean;
    function Get_Bank: UnicodeString;
    function Get_IsACompanyBank: UnicodeString;
    function Get_Account: UnicodeString;
    function Get_Swift: UnicodeString;
    function Get_PreferredCA: UnicodeString;
    procedure Set_Master(const Value: Boolean);
    procedure Set_Bank(const Value: UnicodeString);
    procedure Set_IsACompanyBank(const Value: UnicodeString);
    procedure Set_Account(const Value: UnicodeString);
    procedure Set_Swift(const Value: UnicodeString);
    procedure Set_PreferredCA(const Value: UnicodeString);
  end;

{ TXMLSaleDocument_CompanyBank_BanksCAs }

  TXMLSaleDocument_CompanyBank_BanksCAs = class(TXMLNodeCollection, IXMLSaleDocument_CompanyBank_BanksCAs)
  protected
    { IXMLSaleDocument_CompanyBank_BanksCAs }
    function Get_BanksCAsRow(const Index: Integer): IXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow;
    function Add: IXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow;
    function Insert(const Index: Integer): IXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow }

  TXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow = class(TXMLNode, IXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow)
  protected
    { IXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow }
    function Get_Bank: UnicodeString;
    function Get_IsACompanyBank: UnicodeString;
    function Get_CA: UnicodeString;
    function Get_IBAN: UnicodeString;
    function Get_Presentation: UnicodeString;
    procedure Set_Bank(const Value: UnicodeString);
    procedure Set_IsACompanyBank(const Value: UnicodeString);
    procedure Set_CA(const Value: UnicodeString);
    procedure Set_IBAN(const Value: UnicodeString);
    procedure Set_Presentation(const Value: UnicodeString);
  end;

{ TXMLSaleDocument_CompanyBank_BillsCAs }

  TXMLSaleDocument_CompanyBank_BillsCAs = class(TXMLNodeCollection, IXMLSaleDocument_CompanyBank_BillsCAs)
  protected
    { IXMLSaleDocument_CompanyBank_BillsCAs }
    function Get_BillsCAsRow(const Index: Integer): IXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow;
    function Add: IXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow;
    function Insert(const Index: Integer): IXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow }

  TXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow = class(TXMLNode, IXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow)
  protected
    { IXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow }
    function Get_Bank: UnicodeString;
    function Get_IsACompanyBank: UnicodeString;
    function Get_CA: UnicodeString;
    function Get_IBAN: UnicodeString;
    function Get_Presentation: UnicodeString;
    procedure Set_Bank(const Value: UnicodeString);
    procedure Set_IsACompanyBank(const Value: UnicodeString);
    procedure Set_CA(const Value: UnicodeString);
    procedure Set_IBAN(const Value: UnicodeString);
    procedure Set_Presentation(const Value: UnicodeString);
  end;

{ TXMLSaleDocument_SaleDocId }

  TXMLSaleDocument_SaleDocId = class(TXMLNode, IXMLSaleDocument_SaleDocId)
  protected
    { IXMLSaleDocument_SaleDocId }
    function Get_PrimaryKey: Boolean;
    procedure Set_PrimaryKey(const Value: Boolean);
  end;

{ TXMLSaleDocument_Company }

  TXMLSaleDocument_Company = class(TXMLNode, IXMLSaleDocument_Company)
  protected
    { IXMLSaleDocument_Company }
    function Get_ExternalReference: Boolean;
    function Get_Company: IXMLSaleDocument_Company_Company;
    procedure Set_ExternalReference(const Value: Boolean);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSaleDocument_Company_Company }

  TXMLSaleDocument_Company_Company = class(TXMLNode, IXMLSaleDocument_Company_Company)
  protected
    { IXMLSaleDocument_Company_Company }
    function Get_Master: Boolean;
    function Get_CompanyId: Integer;
    function Get_CompanyName: UnicodeString;
    function Get_TaxIdNumber: UnicodeString;
    function Get_FiscalCode: UnicodeString;
    function Get_Address: UnicodeString;
    function Get_ZIPCode: UnicodeString;
    function Get_City: UnicodeString;
    function Get_County: UnicodeString;
    function Get_ISOCountryCode: UnicodeString;
    function Get_NaturalPerson: UnicodeString;
    function Get_CBICode: UnicodeString;
    procedure Set_Master(const Value: Boolean);
    procedure Set_CompanyId(const Value: Integer);
    procedure Set_CompanyName(const Value: UnicodeString);
    procedure Set_TaxIdNumber(const Value: UnicodeString);
    procedure Set_FiscalCode(const Value: UnicodeString);
    procedure Set_Address(const Value: UnicodeString);
    procedure Set_ZIPCode(const Value: UnicodeString);
    procedure Set_City(const Value: UnicodeString);
    procedure Set_County(const Value: UnicodeString);
    procedure Set_ISOCountryCode(const Value: UnicodeString);
    procedure Set_NaturalPerson(const Value: UnicodeString);
    procedure Set_CBICode(const Value: UnicodeString);
  end;

{ TXMLNotes }

  TXMLNotes = class(TXMLNode, IXMLNotes)
  protected
    { IXMLNotes }
    function Get_UpdateType: Integer;
    function Get_SaleDocId: IXMLNotes_SaleDocId;
    function Get_Notes: UnicodeString;
    procedure Set_UpdateType(const Value: Integer);
    procedure Set_Notes(const Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLNotes_SaleDocId }

  TXMLNotes_SaleDocId = class(TXMLNode, IXMLNotes_SaleDocId)
  protected
    { IXMLNotes_SaleDocId }
    function Get_PrimaryKey: Boolean;
    procedure Set_PrimaryKey(const Value: Boolean);
  end;

{ TXMLDetail }

  TXMLDetail = class(TXMLNodeCollection, IXMLDetail)
  protected
    { IXMLDetail }
    function Get_UpdateType: Integer;
    function Get_DetailRow(const Index: Integer): IXMLDetailRow;
    procedure Set_UpdateType(const Value: Integer);
    function Add: IXMLDetailRow;
    function Insert(const Index: Integer): IXMLDetailRow;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDetailRow }

  TXMLDetailRow = class(TXMLNode, IXMLDetailRow)
  protected
    { IXMLDetailRow }
    function Get_SaleDocId: IXMLDetailRow_SaleDocId;
    function Get_Line: IXMLDetailRow_Line;
    function Get_LineType: IXMLDetailRow_LineType;
    function Get_Description: UnicodeString;
    function Get_Item: UnicodeString;
    function Get_UnitsOfMeasure: IXMLDetailRow_UnitsOfMeasure;
    function Get_Qty: Double;
    function Get_UnitValue: Double;
    function Get_TaxableAmount: Double;
    function Get_TaxCode: IXMLDetailRow_TaxCode;
    function Get_TotalAmount: Double;
    function Get_Discount1: Double;
    function Get_Discount2: Double;
    function Get_DiscountFormula: UnicodeString;
    function Get_DiscountAmount: Double;
    function Get_NoOfPacks: SmallInt;
    function Get_PacksUoM: UnicodeString;
    function Get_GrossWeight: Double;
    function Get_NetWeight: Double;
    function Get_SaleOrdId: Integer;
    function Get_SaleOrdNo: UnicodeString;
    function Get_Packing: UnicodeString;
    function Get_CombinedNomenclature: UnicodeString;
    function Get_CountyOfOrigin: UnicodeString;
    function Get_DeliveryNote: IXMLDetailRow_DeliveryNote;
    function Get_ReferenceDocType: IXMLDetailRow_ReferenceDocType;
    function Get_CPACode: UnicodeString;
    procedure Set_Description(const Value: UnicodeString);
    procedure Set_Item(const Value: UnicodeString);
    procedure Set_Qty(const Value: Double);
    procedure Set_UnitValue(const Value: Double);
    procedure Set_TaxableAmount(const Value: Double);
    procedure Set_TotalAmount(const Value: Double);
    procedure Set_Discount1(const Value: Double);
    procedure Set_Discount2(const Value: Double);
    procedure Set_DiscountFormula(const Value: UnicodeString);
    procedure Set_DiscountAmount(const Value: Double);
    procedure Set_NoOfPacks(const Value: SmallInt);
    procedure Set_PacksUoM(const Value: UnicodeString);
    procedure Set_GrossWeight(const Value: Double);
    procedure Set_NetWeight(const Value: Double);
    procedure Set_SaleOrdId(const Value: Integer);
    procedure Set_SaleOrdNo(const Value: UnicodeString);
    procedure Set_Packing(const Value: UnicodeString);
    procedure Set_CombinedNomenclature(const Value: UnicodeString);
    procedure Set_CountyOfOrigin(const Value: UnicodeString);
    procedure Set_CPACode(const Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDetailRow_SaleDocId }

  TXMLDetailRow_SaleDocId = class(TXMLNode, IXMLDetailRow_SaleDocId)
  protected
    { IXMLDetailRow_SaleDocId }
    function Get_PrimaryKey: Boolean;
    procedure Set_PrimaryKey(const Value: Boolean);
  end;

{ TXMLDetailRow_Line }

  TXMLDetailRow_Line = class(TXMLNode, IXMLDetailRow_Line)
  protected
    { IXMLDetailRow_Line }
    function Get_PrimaryKey: Boolean;
    procedure Set_PrimaryKey(const Value: Boolean);
  end;

{ TXMLDetailRow_LineType }

  TXMLDetailRow_LineType = class(TXMLNode, IXMLDetailRow_LineType)
  protected
    { IXMLDetailRow_LineType }
    function Get_Enum: UnicodeString;
    function Get_EnumNameSpace: UnicodeString;
    procedure Set_Enum(const Value: UnicodeString);
    procedure Set_EnumNameSpace(const Value: UnicodeString);
  end;

{ TXMLDetailRow_UnitsOfMeasure }

  TXMLDetailRow_UnitsOfMeasure = class(TXMLNode, IXMLDetailRow_UnitsOfMeasure)
  protected
    { IXMLDetailRow_UnitsOfMeasure }
    function Get_ExternalReference: Boolean;
    function Get_UnitsOfMeasure: IXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure;
    procedure Set_ExternalReference(const Value: Boolean);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure }

  TXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure = class(TXMLNode, IXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure)
  protected
    { IXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure }
    function Get_Master: Boolean;
    function Get_BaseUoM: UnicodeString;
    function Get_Description: UnicodeString;
    function Get_Symbol: UnicodeString;
    procedure Set_Master(const Value: Boolean);
    procedure Set_BaseUoM(const Value: UnicodeString);
    procedure Set_Description(const Value: UnicodeString);
    procedure Set_Symbol(const Value: UnicodeString);
  end;

{ TXMLDetailRow_TaxCode }

  TXMLDetailRow_TaxCode = class(TXMLNode, IXMLDetailRow_TaxCode)
  protected
    { IXMLDetailRow_TaxCode }
    function Get_ExternalReference: Boolean;
    function Get_TaxCode: IXMLDetailRow_TaxCode_TaxCode;
    procedure Set_ExternalReference(const Value: Boolean);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDetailRow_TaxCode_TaxCode }

  TXMLDetailRow_TaxCode_TaxCode = class(TXMLNode, IXMLDetailRow_TaxCode_TaxCode)
  protected
    { IXMLDetailRow_TaxCode_TaxCode }
    function Get_Master: Boolean;
    function Get_TaxCode: UnicodeString;
    function Get_Description: UnicodeString;
    function Get_Perc: Double;
    procedure Set_Master(const Value: Boolean);
    procedure Set_TaxCode(const Value: UnicodeString);
    procedure Set_Description(const Value: UnicodeString);
    procedure Set_Perc(const Value: Double);
  end;

{ TXMLDetailRow_DeliveryNote }

  TXMLDetailRow_DeliveryNote = class(TXMLNode, IXMLDetailRow_DeliveryNote)
  protected
    { IXMLDetailRow_DeliveryNote }
    function Get_ExternalReference: Boolean;
    function Get_SaleDocument: IXMLDetailRow_DeliveryNote_SaleDocument;
    procedure Set_ExternalReference(const Value: Boolean);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDetailRow_DeliveryNote_SaleDocument }

  TXMLDetailRow_DeliveryNote_SaleDocument = class(TXMLNode, IXMLDetailRow_DeliveryNote_SaleDocument)
  protected
    { IXMLDetailRow_DeliveryNote_SaleDocument }
    function Get_Master: Boolean;
    function Get_DocNo: UnicodeString;
    function Get_DocumentDate: UnicodeString;
    function Get_SaleDocId: Integer;
    function Get_TBGuid: UnicodeString;
    procedure Set_Master(const Value: Boolean);
    procedure Set_DocNo(const Value: UnicodeString);
    procedure Set_DocumentDate(const Value: UnicodeString);
    procedure Set_SaleDocId(const Value: Integer);
    procedure Set_TBGuid(const Value: UnicodeString);
  end;

{ TXMLDetailRow_ReferenceDocType }

  TXMLDetailRow_ReferenceDocType = class(TXMLNode, IXMLDetailRow_ReferenceDocType)
  protected
    { IXMLDetailRow_ReferenceDocType }
    function Get_Enum: UnicodeString;
    function Get_EnumNameSpace: UnicodeString;
    procedure Set_Enum(const Value: UnicodeString);
    procedure Set_EnumNameSpace(const Value: UnicodeString);
  end;

{ TXMLTaxSummary }

  TXMLTaxSummary = class(TXMLNodeCollection, IXMLTaxSummary)
  protected
    { IXMLTaxSummary }
    function Get_UpdateType: Integer;
    function Get_TaxSummaryRow(const Index: Integer): IXMLTaxSummaryRow;
    procedure Set_UpdateType(const Value: Integer);
    function Add: IXMLTaxSummaryRow;
    function Insert(const Index: Integer): IXMLTaxSummaryRow;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTaxSummaryRow }

  TXMLTaxSummaryRow = class(TXMLNode, IXMLTaxSummaryRow)
  protected
    { IXMLTaxSummaryRow }
    function Get_SaleDocId: IXMLTaxSummaryRow_SaleDocId;
    function Get_TaxCode: IXMLTaxSummaryRow_TaxCode;
    function Get_TaxCodeSummaryRow: IXMLTaxSummaryRow_TaxCodeSummaryRow;
    function Get_TaxableAmount: Double;
    function Get_TaxAmount: Double;
    function Get_TotalAmount: Double;
    function Get_TaxableAmountDocCurr: Double;
    function Get_TaxAmountDocCurr: Double;
    function Get_TotalAmountDocCurr: Double;
    procedure Set_TaxableAmount(const Value: Double);
    procedure Set_TaxAmount(const Value: Double);
    procedure Set_TotalAmount(const Value: Double);
    procedure Set_TaxableAmountDocCurr(const Value: Double);
    procedure Set_TaxAmountDocCurr(const Value: Double);
    procedure Set_TotalAmountDocCurr(const Value: Double);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTaxSummaryRow_SaleDocId }

  TXMLTaxSummaryRow_SaleDocId = class(TXMLNode, IXMLTaxSummaryRow_SaleDocId)
  protected
    { IXMLTaxSummaryRow_SaleDocId }
    function Get_PrimaryKey: Boolean;
    procedure Set_PrimaryKey(const Value: Boolean);
  end;

{ TXMLTaxSummaryRow_TaxCode }

  TXMLTaxSummaryRow_TaxCode = class(TXMLNode, IXMLTaxSummaryRow_TaxCode)
  protected
    { IXMLTaxSummaryRow_TaxCode }
    function Get_PrimaryKey: Boolean;
    procedure Set_PrimaryKey(const Value: Boolean);
  end;

{ TXMLTaxSummaryRow_TaxCodeSummaryRow }

  TXMLTaxSummaryRow_TaxCodeSummaryRow = class(TXMLNode, IXMLTaxSummaryRow_TaxCodeSummaryRow)
  protected
    { IXMLTaxSummaryRow_TaxCodeSummaryRow }
    function Get_ExternalReference: Boolean;
    function Get_TaxCode: IXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode;
    procedure Set_ExternalReference(const Value: Boolean);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode }

  TXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode = class(TXMLNode, IXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode)
  protected
    { IXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode }
    function Get_Master: Boolean;
    function Get_TaxCode: UnicodeString;
    function Get_Description: UnicodeString;
    function Get_Perc: Double;
    procedure Set_Master(const Value: Boolean);
    procedure Set_TaxCode(const Value: UnicodeString);
    procedure Set_Description(const Value: UnicodeString);
    procedure Set_Perc(const Value: Double);
  end;

{ TXMLCharges }

  TXMLCharges = class(TXMLNode, IXMLCharges)
  protected
    { IXMLCharges }
    function Get_UpdateType: Integer;
    function Get_SaleDocId: IXMLCharges_SaleDocId;
    function Get_TaxableAmount: Double;
    function Get_TaxAmount: Double;
    function Get_TotalAmount: Double;
    function Get_GoodsAmount: Double;
    function Get_ServiceAmounts: Double;
    function Get_PayableAmount: Double;
    function Get_FreeSamples: Double;
    function Get_Discounts: Double;
    function Get_Allowances: Double;
    function Get_Advance: Double;
    function Get_PackagingCharges: Double;
    function Get_ShippingCharges: Double;
    function Get_StampsCharges: Double;
    function Get_CollectionCharges: Double;
    function Get_AdditionalCharges: Double;
    function Get_CashOnDeliveryCharges: Double;
    function Get_TotalAmountDocCurr: Double;
    function Get_TaxableAmountDocCurr: Double;
    function Get_TaxAmountDocCurr: Double;
    function Get_WithholdingTaxManagement: UnicodeString;
    function Get_ProfessionalsCash: Double;
    function Get_WithholdingTax: Double;
    function Get_PaymentTerm: IXMLCharges_PaymentTerm;
    function Get_AmountsWithWHTax: UnicodeString;
    procedure Set_UpdateType(const Value: Integer);
    procedure Set_TaxableAmount(const Value: Double);
    procedure Set_TaxAmount(const Value: Double);
    procedure Set_TotalAmount(const Value: Double);
    procedure Set_GoodsAmount(const Value: Double);
    procedure Set_ServiceAmounts(const Value: Double);
    procedure Set_PayableAmount(const Value: Double);
    procedure Set_FreeSamples(const Value: Double);
    procedure Set_Discounts(const Value: Double);
    procedure Set_Allowances(const Value: Double);
    procedure Set_Advance(const Value: Double);
    procedure Set_PackagingCharges(const Value: Double);
    procedure Set_ShippingCharges(const Value: Double);
    procedure Set_StampsCharges(const Value: Double);
    procedure Set_CollectionCharges(const Value: Double);
    procedure Set_AdditionalCharges(const Value: Double);
    procedure Set_CashOnDeliveryCharges(const Value: Double);
    procedure Set_TotalAmountDocCurr(const Value: Double);
    procedure Set_TaxableAmountDocCurr(const Value: Double);
    procedure Set_TaxAmountDocCurr(const Value: Double);
    procedure Set_WithholdingTaxManagement(const Value: UnicodeString);
    procedure Set_ProfessionalsCash(const Value: Double);
    procedure Set_WithholdingTax(const Value: Double);
    procedure Set_AmountsWithWHTax(const Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCharges_SaleDocId }

  TXMLCharges_SaleDocId = class(TXMLNode, IXMLCharges_SaleDocId)
  protected
    { IXMLCharges_SaleDocId }
    function Get_PrimaryKey: Boolean;
    procedure Set_PrimaryKey(const Value: Boolean);
  end;

{ TXMLCharges_PaymentTerm }

  TXMLCharges_PaymentTerm = class(TXMLNode, IXMLCharges_PaymentTerm)
  protected
    { IXMLCharges_PaymentTerm }
    function Get_Enum: UnicodeString;
    function Get_EnumNameSpace: UnicodeString;
    procedure Set_Enum(const Value: UnicodeString);
    procedure Set_EnumNameSpace(const Value: UnicodeString);
  end;

{ TXMLShipping }

  TXMLShipping = class(TXMLNode, IXMLShipping)
  protected
    { IXMLShipping }
    function Get_UpdateType: Integer;
    function Get_SaleDocId: IXMLShipping_SaleDocId;
    function Get_NoOfPacks: SmallInt;
    function Get_NetWeight: Double;
    function Get_GrossWeight: Double;
    function Get_DepartureDate: UnicodeString;
    function Get_Transport: UnicodeString;
    function Get_PackageDescription: UnicodeString;
    procedure Set_UpdateType(const Value: Integer);
    procedure Set_NoOfPacks(const Value: SmallInt);
    procedure Set_NetWeight(const Value: Double);
    procedure Set_GrossWeight(const Value: Double);
    procedure Set_DepartureDate(const Value: UnicodeString);
    procedure Set_Transport(const Value: UnicodeString);
    procedure Set_PackageDescription(const Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLShipping_SaleDocId }

  TXMLShipping_SaleDocId = class(TXMLNode, IXMLShipping_SaleDocId)
  protected
    { IXMLShipping_SaleDocId }
    function Get_PrimaryKey: Boolean;
    procedure Set_PrimaryKey(const Value: Boolean);
  end;

{ TXMLPymtSchedule }

  TXMLPymtSchedule = class(TXMLNodeCollection, IXMLPymtSchedule)
  protected
    { IXMLPymtSchedule }
    function Get_UpdateType: Integer;
    function Get_PymtScheduleRow(const Index: Integer): IXMLPymtScheduleRow;
    procedure Set_UpdateType(const Value: Integer);
    function Add: IXMLPymtScheduleRow;
    function Insert(const Index: Integer): IXMLPymtScheduleRow;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPymtScheduleRow }

  TXMLPymtScheduleRow = class(TXMLNode, IXMLPymtScheduleRow)
  protected
    { IXMLPymtScheduleRow }
    function Get_SaleDocId: IXMLPymtScheduleRow_SaleDocId;
    function Get_InstallmentNo: IXMLPymtScheduleRow_InstallmentNo;
    function Get_InstallmentType: IXMLPymtScheduleRow_InstallmentType;
    function Get_DueDate: UnicodeString;
    function Get_InstallmentAmount: Double;
    function Get_InstallmentTaxAmount: Double;
    procedure Set_DueDate(const Value: UnicodeString);
    procedure Set_InstallmentAmount(const Value: Double);
    procedure Set_InstallmentTaxAmount(const Value: Double);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPymtScheduleRow_SaleDocId }

  TXMLPymtScheduleRow_SaleDocId = class(TXMLNode, IXMLPymtScheduleRow_SaleDocId)
  protected
    { IXMLPymtScheduleRow_SaleDocId }
    function Get_PrimaryKey: Boolean;
    procedure Set_PrimaryKey(const Value: Boolean);
  end;

{ TXMLPymtScheduleRow_InstallmentNo }

  TXMLPymtScheduleRow_InstallmentNo = class(TXMLNode, IXMLPymtScheduleRow_InstallmentNo)
  protected
    { IXMLPymtScheduleRow_InstallmentNo }
    function Get_PrimaryKey: Boolean;
    procedure Set_PrimaryKey(const Value: Boolean);
  end;

{ TXMLPymtScheduleRow_InstallmentType }

  TXMLPymtScheduleRow_InstallmentType = class(TXMLNode, IXMLPymtScheduleRow_InstallmentType)
  protected
    { IXMLPymtScheduleRow_InstallmentType }
    function Get_Enum: UnicodeString;
    function Get_EnumNameSpace: UnicodeString;
    procedure Set_Enum(const Value: UnicodeString);
    procedure Set_EnumNameSpace(const Value: UnicodeString);
  end;

{ TXMLDiagnostic }

  TXMLDiagnostic = class(TXMLNode, IXMLDiagnostic)
  protected
    { IXMLDiagnostic }
    function Get_Errors: IXMLDiagnostic_Errors;
    function Get_Warnings: IXMLDiagnostic_Warnings;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDiagnostic_Errors }

  TXMLDiagnostic_Errors = class(TXMLNodeCollection, IXMLDiagnostic_Errors)
  protected
    { IXMLDiagnostic_Errors }
    function Get_Error(const Index: Integer): IXMLDiagnostic_Errors_Error;
    function Add: IXMLDiagnostic_Errors_Error;
    function Insert(const Index: Integer): IXMLDiagnostic_Errors_Error;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDiagnostic_Errors_Error }

  TXMLDiagnostic_Errors_Error = class(TXMLNode, IXMLDiagnostic_Errors_Error)
  protected
    { IXMLDiagnostic_Errors_Error }
    function Get_Code: Integer;
    function Get_Source: UnicodeString;
    function Get_Message: UnicodeString;
    procedure Set_Code(const Value: Integer);
    procedure Set_Source(const Value: UnicodeString);
    procedure Set_Message(const Value: UnicodeString);
  end;

{ TXMLDiagnostic_Warnings }

  TXMLDiagnostic_Warnings = class(TXMLNodeCollection, IXMLDiagnostic_Warnings)
  protected
    { IXMLDiagnostic_Warnings }
    function Get_Warning(const Index: Integer): IXMLDiagnostic_Warnings_Warning;
    function Add: IXMLDiagnostic_Warnings_Warning;
    function Insert(const Index: Integer): IXMLDiagnostic_Warnings_Warning;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDiagnostic_Warnings_Warning }

  TXMLDiagnostic_Warnings_Warning = class(TXMLNode, IXMLDiagnostic_Warnings_Warning)
  protected
    { IXMLDiagnostic_Warnings_Warning }
    function Get_Code: Integer;
    function Get_Source: UnicodeString;
    function Get_Message: UnicodeString;
    procedure Set_Code(const Value: Integer);
    procedure Set_Source(const Value: UnicodeString);
    procedure Set_Message(const Value: UnicodeString);
  end;

{ Global Functions }

function GetInvoice(Doc: IXMLDocument): IXMLInvoice;
function LoadInvoice(const FileName: string): IXMLInvoice;
function NewInvoice: IXMLInvoice;

const
  TargetNamespace = 'http://www.microarea.it/Schema/2004/Smart/ERP/Sales/Invoice/Standard/Default_CBI.xsd';

implementation

uses System.Variants, System.SysUtils, Xml.xmlutil;

{ Global Functions }

function GetInvoice(Doc: IXMLDocument): IXMLInvoice;
begin
  Result := Doc.GetDocBinding('Invoice', TXMLInvoice, TargetNamespace) as IXMLInvoice;
end;

function LoadInvoice(const FileName: string): IXMLInvoice;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Invoice', TXMLInvoice, TargetNamespace) as IXMLInvoice;
end;

function NewInvoice: IXMLInvoice;
begin
  Result := NewXMLDocument.GetDocBinding('Invoice', TXMLInvoice, TargetNamespace) as IXMLInvoice;
end;

{ TXMLInvoice }

procedure TXMLInvoice.AfterConstruction;
begin
  RegisterChildNode('Data', TXMLData);
  RegisterChildNode('Diagnostic', TXMLDiagnostic);
  inherited;
end;

function TXMLInvoice.Get_TbNamespace: UnicodeString;
begin
  Result := AttributeNodes['tbNamespace'].Text;
end;

procedure TXMLInvoice.Set_TbNamespace(const Value: UnicodeString);
begin
  SetAttribute('tbNamespace', Value);
end;

function TXMLInvoice.Get_XTechProfile: UnicodeString;
begin
  Result := AttributeNodes['xTechProfile'].Text;
end;

procedure TXMLInvoice.Set_XTechProfile(const Value: UnicodeString);
begin
  SetAttribute('xTechProfile', Value);
end;

function TXMLInvoice.Get_Postable: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['postable'].Text);
end;

procedure TXMLInvoice.Set_Postable(const Value: Boolean);
begin
  SetAttribute('postable', Value);
end;

function TXMLInvoice.Get_PostBack: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['postBack'].Text);
end;

procedure TXMLInvoice.Set_PostBack(const Value: Boolean);
begin
  SetAttribute('postBack', Value);
end;

function TXMLInvoice.Get_Data: IXMLData;
begin
  Result := ChildNodes['Data'] as IXMLData;
end;

function TXMLInvoice.Get_Diagnostic: IXMLDiagnostic;
begin
  Result := ChildNodes['Diagnostic'] as IXMLDiagnostic;
end;

{ TXMLData }

procedure TXMLData.AfterConstruction;
begin
  RegisterChildNode('SaleDocument', TXMLSaleDocument);
  RegisterChildNode('Notes', TXMLNotes);
  RegisterChildNode('Detail', TXMLDetail);
  RegisterChildNode('TaxSummary', TXMLTaxSummary);
  RegisterChildNode('Charges', TXMLCharges);
  RegisterChildNode('Shipping', TXMLShipping);
  RegisterChildNode('PymtSchedule', TXMLPymtSchedule);
  inherited;
end;

function TXMLData.Get_SaleDocument: IXMLSaleDocument;
begin
  Result := ChildNodes['SaleDocument'] as IXMLSaleDocument;
end;

function TXMLData.Get_Notes: IXMLNotes;
begin
  Result := ChildNodes['Notes'] as IXMLNotes;
end;

function TXMLData.Get_Detail: IXMLDetail;
begin
  Result := ChildNodes['Detail'] as IXMLDetail;
end;

function TXMLData.Get_TaxSummary: IXMLTaxSummary;
begin
  Result := ChildNodes['TaxSummary'] as IXMLTaxSummary;
end;

function TXMLData.Get_Charges: IXMLCharges;
begin
  Result := ChildNodes['Charges'] as IXMLCharges;
end;

function TXMLData.Get_Shipping: IXMLShipping;
begin
  Result := ChildNodes['Shipping'] as IXMLShipping;
end;

function TXMLData.Get_PymtSchedule: IXMLPymtSchedule;
begin
  Result := ChildNodes['PymtSchedule'] as IXMLPymtSchedule;
end;

{ TXMLSaleDocument }

procedure TXMLSaleDocument.AfterConstruction;
begin
  RegisterChildNode('DocumentType', TXMLSaleDocument_DocumentType);
  RegisterChildNode('CustSuppType', TXMLSaleDocument_CustSuppType);
  RegisterChildNode('CustSupp', TXMLSaleDocument_CustSupp);
  RegisterChildNode('PymtTerm', TXMLSaleDocument_PymtTerm);
  RegisterChildNode('CustomerBank', TXMLSaleDocument_CustomerBank);
  RegisterChildNode('CompanyBank', TXMLSaleDocument_CompanyBank);
  RegisterChildNode('SaleDocId', TXMLSaleDocument_SaleDocId);
  RegisterChildNode('Company', TXMLSaleDocument_Company);
  inherited;
end;

function TXMLSaleDocument.Get_Master: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['master'].Text);
end;

procedure TXMLSaleDocument.Set_Master(const Value: Boolean);
begin
  SetAttribute('master', Value);
end;

function TXMLSaleDocument.Get_DocumentType: IXMLSaleDocument_DocumentType;
begin
  Result := ChildNodes['DocumentType'] as IXMLSaleDocument_DocumentType;
end;

function TXMLSaleDocument.Get_DocNo: UnicodeString;
begin
  Result := ChildNodes['DocNo'].Text;
end;

procedure TXMLSaleDocument.Set_DocNo(const Value: UnicodeString);
begin
  ChildNodes['DocNo'].NodeValue := Value;
end;

function TXMLSaleDocument.Get_DocumentDate: UnicodeString;
begin
  Result := ChildNodes['DocumentDate'].Text;
end;

procedure TXMLSaleDocument.Set_DocumentDate(const Value: UnicodeString);
begin
  ChildNodes['DocumentDate'].NodeValue := Value;
end;

function TXMLSaleDocument.Get_CustSuppType: IXMLSaleDocument_CustSuppType;
begin
  Result := ChildNodes['CustSuppType'] as IXMLSaleDocument_CustSuppType;
end;

function TXMLSaleDocument.Get_CustSupp: IXMLSaleDocument_CustSupp;
begin
  Result := ChildNodes['CustSupp'] as IXMLSaleDocument_CustSupp;
end;

function TXMLSaleDocument.Get_Language: UnicodeString;
begin
  Result := ChildNodes['Language'].Text;
end;

procedure TXMLSaleDocument.Set_Language(const Value: UnicodeString);
begin
  ChildNodes['Language'].NodeValue := Value;
end;

function TXMLSaleDocument.Get_OurReference: UnicodeString;
begin
  Result := ChildNodes['OurReference'].Text;
end;

procedure TXMLSaleDocument.Set_OurReference(const Value: UnicodeString);
begin
  ChildNodes['OurReference'].NodeValue := Value;
end;

function TXMLSaleDocument.Get_YourReference: UnicodeString;
begin
  Result := ChildNodes['YourReference'].Text;
end;

procedure TXMLSaleDocument.Set_YourReference(const Value: UnicodeString);
begin
  ChildNodes['YourReference'].NodeValue := Value;
end;

function TXMLSaleDocument.Get_PymtTerm: IXMLSaleDocument_PymtTerm;
begin
  Result := ChildNodes['PymtTerm'] as IXMLSaleDocument_PymtTerm;
end;

function TXMLSaleDocument.Get_CustomerBank: IXMLSaleDocument_CustomerBank;
begin
  Result := ChildNodes['CustomerBank'] as IXMLSaleDocument_CustomerBank;
end;

function TXMLSaleDocument.Get_CompanyBank: IXMLSaleDocument_CompanyBank;
begin
  Result := ChildNodes['CompanyBank'] as IXMLSaleDocument_CompanyBank;
end;

function TXMLSaleDocument.Get_SendDocumentsTo: UnicodeString;
begin
  Result := ChildNodes['SendDocumentsTo'].Text;
end;

procedure TXMLSaleDocument.Set_SendDocumentsTo(const Value: UnicodeString);
begin
  ChildNodes['SendDocumentsTo'].NodeValue := Value;
end;

function TXMLSaleDocument.Get_Currency: UnicodeString;
begin
  Result := ChildNodes['Currency'].Text;
end;

procedure TXMLSaleDocument.Set_Currency(const Value: UnicodeString);
begin
  ChildNodes['Currency'].NodeValue := Value;
end;

function TXMLSaleDocument.Get_Fixing: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['Fixing'].Text);
end;

procedure TXMLSaleDocument.Set_Fixing(const Value: Double);
begin
  ChildNodes['Fixing'].NodeValue := Value;
end;

function TXMLSaleDocument.Get_SaleDocId: IXMLSaleDocument_SaleDocId;
begin
  Result := ChildNodes['SaleDocId'] as IXMLSaleDocument_SaleDocId;
end;

function TXMLSaleDocument.Get_Company: IXMLSaleDocument_Company;
begin
  Result := ChildNodes['Company'] as IXMLSaleDocument_Company;
end;

function TXMLSaleDocument.Get_TBGuid: UnicodeString;
begin
  Result := ChildNodes['TBGuid'].Text;
end;

procedure TXMLSaleDocument.Set_TBGuid(const Value: UnicodeString);
begin
  ChildNodes['TBGuid'].NodeValue := Value;
end;

{ TXMLSaleDocument_DocumentType }

function TXMLSaleDocument_DocumentType.Get_Enum: UnicodeString;
begin
  Result := AttributeNodes['enum'].Text;
end;

procedure TXMLSaleDocument_DocumentType.Set_Enum(const Value: UnicodeString);
begin
  SetAttribute('enum', Value);
end;

function TXMLSaleDocument_DocumentType.Get_EnumNameSpace: UnicodeString;
begin
  Result := AttributeNodes['EnumNameSpace'].Text;
end;

procedure TXMLSaleDocument_DocumentType.Set_EnumNameSpace(const Value: UnicodeString);
begin
  SetAttribute('EnumNameSpace', Value);
end;

{ TXMLSaleDocument_CustSuppType }

function TXMLSaleDocument_CustSuppType.Get_Enum: UnicodeString;
begin
  Result := AttributeNodes['enum'].Text;
end;

procedure TXMLSaleDocument_CustSuppType.Set_Enum(const Value: UnicodeString);
begin
  SetAttribute('enum', Value);
end;

function TXMLSaleDocument_CustSuppType.Get_EnumNameSpace: UnicodeString;
begin
  Result := AttributeNodes['EnumNameSpace'].Text;
end;

procedure TXMLSaleDocument_CustSuppType.Set_EnumNameSpace(const Value: UnicodeString);
begin
  SetAttribute('EnumNameSpace', Value);
end;

{ TXMLSaleDocument_CustSupp }

procedure TXMLSaleDocument_CustSupp.AfterConstruction;
begin
  RegisterChildNode('CustomersSuppliers', TXMLSaleDocument_CustSupp_CustomersSuppliers);
  RegisterChildNode('OtherBranches', TXMLSaleDocument_CustSupp_OtherBranches);
  RegisterChildNode('Options', TXMLSaleDocument_CustSupp_Options);
  inherited;
end;

function TXMLSaleDocument_CustSupp.Get_ExternalReference: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['externalReference'].Text);
end;

procedure TXMLSaleDocument_CustSupp.Set_ExternalReference(const Value: Boolean);
begin
  SetAttribute('externalReference', Value);
end;

function TXMLSaleDocument_CustSupp.Get_CustomersSuppliers: IXMLSaleDocument_CustSupp_CustomersSuppliers;
begin
  Result := ChildNodes['CustomersSuppliers'] as IXMLSaleDocument_CustSupp_CustomersSuppliers;
end;

function TXMLSaleDocument_CustSupp.Get_OtherBranches: IXMLSaleDocument_CustSupp_OtherBranches;
begin
  Result := ChildNodes['OtherBranches'] as IXMLSaleDocument_CustSupp_OtherBranches;
end;

function TXMLSaleDocument_CustSupp.Get_Options: IXMLSaleDocument_CustSupp_Options;
begin
  Result := ChildNodes['Options'] as IXMLSaleDocument_CustSupp_Options;
end;

{ TXMLSaleDocument_CustSupp_CustomersSuppliers }

function TXMLSaleDocument_CustSupp_CustomersSuppliers.Get_Master: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['master'].Text);
end;

procedure TXMLSaleDocument_CustSupp_CustomersSuppliers.Set_Master(const Value: Boolean);
begin
  SetAttribute('master', Value);
end;

function TXMLSaleDocument_CustSupp_CustomersSuppliers.Get_CustSuppType: UnicodeString;
begin
  Result := ChildNodes['CustSuppType'].Text;
end;

procedure TXMLSaleDocument_CustSupp_CustomersSuppliers.Set_CustSuppType(const Value: UnicodeString);
begin
  ChildNodes['CustSuppType'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_CustomersSuppliers.Get_CustSupp: UnicodeString;
begin
  Result := ChildNodes['CustSupp'].Text;
end;

procedure TXMLSaleDocument_CustSupp_CustomersSuppliers.Set_CustSupp(const Value: UnicodeString);
begin
  ChildNodes['CustSupp'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_CustomersSuppliers.Get_CompanyName: UnicodeString;
begin
  Result := ChildNodes['CompanyName'].Text;
end;

procedure TXMLSaleDocument_CustSupp_CustomersSuppliers.Set_CompanyName(const Value: UnicodeString);
begin
  ChildNodes['CompanyName'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_CustomersSuppliers.Get_TaxIdNumber: UnicodeString;
begin
  Result := ChildNodes['TaxIdNumber'].Text;
end;

procedure TXMLSaleDocument_CustSupp_CustomersSuppliers.Set_TaxIdNumber(const Value: UnicodeString);
begin
  ChildNodes['TaxIdNumber'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_CustomersSuppliers.Get_FiscalCode: UnicodeString;
begin
  Result := ChildNodes['FiscalCode'].Text;
end;

procedure TXMLSaleDocument_CustSupp_CustomersSuppliers.Set_FiscalCode(const Value: UnicodeString);
begin
  ChildNodes['FiscalCode'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_CustomersSuppliers.Get_Address: UnicodeString;
begin
  Result := ChildNodes['Address'].Text;
end;

procedure TXMLSaleDocument_CustSupp_CustomersSuppliers.Set_Address(const Value: UnicodeString);
begin
  ChildNodes['Address'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_CustomersSuppliers.Get_ZIPCode: UnicodeString;
begin
  Result := ChildNodes['ZIPCode'].Text;
end;

procedure TXMLSaleDocument_CustSupp_CustomersSuppliers.Set_ZIPCode(const Value: UnicodeString);
begin
  ChildNodes['ZIPCode'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_CustomersSuppliers.Get_City: UnicodeString;
begin
  Result := ChildNodes['City'].Text;
end;

procedure TXMLSaleDocument_CustSupp_CustomersSuppliers.Set_City(const Value: UnicodeString);
begin
  ChildNodes['City'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_CustomersSuppliers.Get_County: UnicodeString;
begin
  Result := ChildNodes['County'].Text;
end;

procedure TXMLSaleDocument_CustSupp_CustomersSuppliers.Set_County(const Value: UnicodeString);
begin
  ChildNodes['County'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_CustomersSuppliers.Get_Country: UnicodeString;
begin
  Result := ChildNodes['Country'].Text;
end;

procedure TXMLSaleDocument_CustSupp_CustomersSuppliers.Set_Country(const Value: UnicodeString);
begin
  ChildNodes['Country'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_CustomersSuppliers.Get_Telephone1: UnicodeString;
begin
  Result := ChildNodes['Telephone1'].Text;
end;

procedure TXMLSaleDocument_CustSupp_CustomersSuppliers.Set_Telephone1(const Value: UnicodeString);
begin
  ChildNodes['Telephone1'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_CustomersSuppliers.Get_Fax: UnicodeString;
begin
  Result := ChildNodes['Fax'].Text;
end;

procedure TXMLSaleDocument_CustSupp_CustomersSuppliers.Set_Fax(const Value: UnicodeString);
begin
  ChildNodes['Fax'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_CustomersSuppliers.Get_ISOCountryCode: UnicodeString;
begin
  Result := ChildNodes['ISOCountryCode'].Text;
end;

procedure TXMLSaleDocument_CustSupp_CustomersSuppliers.Set_ISOCountryCode(const Value: UnicodeString);
begin
  ChildNodes['ISOCountryCode'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_CustomersSuppliers.Get_NaturalPerson: UnicodeString;
begin
  Result := ChildNodes['NaturalPerson'].Text;
end;

procedure TXMLSaleDocument_CustSupp_CustomersSuppliers.Set_NaturalPerson(const Value: UnicodeString);
begin
  ChildNodes['NaturalPerson'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_CustomersSuppliers.Get_IBAN: UnicodeString;
begin
  Result := ChildNodes['IBAN'].Text;
end;

procedure TXMLSaleDocument_CustSupp_CustomersSuppliers.Set_IBAN(const Value: UnicodeString);
begin
  ChildNodes['IBAN'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_CustomersSuppliers.Get_ExternalCode: UnicodeString;
begin
  Result := ChildNodes['ExternalCode'].Text;
end;

procedure TXMLSaleDocument_CustSupp_CustomersSuppliers.Set_ExternalCode(const Value: UnicodeString);
begin
  ChildNodes['ExternalCode'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_CustomersSuppliers.Get_CBICode: UnicodeString;
begin
  Result := ChildNodes['CBICode'].Text;
end;

procedure TXMLSaleDocument_CustSupp_CustomersSuppliers.Set_CBICode(const Value: UnicodeString);
begin
  ChildNodes['CBICode'].NodeValue := Value;
end;

{ TXMLSaleDocument_CustSupp_OtherBranches }

procedure TXMLSaleDocument_CustSupp_OtherBranches.AfterConstruction;
begin
  RegisterChildNode('OtherBranchesRow', TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow);
  ItemTag := 'OtherBranchesRow';
  ItemInterface := IXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow;
  inherited;
end;

function TXMLSaleDocument_CustSupp_OtherBranches.Get_OtherBranchesRow(const Index: Integer): IXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow;
begin
  Result := List[Index] as IXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow;
end;

function TXMLSaleDocument_CustSupp_OtherBranches.Add: IXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow;
begin
  Result := AddItem(-1) as IXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow;
end;

function TXMLSaleDocument_CustSupp_OtherBranches.Insert(const Index: Integer): IXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow;
begin
  Result := AddItem(Index) as IXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow;
end;

{ TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow }

function TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow.Get_CustSuppType: UnicodeString;
begin
  Result := ChildNodes['CustSuppType'].Text;
end;

procedure TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow.Set_CustSuppType(const Value: UnicodeString);
begin
  ChildNodes['CustSuppType'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow.Get_CustSupp: UnicodeString;
begin
  Result := ChildNodes['CustSupp'].Text;
end;

procedure TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow.Set_CustSupp(const Value: UnicodeString);
begin
  ChildNodes['CustSupp'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow.Get_Branch: UnicodeString;
begin
  Result := ChildNodes['Branch'].Text;
end;

procedure TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow.Set_Branch(const Value: UnicodeString);
begin
  ChildNodes['Branch'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow.Get_CompanyName: UnicodeString;
begin
  Result := ChildNodes['CompanyName'].Text;
end;

procedure TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow.Set_CompanyName(const Value: UnicodeString);
begin
  ChildNodes['CompanyName'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow.Get_Address: UnicodeString;
begin
  Result := ChildNodes['Address'].Text;
end;

procedure TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow.Set_Address(const Value: UnicodeString);
begin
  ChildNodes['Address'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow.Get_ZIPCode: UnicodeString;
begin
  Result := ChildNodes['ZIPCode'].Text;
end;

procedure TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow.Set_ZIPCode(const Value: UnicodeString);
begin
  ChildNodes['ZIPCode'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow.Get_City: UnicodeString;
begin
  Result := ChildNodes['City'].Text;
end;

procedure TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow.Set_City(const Value: UnicodeString);
begin
  ChildNodes['City'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow.Get_County: UnicodeString;
begin
  Result := ChildNodes['County'].Text;
end;

procedure TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow.Set_County(const Value: UnicodeString);
begin
  ChildNodes['County'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow.Get_Country: UnicodeString;
begin
  Result := ChildNodes['Country'].Text;
end;

procedure TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow.Set_Country(const Value: UnicodeString);
begin
  ChildNodes['Country'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow.Get_ISOCountryCode: UnicodeString;
begin
  Result := ChildNodes['ISOCountryCode'].Text;
end;

procedure TXMLSaleDocument_CustSupp_OtherBranches_OtherBranchesRow.Set_ISOCountryCode(const Value: UnicodeString);
begin
  ChildNodes['ISOCountryCode'].NodeValue := Value;
end;

{ TXMLSaleDocument_CustSupp_Options }

function TXMLSaleDocument_CustSupp_Options.Get_CustSuppType: UnicodeString;
begin
  Result := ChildNodes['CustSuppType'].Text;
end;

procedure TXMLSaleDocument_CustSupp_Options.Set_CustSuppType(const Value: UnicodeString);
begin
  ChildNodes['CustSuppType'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_Options.Get_Customer: UnicodeString;
begin
  Result := ChildNodes['Customer'].Text;
end;

procedure TXMLSaleDocument_CustSupp_Options.Set_Customer(const Value: UnicodeString);
begin
  ChildNodes['Customer'].NodeValue := Value;
end;

function TXMLSaleDocument_CustSupp_Options.Get_ExemptFromTax: UnicodeString;
begin
  Result := ChildNodes['ExemptFromTax'].Text;
end;

procedure TXMLSaleDocument_CustSupp_Options.Set_ExemptFromTax(const Value: UnicodeString);
begin
  ChildNodes['ExemptFromTax'].NodeValue := Value;
end;

{ TXMLSaleDocument_PymtTerm }

procedure TXMLSaleDocument_PymtTerm.AfterConstruction;
begin
  RegisterChildNode('PaymentTerms', TXMLSaleDocument_PymtTerm_PaymentTerms);
  inherited;
end;

function TXMLSaleDocument_PymtTerm.Get_ExternalReference: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['externalReference'].Text);
end;

procedure TXMLSaleDocument_PymtTerm.Set_ExternalReference(const Value: Boolean);
begin
  SetAttribute('externalReference', Value);
end;

function TXMLSaleDocument_PymtTerm.Get_PaymentTerms: IXMLSaleDocument_PymtTerm_PaymentTerms;
begin
  Result := ChildNodes['PaymentTerms'] as IXMLSaleDocument_PymtTerm_PaymentTerms;
end;

{ TXMLSaleDocument_PymtTerm_PaymentTerms }

function TXMLSaleDocument_PymtTerm_PaymentTerms.Get_Master: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['master'].Text);
end;

procedure TXMLSaleDocument_PymtTerm_PaymentTerms.Set_Master(const Value: Boolean);
begin
  SetAttribute('master', Value);
end;

function TXMLSaleDocument_PymtTerm_PaymentTerms.Get_Payment: UnicodeString;
begin
  Result := ChildNodes['Payment'].Text;
end;

procedure TXMLSaleDocument_PymtTerm_PaymentTerms.Set_Payment(const Value: UnicodeString);
begin
  ChildNodes['Payment'].NodeValue := Value;
end;

function TXMLSaleDocument_PymtTerm_PaymentTerms.Get_Description: UnicodeString;
begin
  Result := ChildNodes['Description'].Text;
end;

procedure TXMLSaleDocument_PymtTerm_PaymentTerms.Set_Description(const Value: UnicodeString);
begin
  ChildNodes['Description'].NodeValue := Value;
end;

{ TXMLSaleDocument_CustomerBank }

procedure TXMLSaleDocument_CustomerBank.AfterConstruction;
begin
  RegisterChildNode('Banks', TXMLSaleDocument_CustomerBank_Banks);
  inherited;
end;

function TXMLSaleDocument_CustomerBank.Get_ExternalReference: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['externalReference'].Text);
end;

procedure TXMLSaleDocument_CustomerBank.Set_ExternalReference(const Value: Boolean);
begin
  SetAttribute('externalReference', Value);
end;

function TXMLSaleDocument_CustomerBank.Get_Banks: IXMLSaleDocument_CustomerBank_Banks;
begin
  Result := ChildNodes['Banks'] as IXMLSaleDocument_CustomerBank_Banks;
end;

{ TXMLSaleDocument_CustomerBank_Banks }

function TXMLSaleDocument_CustomerBank_Banks.Get_Master: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['master'].Text);
end;

procedure TXMLSaleDocument_CustomerBank_Banks.Set_Master(const Value: Boolean);
begin
  SetAttribute('master', Value);
end;

function TXMLSaleDocument_CustomerBank_Banks.Get_Bank: UnicodeString;
begin
  Result := ChildNodes['Bank'].Text;
end;

procedure TXMLSaleDocument_CustomerBank_Banks.Set_Bank(const Value: UnicodeString);
begin
  ChildNodes['Bank'].NodeValue := Value;
end;

function TXMLSaleDocument_CustomerBank_Banks.Get_IsACompanyBank: UnicodeString;
begin
  Result := ChildNodes['IsACompanyBank'].Text;
end;

procedure TXMLSaleDocument_CustomerBank_Banks.Set_IsACompanyBank(const Value: UnicodeString);
begin
  ChildNodes['IsACompanyBank'].NodeValue := Value;
end;

function TXMLSaleDocument_CustomerBank_Banks.Get_Description: UnicodeString;
begin
  Result := ChildNodes['Description'].Text;
end;

procedure TXMLSaleDocument_CustomerBank_Banks.Set_Description(const Value: UnicodeString);
begin
  ChildNodes['Description'].NodeValue := Value;
end;

function TXMLSaleDocument_CustomerBank_Banks.Get_Swift: UnicodeString;
begin
  Result := ChildNodes['Swift'].Text;
end;

procedure TXMLSaleDocument_CustomerBank_Banks.Set_Swift(const Value: UnicodeString);
begin
  ChildNodes['Swift'].NodeValue := Value;
end;

{ TXMLSaleDocument_CompanyBank }

procedure TXMLSaleDocument_CompanyBank.AfterConstruction;
begin
  RegisterChildNode('Banks', TXMLSaleDocument_CompanyBank_Banks);
  RegisterChildNode('BanksCAs', TXMLSaleDocument_CompanyBank_BanksCAs);
  RegisterChildNode('BillsCAs', TXMLSaleDocument_CompanyBank_BillsCAs);
  inherited;
end;

function TXMLSaleDocument_CompanyBank.Get_ExternalReference: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['externalReference'].Text);
end;

procedure TXMLSaleDocument_CompanyBank.Set_ExternalReference(const Value: Boolean);
begin
  SetAttribute('externalReference', Value);
end;

function TXMLSaleDocument_CompanyBank.Get_Banks: IXMLSaleDocument_CompanyBank_Banks;
begin
  Result := ChildNodes['Banks'] as IXMLSaleDocument_CompanyBank_Banks;
end;

function TXMLSaleDocument_CompanyBank.Get_BanksCAs: IXMLSaleDocument_CompanyBank_BanksCAs;
begin
  Result := ChildNodes['BanksCAs'] as IXMLSaleDocument_CompanyBank_BanksCAs;
end;

function TXMLSaleDocument_CompanyBank.Get_BillsCAs: IXMLSaleDocument_CompanyBank_BillsCAs;
begin
  Result := ChildNodes['BillsCAs'] as IXMLSaleDocument_CompanyBank_BillsCAs;
end;

{ TXMLSaleDocument_CompanyBank_Banks }

function TXMLSaleDocument_CompanyBank_Banks.Get_Master: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['master'].Text);
end;

procedure TXMLSaleDocument_CompanyBank_Banks.Set_Master(const Value: Boolean);
begin
  SetAttribute('master', Value);
end;

function TXMLSaleDocument_CompanyBank_Banks.Get_Bank: UnicodeString;
begin
  Result := ChildNodes['Bank'].Text;
end;

procedure TXMLSaleDocument_CompanyBank_Banks.Set_Bank(const Value: UnicodeString);
begin
  ChildNodes['Bank'].NodeValue := Value;
end;

function TXMLSaleDocument_CompanyBank_Banks.Get_IsACompanyBank: UnicodeString;
begin
  Result := ChildNodes['IsACompanyBank'].Text;
end;

procedure TXMLSaleDocument_CompanyBank_Banks.Set_IsACompanyBank(const Value: UnicodeString);
begin
  ChildNodes['IsACompanyBank'].NodeValue := Value;
end;

function TXMLSaleDocument_CompanyBank_Banks.Get_Account: UnicodeString;
begin
  Result := ChildNodes['Account'].Text;
end;

procedure TXMLSaleDocument_CompanyBank_Banks.Set_Account(const Value: UnicodeString);
begin
  ChildNodes['Account'].NodeValue := Value;
end;

function TXMLSaleDocument_CompanyBank_Banks.Get_Swift: UnicodeString;
begin
  Result := ChildNodes['Swift'].Text;
end;

procedure TXMLSaleDocument_CompanyBank_Banks.Set_Swift(const Value: UnicodeString);
begin
  ChildNodes['Swift'].NodeValue := Value;
end;

function TXMLSaleDocument_CompanyBank_Banks.Get_PreferredCA: UnicodeString;
begin
  Result := ChildNodes['PreferredCA'].Text;
end;

procedure TXMLSaleDocument_CompanyBank_Banks.Set_PreferredCA(const Value: UnicodeString);
begin
  ChildNodes['PreferredCA'].NodeValue := Value;
end;

{ TXMLSaleDocument_CompanyBank_BanksCAs }

procedure TXMLSaleDocument_CompanyBank_BanksCAs.AfterConstruction;
begin
  RegisterChildNode('BanksCAsRow', TXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow);
  ItemTag := 'BanksCAsRow';
  ItemInterface := IXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow;
  inherited;
end;

function TXMLSaleDocument_CompanyBank_BanksCAs.Get_BanksCAsRow(const Index: Integer): IXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow;
begin
  Result := List[Index] as IXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow;
end;

function TXMLSaleDocument_CompanyBank_BanksCAs.Add: IXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow;
begin
  Result := AddItem(-1) as IXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow;
end;

function TXMLSaleDocument_CompanyBank_BanksCAs.Insert(const Index: Integer): IXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow;
begin
  Result := AddItem(Index) as IXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow;
end;

{ TXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow }

function TXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow.Get_Bank: UnicodeString;
begin
  Result := ChildNodes['Bank'].Text;
end;

procedure TXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow.Set_Bank(const Value: UnicodeString);
begin
  ChildNodes['Bank'].NodeValue := Value;
end;

function TXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow.Get_IsACompanyBank: UnicodeString;
begin
  Result := ChildNodes['IsACompanyBank'].Text;
end;

procedure TXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow.Set_IsACompanyBank(const Value: UnicodeString);
begin
  ChildNodes['IsACompanyBank'].NodeValue := Value;
end;

function TXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow.Get_CA: UnicodeString;
begin
  Result := ChildNodes['CA'].Text;
end;

procedure TXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow.Set_CA(const Value: UnicodeString);
begin
  ChildNodes['CA'].NodeValue := Value;
end;

function TXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow.Get_IBAN: UnicodeString;
begin
  Result := ChildNodes['IBAN'].Text;
end;

procedure TXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow.Set_IBAN(const Value: UnicodeString);
begin
  ChildNodes['IBAN'].NodeValue := Value;
end;

function TXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow.Get_Presentation: UnicodeString;
begin
  Result := ChildNodes['Presentation'].Text;
end;

procedure TXMLSaleDocument_CompanyBank_BanksCAs_BanksCAsRow.Set_Presentation(const Value: UnicodeString);
begin
  ChildNodes['Presentation'].NodeValue := Value;
end;

{ TXMLSaleDocument_CompanyBank_BillsCAs }

procedure TXMLSaleDocument_CompanyBank_BillsCAs.AfterConstruction;
begin
  RegisterChildNode('BillsCAsRow', TXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow);
  ItemTag := 'BillsCAsRow';
  ItemInterface := IXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow;
  inherited;
end;

function TXMLSaleDocument_CompanyBank_BillsCAs.Get_BillsCAsRow(const Index: Integer): IXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow;
begin
  Result := List[Index] as IXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow;
end;

function TXMLSaleDocument_CompanyBank_BillsCAs.Add: IXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow;
begin
  Result := AddItem(-1) as IXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow;
end;

function TXMLSaleDocument_CompanyBank_BillsCAs.Insert(const Index: Integer): IXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow;
begin
  Result := AddItem(Index) as IXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow;
end;

{ TXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow }

function TXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow.Get_Bank: UnicodeString;
begin
  Result := ChildNodes['Bank'].Text;
end;

procedure TXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow.Set_Bank(const Value: UnicodeString);
begin
  ChildNodes['Bank'].NodeValue := Value;
end;

function TXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow.Get_IsACompanyBank: UnicodeString;
begin
  Result := ChildNodes['IsACompanyBank'].Text;
end;

procedure TXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow.Set_IsACompanyBank(const Value: UnicodeString);
begin
  ChildNodes['IsACompanyBank'].NodeValue := Value;
end;

function TXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow.Get_CA: UnicodeString;
begin
  Result := ChildNodes['CA'].Text;
end;

procedure TXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow.Set_CA(const Value: UnicodeString);
begin
  ChildNodes['CA'].NodeValue := Value;
end;

function TXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow.Get_IBAN: UnicodeString;
begin
  Result := ChildNodes['IBAN'].Text;
end;

procedure TXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow.Set_IBAN(const Value: UnicodeString);
begin
  ChildNodes['IBAN'].NodeValue := Value;
end;

function TXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow.Get_Presentation: UnicodeString;
begin
  Result := ChildNodes['Presentation'].Text;
end;

procedure TXMLSaleDocument_CompanyBank_BillsCAs_BillsCAsRow.Set_Presentation(const Value: UnicodeString);
begin
  ChildNodes['Presentation'].NodeValue := Value;
end;

{ TXMLSaleDocument_SaleDocId }

function TXMLSaleDocument_SaleDocId.Get_PrimaryKey: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['primaryKey'].Text);
end;

procedure TXMLSaleDocument_SaleDocId.Set_PrimaryKey(const Value: Boolean);
begin
  SetAttribute('primaryKey', Value);
end;

{ TXMLSaleDocument_Company }

procedure TXMLSaleDocument_Company.AfterConstruction;
begin
  RegisterChildNode('Company', TXMLSaleDocument_Company_Company);
  inherited;
end;

function TXMLSaleDocument_Company.Get_ExternalReference: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['externalReference'].Text);
end;

procedure TXMLSaleDocument_Company.Set_ExternalReference(const Value: Boolean);
begin
  SetAttribute('externalReference', Value);
end;

function TXMLSaleDocument_Company.Get_Company: IXMLSaleDocument_Company_Company;
begin
  Result := ChildNodes['Company'] as IXMLSaleDocument_Company_Company;
end;

{ TXMLSaleDocument_Company_Company }

function TXMLSaleDocument_Company_Company.Get_Master: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['master'].Text);
end;

procedure TXMLSaleDocument_Company_Company.Set_Master(const Value: Boolean);
begin
  SetAttribute('master', Value);
end;

function TXMLSaleDocument_Company_Company.Get_CompanyId: Integer;
begin
  Result := XmlStrToInt(ChildNodes['CompanyId'].Text);
end;

procedure TXMLSaleDocument_Company_Company.Set_CompanyId(const Value: Integer);
begin
  ChildNodes['CompanyId'].NodeValue := Value;
end;

function TXMLSaleDocument_Company_Company.Get_CompanyName: UnicodeString;
begin
  Result := ChildNodes['CompanyName'].Text;
end;

procedure TXMLSaleDocument_Company_Company.Set_CompanyName(const Value: UnicodeString);
begin
  ChildNodes['CompanyName'].NodeValue := Value;
end;

function TXMLSaleDocument_Company_Company.Get_TaxIdNumber: UnicodeString;
begin
  Result := ChildNodes['TaxIdNumber'].Text;
end;

procedure TXMLSaleDocument_Company_Company.Set_TaxIdNumber(const Value: UnicodeString);
begin
  ChildNodes['TaxIdNumber'].NodeValue := Value;
end;

function TXMLSaleDocument_Company_Company.Get_FiscalCode: UnicodeString;
begin
  Result := ChildNodes['FiscalCode'].Text;
end;

procedure TXMLSaleDocument_Company_Company.Set_FiscalCode(const Value: UnicodeString);
begin
  ChildNodes['FiscalCode'].NodeValue := Value;
end;

function TXMLSaleDocument_Company_Company.Get_Address: UnicodeString;
begin
  Result := ChildNodes['Address'].Text;
end;

procedure TXMLSaleDocument_Company_Company.Set_Address(const Value: UnicodeString);
begin
  ChildNodes['Address'].NodeValue := Value;
end;

function TXMLSaleDocument_Company_Company.Get_ZIPCode: UnicodeString;
begin
  Result := ChildNodes['ZIPCode'].Text;
end;

procedure TXMLSaleDocument_Company_Company.Set_ZIPCode(const Value: UnicodeString);
begin
  ChildNodes['ZIPCode'].NodeValue := Value;
end;

function TXMLSaleDocument_Company_Company.Get_City: UnicodeString;
begin
  Result := ChildNodes['City'].Text;
end;

procedure TXMLSaleDocument_Company_Company.Set_City(const Value: UnicodeString);
begin
  ChildNodes['City'].NodeValue := Value;
end;

function TXMLSaleDocument_Company_Company.Get_County: UnicodeString;
begin
  Result := ChildNodes['County'].Text;
end;

procedure TXMLSaleDocument_Company_Company.Set_County(const Value: UnicodeString);
begin
  ChildNodes['County'].NodeValue := Value;
end;

function TXMLSaleDocument_Company_Company.Get_ISOCountryCode: UnicodeString;
begin
  Result := ChildNodes['ISOCountryCode'].Text;
end;

procedure TXMLSaleDocument_Company_Company.Set_ISOCountryCode(const Value: UnicodeString);
begin
  ChildNodes['ISOCountryCode'].NodeValue := Value;
end;

function TXMLSaleDocument_Company_Company.Get_NaturalPerson: UnicodeString;
begin
  Result := ChildNodes['NaturalPerson'].Text;
end;

procedure TXMLSaleDocument_Company_Company.Set_NaturalPerson(const Value: UnicodeString);
begin
  ChildNodes['NaturalPerson'].NodeValue := Value;
end;

function TXMLSaleDocument_Company_Company.Get_CBICode: UnicodeString;
begin
  Result := ChildNodes['CBICode'].Text;
end;

procedure TXMLSaleDocument_Company_Company.Set_CBICode(const Value: UnicodeString);
begin
  ChildNodes['CBICode'].NodeValue := Value;
end;

{ TXMLNotes }

procedure TXMLNotes.AfterConstruction;
begin
  RegisterChildNode('SaleDocId', TXMLNotes_SaleDocId);
  inherited;
end;

function TXMLNotes.Get_UpdateType: Integer;
begin
  Result := XmlStrToInt(AttributeNodes['updateType'].Text);
end;

procedure TXMLNotes.Set_UpdateType(const Value: Integer);
begin
  SetAttribute('updateType', Value);
end;

function TXMLNotes.Get_SaleDocId: IXMLNotes_SaleDocId;
begin
  Result := ChildNodes['SaleDocId'] as IXMLNotes_SaleDocId;
end;

function TXMLNotes.Get_Notes: UnicodeString;
begin
  Result := ChildNodes['Notes'].Text;
end;

procedure TXMLNotes.Set_Notes(const Value: UnicodeString);
begin
  ChildNodes['Notes'].NodeValue := Value;
end;

{ TXMLNotes_SaleDocId }

function TXMLNotes_SaleDocId.Get_PrimaryKey: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['primaryKey'].Text);
end;

procedure TXMLNotes_SaleDocId.Set_PrimaryKey(const Value: Boolean);
begin
  SetAttribute('primaryKey', Value);
end;

{ TXMLDetail }

procedure TXMLDetail.AfterConstruction;
begin
  RegisterChildNode('DetailRow', TXMLDetailRow);
  ItemTag := 'DetailRow';
  ItemInterface := IXMLDetailRow;
  inherited;
end;

function TXMLDetail.Get_UpdateType: Integer;
begin
  Result := XmlStrToInt(AttributeNodes['updateType'].Text);
end;

procedure TXMLDetail.Set_UpdateType(const Value: Integer);
begin
  SetAttribute('updateType', Value);
end;

function TXMLDetail.Get_DetailRow(const Index: Integer): IXMLDetailRow;
begin
  Result := List[Index] as IXMLDetailRow;
end;

function TXMLDetail.Add: IXMLDetailRow;
begin
  Result := AddItem(-1) as IXMLDetailRow;
end;

function TXMLDetail.Insert(const Index: Integer): IXMLDetailRow;
begin
  Result := AddItem(Index) as IXMLDetailRow;
end;

{ TXMLDetailRow }

procedure TXMLDetailRow.AfterConstruction;
begin
  RegisterChildNode('SaleDocId', TXMLDetailRow_SaleDocId);
  RegisterChildNode('Line', TXMLDetailRow_Line);
  RegisterChildNode('LineType', TXMLDetailRow_LineType);
  RegisterChildNode('UnitsOfMeasure', TXMLDetailRow_UnitsOfMeasure);
  RegisterChildNode('TaxCode', TXMLDetailRow_TaxCode);
  RegisterChildNode('DeliveryNote', TXMLDetailRow_DeliveryNote);
  RegisterChildNode('ReferenceDocType', TXMLDetailRow_ReferenceDocType);
  inherited;
end;

function TXMLDetailRow.Get_SaleDocId: IXMLDetailRow_SaleDocId;
begin
  Result := ChildNodes['SaleDocId'] as IXMLDetailRow_SaleDocId;
end;

function TXMLDetailRow.Get_Line: IXMLDetailRow_Line;
begin
  Result := ChildNodes['Line'] as IXMLDetailRow_Line;
end;

function TXMLDetailRow.Get_LineType: IXMLDetailRow_LineType;
begin
  Result := ChildNodes['LineType'] as IXMLDetailRow_LineType;
end;

function TXMLDetailRow.Get_Description: UnicodeString;
begin
  Result := ChildNodes['Description'].Text;
end;

procedure TXMLDetailRow.Set_Description(const Value: UnicodeString);
begin
  ChildNodes['Description'].NodeValue := Value;
end;

function TXMLDetailRow.Get_Item: UnicodeString;
begin
  Result := ChildNodes['Item'].Text;
end;

procedure TXMLDetailRow.Set_Item(const Value: UnicodeString);
begin
  ChildNodes['Item'].NodeValue := Value;
end;

function TXMLDetailRow.Get_UnitsOfMeasure: IXMLDetailRow_UnitsOfMeasure;
begin
  Result := ChildNodes['UnitsOfMeasure'] as IXMLDetailRow_UnitsOfMeasure;
end;

function TXMLDetailRow.Get_Qty: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['Qty'].Text);
end;

procedure TXMLDetailRow.Set_Qty(const Value: Double);
begin
  ChildNodes['Qty'].NodeValue := Value;
end;

function TXMLDetailRow.Get_UnitValue: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['UnitValue'].Text);
end;

procedure TXMLDetailRow.Set_UnitValue(const Value: Double);
begin
  ChildNodes['UnitValue'].NodeValue := Value;
end;

function TXMLDetailRow.Get_TaxableAmount: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['TaxableAmount'].Text);
end;

procedure TXMLDetailRow.Set_TaxableAmount(const Value: Double);
begin
  ChildNodes['TaxableAmount'].NodeValue := Value;
end;

function TXMLDetailRow.Get_TaxCode: IXMLDetailRow_TaxCode;
begin
  Result := ChildNodes['TaxCode'] as IXMLDetailRow_TaxCode;
end;

function TXMLDetailRow.Get_TotalAmount: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['TotalAmount'].Text);
end;

procedure TXMLDetailRow.Set_TotalAmount(const Value: Double);
begin
  ChildNodes['TotalAmount'].NodeValue := Value;
end;

function TXMLDetailRow.Get_Discount1: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['Discount1'].Text);
end;

procedure TXMLDetailRow.Set_Discount1(const Value: Double);
begin
  ChildNodes['Discount1'].NodeValue := Value;
end;

function TXMLDetailRow.Get_Discount2: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['Discount2'].Text);
end;

procedure TXMLDetailRow.Set_Discount2(const Value: Double);
begin
  ChildNodes['Discount2'].NodeValue := Value;
end;

function TXMLDetailRow.Get_DiscountFormula: UnicodeString;
begin
  Result := ChildNodes['DiscountFormula'].Text;
end;

procedure TXMLDetailRow.Set_DiscountFormula(const Value: UnicodeString);
begin
  ChildNodes['DiscountFormula'].NodeValue := Value;
end;

function TXMLDetailRow.Get_DiscountAmount: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['DiscountAmount'].Text);
end;

procedure TXMLDetailRow.Set_DiscountAmount(const Value: Double);
begin
  ChildNodes['DiscountAmount'].NodeValue := Value;
end;

function TXMLDetailRow.Get_NoOfPacks: SmallInt;
begin
  Result := XmlStrToInt(ChildNodes['NoOfPacks'].Text);
end;

procedure TXMLDetailRow.Set_NoOfPacks(const Value: SmallInt);
begin
  ChildNodes['NoOfPacks'].NodeValue := Value;
end;

function TXMLDetailRow.Get_PacksUoM: UnicodeString;
begin
  Result := ChildNodes['PacksUoM'].Text;
end;

procedure TXMLDetailRow.Set_PacksUoM(const Value: UnicodeString);
begin
  ChildNodes['PacksUoM'].NodeValue := Value;
end;

function TXMLDetailRow.Get_GrossWeight: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['GrossWeight'].Text);
end;

procedure TXMLDetailRow.Set_GrossWeight(const Value: Double);
begin
  ChildNodes['GrossWeight'].NodeValue := Value;
end;

function TXMLDetailRow.Get_NetWeight: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['NetWeight'].Text);
end;

procedure TXMLDetailRow.Set_NetWeight(const Value: Double);
begin
  ChildNodes['NetWeight'].NodeValue := Value;
end;

function TXMLDetailRow.Get_SaleOrdId: Integer;
begin
  Result := XmlStrToInt(ChildNodes['SaleOrdId'].Text);
end;

procedure TXMLDetailRow.Set_SaleOrdId(const Value: Integer);
begin
  ChildNodes['SaleOrdId'].NodeValue := Value;
end;

function TXMLDetailRow.Get_SaleOrdNo: UnicodeString;
begin
  Result := ChildNodes['SaleOrdNo'].Text;
end;

procedure TXMLDetailRow.Set_SaleOrdNo(const Value: UnicodeString);
begin
  ChildNodes['SaleOrdNo'].NodeValue := Value;
end;

function TXMLDetailRow.Get_Packing: UnicodeString;
begin
  Result := ChildNodes['Packing'].Text;
end;

procedure TXMLDetailRow.Set_Packing(const Value: UnicodeString);
begin
  ChildNodes['Packing'].NodeValue := Value;
end;

function TXMLDetailRow.Get_CombinedNomenclature: UnicodeString;
begin
  Result := ChildNodes['CombinedNomenclature'].Text;
end;

procedure TXMLDetailRow.Set_CombinedNomenclature(const Value: UnicodeString);
begin
  ChildNodes['CombinedNomenclature'].NodeValue := Value;
end;

function TXMLDetailRow.Get_CountyOfOrigin: UnicodeString;
begin
  Result := ChildNodes['CountyOfOrigin'].Text;
end;

procedure TXMLDetailRow.Set_CountyOfOrigin(const Value: UnicodeString);
begin
  ChildNodes['CountyOfOrigin'].NodeValue := Value;
end;

function TXMLDetailRow.Get_DeliveryNote: IXMLDetailRow_DeliveryNote;
begin
  Result := ChildNodes['DeliveryNote'] as IXMLDetailRow_DeliveryNote;
end;

function TXMLDetailRow.Get_ReferenceDocType: IXMLDetailRow_ReferenceDocType;
begin
  Result := ChildNodes['ReferenceDocType'] as IXMLDetailRow_ReferenceDocType;
end;

function TXMLDetailRow.Get_CPACode: UnicodeString;
begin
  Result := ChildNodes['CPACode'].Text;
end;

procedure TXMLDetailRow.Set_CPACode(const Value: UnicodeString);
begin
  ChildNodes['CPACode'].NodeValue := Value;
end;

{ TXMLDetailRow_SaleDocId }

function TXMLDetailRow_SaleDocId.Get_PrimaryKey: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['primaryKey'].Text);
end;

procedure TXMLDetailRow_SaleDocId.Set_PrimaryKey(const Value: Boolean);
begin
  SetAttribute('primaryKey', Value);
end;

{ TXMLDetailRow_Line }

function TXMLDetailRow_Line.Get_PrimaryKey: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['primaryKey'].Text);
end;

procedure TXMLDetailRow_Line.Set_PrimaryKey(const Value: Boolean);
begin
  SetAttribute('primaryKey', Value);
end;

{ TXMLDetailRow_LineType }

function TXMLDetailRow_LineType.Get_Enum: UnicodeString;
begin
  Result := AttributeNodes['enum'].Text;
end;

procedure TXMLDetailRow_LineType.Set_Enum(const Value: UnicodeString);
begin
  SetAttribute('enum', Value);
end;

function TXMLDetailRow_LineType.Get_EnumNameSpace: UnicodeString;
begin
  Result := AttributeNodes['EnumNameSpace'].Text;
end;

procedure TXMLDetailRow_LineType.Set_EnumNameSpace(const Value: UnicodeString);
begin
  SetAttribute('EnumNameSpace', Value);
end;

{ TXMLDetailRow_UnitsOfMeasure }

procedure TXMLDetailRow_UnitsOfMeasure.AfterConstruction;
begin
  RegisterChildNode('UnitsOfMeasure', TXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure);
  inherited;
end;

function TXMLDetailRow_UnitsOfMeasure.Get_ExternalReference: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['externalReference'].Text);
end;

procedure TXMLDetailRow_UnitsOfMeasure.Set_ExternalReference(const Value: Boolean);
begin
  SetAttribute('externalReference', Value);
end;

function TXMLDetailRow_UnitsOfMeasure.Get_UnitsOfMeasure: IXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure;
begin
  Result := ChildNodes['UnitsOfMeasure'] as IXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure;
end;

{ TXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure }

function TXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure.Get_Master: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['master'].Text);
end;

procedure TXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure.Set_Master(const Value: Boolean);
begin
  SetAttribute('master', Value);
end;

function TXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure.Get_BaseUoM: UnicodeString;
begin
  Result := ChildNodes['BaseUoM'].Text;
end;

procedure TXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure.Set_BaseUoM(const Value: UnicodeString);
begin
  ChildNodes['BaseUoM'].NodeValue := Value;
end;

function TXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure.Get_Description: UnicodeString;
begin
  Result := ChildNodes['Description'].Text;
end;

procedure TXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure.Set_Description(const Value: UnicodeString);
begin
  ChildNodes['Description'].NodeValue := Value;
end;

function TXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure.Get_Symbol: UnicodeString;
begin
  Result := ChildNodes['Symbol'].Text;
end;

procedure TXMLDetailRow_UnitsOfMeasure_UnitsOfMeasure.Set_Symbol(const Value: UnicodeString);
begin
  ChildNodes['Symbol'].NodeValue := Value;
end;

{ TXMLDetailRow_TaxCode }

procedure TXMLDetailRow_TaxCode.AfterConstruction;
begin
  RegisterChildNode('TaxCode', TXMLDetailRow_TaxCode_TaxCode);
  inherited;
end;

function TXMLDetailRow_TaxCode.Get_ExternalReference: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['externalReference'].Text);
end;

procedure TXMLDetailRow_TaxCode.Set_ExternalReference(const Value: Boolean);
begin
  SetAttribute('externalReference', Value);
end;

function TXMLDetailRow_TaxCode.Get_TaxCode: IXMLDetailRow_TaxCode_TaxCode;
begin
  Result := ChildNodes['TaxCode'] as IXMLDetailRow_TaxCode_TaxCode;
end;

{ TXMLDetailRow_TaxCode_TaxCode }

function TXMLDetailRow_TaxCode_TaxCode.Get_Master: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['master'].Text);
end;

procedure TXMLDetailRow_TaxCode_TaxCode.Set_Master(const Value: Boolean);
begin
  SetAttribute('master', Value);
end;

function TXMLDetailRow_TaxCode_TaxCode.Get_TaxCode: UnicodeString;
begin
  Result := ChildNodes['TaxCode'].Text;
end;

procedure TXMLDetailRow_TaxCode_TaxCode.Set_TaxCode(const Value: UnicodeString);
begin
  ChildNodes['TaxCode'].NodeValue := Value;
end;

function TXMLDetailRow_TaxCode_TaxCode.Get_Description: UnicodeString;
begin
  Result := ChildNodes['Description'].Text;
end;

procedure TXMLDetailRow_TaxCode_TaxCode.Set_Description(const Value: UnicodeString);
begin
  ChildNodes['Description'].NodeValue := Value;
end;

function TXMLDetailRow_TaxCode_TaxCode.Get_Perc: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['Perc'].Text);
end;

procedure TXMLDetailRow_TaxCode_TaxCode.Set_Perc(const Value: Double);
begin
  ChildNodes['Perc'].NodeValue := Value;
end;

{ TXMLDetailRow_DeliveryNote }

procedure TXMLDetailRow_DeliveryNote.AfterConstruction;
begin
  RegisterChildNode('SaleDocument', TXMLDetailRow_DeliveryNote_SaleDocument);
  inherited;
end;

function TXMLDetailRow_DeliveryNote.Get_ExternalReference: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['externalReference'].Text);
end;

procedure TXMLDetailRow_DeliveryNote.Set_ExternalReference(const Value: Boolean);
begin
  SetAttribute('externalReference', Value);
end;

function TXMLDetailRow_DeliveryNote.Get_SaleDocument: IXMLDetailRow_DeliveryNote_SaleDocument;
begin
  Result := ChildNodes['SaleDocument'] as IXMLDetailRow_DeliveryNote_SaleDocument;
end;

{ TXMLDetailRow_DeliveryNote_SaleDocument }

function TXMLDetailRow_DeliveryNote_SaleDocument.Get_Master: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['master'].Text);
end;

procedure TXMLDetailRow_DeliveryNote_SaleDocument.Set_Master(const Value: Boolean);
begin
  SetAttribute('master', Value);
end;

function TXMLDetailRow_DeliveryNote_SaleDocument.Get_DocNo: UnicodeString;
begin
  Result := ChildNodes['DocNo'].Text;
end;

procedure TXMLDetailRow_DeliveryNote_SaleDocument.Set_DocNo(const Value: UnicodeString);
begin
  ChildNodes['DocNo'].NodeValue := Value;
end;

function TXMLDetailRow_DeliveryNote_SaleDocument.Get_DocumentDate: UnicodeString;
begin
  Result := ChildNodes['DocumentDate'].Text;
end;

procedure TXMLDetailRow_DeliveryNote_SaleDocument.Set_DocumentDate(const Value: UnicodeString);
begin
  ChildNodes['DocumentDate'].NodeValue := Value;
end;

function TXMLDetailRow_DeliveryNote_SaleDocument.Get_SaleDocId: Integer;
begin
  Result := XmlStrToInt(ChildNodes['SaleDocId'].Text);
end;

procedure TXMLDetailRow_DeliveryNote_SaleDocument.Set_SaleDocId(const Value: Integer);
begin
  ChildNodes['SaleDocId'].NodeValue := Value;
end;

function TXMLDetailRow_DeliveryNote_SaleDocument.Get_TBGuid: UnicodeString;
begin
  Result := ChildNodes['TBGuid'].Text;
end;

procedure TXMLDetailRow_DeliveryNote_SaleDocument.Set_TBGuid(const Value: UnicodeString);
begin
  ChildNodes['TBGuid'].NodeValue := Value;
end;

{ TXMLDetailRow_ReferenceDocType }

function TXMLDetailRow_ReferenceDocType.Get_Enum: UnicodeString;
begin
  Result := AttributeNodes['enum'].Text;
end;

procedure TXMLDetailRow_ReferenceDocType.Set_Enum(const Value: UnicodeString);
begin
  SetAttribute('enum', Value);
end;

function TXMLDetailRow_ReferenceDocType.Get_EnumNameSpace: UnicodeString;
begin
  Result := AttributeNodes['EnumNameSpace'].Text;
end;

procedure TXMLDetailRow_ReferenceDocType.Set_EnumNameSpace(const Value: UnicodeString);
begin
  SetAttribute('EnumNameSpace', Value);
end;

{ TXMLTaxSummary }

procedure TXMLTaxSummary.AfterConstruction;
begin
  RegisterChildNode('TaxSummaryRow', TXMLTaxSummaryRow);
  ItemTag := 'TaxSummaryRow';
  ItemInterface := IXMLTaxSummaryRow;
  inherited;
end;

function TXMLTaxSummary.Get_UpdateType: Integer;
begin
  Result := XmlStrToInt(AttributeNodes['updateType'].Text);
end;

procedure TXMLTaxSummary.Set_UpdateType(const Value: Integer);
begin
  SetAttribute('updateType', Value);
end;

function TXMLTaxSummary.Get_TaxSummaryRow(const Index: Integer): IXMLTaxSummaryRow;
begin
  Result := List[Index] as IXMLTaxSummaryRow;
end;

function TXMLTaxSummary.Add: IXMLTaxSummaryRow;
begin
  Result := AddItem(-1) as IXMLTaxSummaryRow;
end;

function TXMLTaxSummary.Insert(const Index: Integer): IXMLTaxSummaryRow;
begin
  Result := AddItem(Index) as IXMLTaxSummaryRow;
end;

{ TXMLTaxSummaryRow }

procedure TXMLTaxSummaryRow.AfterConstruction;
begin
  RegisterChildNode('SaleDocId', TXMLTaxSummaryRow_SaleDocId);
  RegisterChildNode('TaxCode', TXMLTaxSummaryRow_TaxCode);
  RegisterChildNode('TaxCodeSummaryRow', TXMLTaxSummaryRow_TaxCodeSummaryRow);
  inherited;
end;

function TXMLTaxSummaryRow.Get_SaleDocId: IXMLTaxSummaryRow_SaleDocId;
begin
  Result := ChildNodes['SaleDocId'] as IXMLTaxSummaryRow_SaleDocId;
end;

function TXMLTaxSummaryRow.Get_TaxCode: IXMLTaxSummaryRow_TaxCode;
begin
  Result := ChildNodes['TaxCode'] as IXMLTaxSummaryRow_TaxCode;
end;

function TXMLTaxSummaryRow.Get_TaxCodeSummaryRow: IXMLTaxSummaryRow_TaxCodeSummaryRow;
begin
  Result := ChildNodes['TaxCodeSummaryRow'] as IXMLTaxSummaryRow_TaxCodeSummaryRow;
end;

function TXMLTaxSummaryRow.Get_TaxableAmount: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['TaxableAmount'].Text);
end;

procedure TXMLTaxSummaryRow.Set_TaxableAmount(const Value: Double);
begin
  ChildNodes['TaxableAmount'].NodeValue := Value;
end;

function TXMLTaxSummaryRow.Get_TaxAmount: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['TaxAmount'].Text);
end;

procedure TXMLTaxSummaryRow.Set_TaxAmount(const Value: Double);
begin
  ChildNodes['TaxAmount'].NodeValue := Value;
end;

function TXMLTaxSummaryRow.Get_TotalAmount: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['TotalAmount'].Text);
end;

procedure TXMLTaxSummaryRow.Set_TotalAmount(const Value: Double);
begin
  ChildNodes['TotalAmount'].NodeValue := Value;
end;

function TXMLTaxSummaryRow.Get_TaxableAmountDocCurr: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['TaxableAmountDocCurr'].Text);
end;

procedure TXMLTaxSummaryRow.Set_TaxableAmountDocCurr(const Value: Double);
begin
  ChildNodes['TaxableAmountDocCurr'].NodeValue := Value;
end;

function TXMLTaxSummaryRow.Get_TaxAmountDocCurr: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['TaxAmountDocCurr'].Text);
end;

procedure TXMLTaxSummaryRow.Set_TaxAmountDocCurr(const Value: Double);
begin
  ChildNodes['TaxAmountDocCurr'].NodeValue := Value;
end;

function TXMLTaxSummaryRow.Get_TotalAmountDocCurr: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['TotalAmountDocCurr'].Text);
end;

procedure TXMLTaxSummaryRow.Set_TotalAmountDocCurr(const Value: Double);
begin
  ChildNodes['TotalAmountDocCurr'].NodeValue := Value;
end;

{ TXMLTaxSummaryRow_SaleDocId }

function TXMLTaxSummaryRow_SaleDocId.Get_PrimaryKey: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['primaryKey'].Text);
end;

procedure TXMLTaxSummaryRow_SaleDocId.Set_PrimaryKey(const Value: Boolean);
begin
  SetAttribute('primaryKey', Value);
end;

{ TXMLTaxSummaryRow_TaxCode }

function TXMLTaxSummaryRow_TaxCode.Get_PrimaryKey: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['primaryKey'].Text);
end;

procedure TXMLTaxSummaryRow_TaxCode.Set_PrimaryKey(const Value: Boolean);
begin
  SetAttribute('primaryKey', Value);
end;

{ TXMLTaxSummaryRow_TaxCodeSummaryRow }

procedure TXMLTaxSummaryRow_TaxCodeSummaryRow.AfterConstruction;
begin
  RegisterChildNode('TaxCode', TXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode);
  inherited;
end;

function TXMLTaxSummaryRow_TaxCodeSummaryRow.Get_ExternalReference: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['externalReference'].Text);
end;

procedure TXMLTaxSummaryRow_TaxCodeSummaryRow.Set_ExternalReference(const Value: Boolean);
begin
  SetAttribute('externalReference', Value);
end;

function TXMLTaxSummaryRow_TaxCodeSummaryRow.Get_TaxCode: IXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode;
begin
  Result := ChildNodes['TaxCode'] as IXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode;
end;

{ TXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode }

function TXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode.Get_Master: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['master'].Text);
end;

procedure TXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode.Set_Master(const Value: Boolean);
begin
  SetAttribute('master', Value);
end;

function TXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode.Get_TaxCode: UnicodeString;
begin
  Result := ChildNodes['TaxCode'].Text;
end;

procedure TXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode.Set_TaxCode(const Value: UnicodeString);
begin
  ChildNodes['TaxCode'].NodeValue := Value;
end;

function TXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode.Get_Description: UnicodeString;
begin
  Result := ChildNodes['Description'].Text;
end;

procedure TXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode.Set_Description(const Value: UnicodeString);
begin
  ChildNodes['Description'].NodeValue := Value;
end;

function TXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode.Get_Perc: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['Perc'].Text);
end;

procedure TXMLTaxSummaryRow_TaxCodeSummaryRow_TaxCode.Set_Perc(const Value: Double);
begin
  ChildNodes['Perc'].NodeValue := Value;
end;

{ TXMLCharges }

procedure TXMLCharges.AfterConstruction;
begin
  RegisterChildNode('SaleDocId', TXMLCharges_SaleDocId);
  RegisterChildNode('PaymentTerm', TXMLCharges_PaymentTerm);
  inherited;
end;

function TXMLCharges.Get_UpdateType: Integer;
begin
  Result := XmlStrToInt(AttributeNodes['updateType'].Text);
end;

procedure TXMLCharges.Set_UpdateType(const Value: Integer);
begin
  SetAttribute('updateType', Value);
end;

function TXMLCharges.Get_SaleDocId: IXMLCharges_SaleDocId;
begin
  Result := ChildNodes['SaleDocId'] as IXMLCharges_SaleDocId;
end;

function TXMLCharges.Get_TaxableAmount: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['TaxableAmount'].Text);
end;

procedure TXMLCharges.Set_TaxableAmount(const Value: Double);
begin
  ChildNodes['TaxableAmount'].NodeValue := Value;
end;

function TXMLCharges.Get_TaxAmount: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['TaxAmount'].Text);
end;

procedure TXMLCharges.Set_TaxAmount(const Value: Double);
begin
  ChildNodes['TaxAmount'].NodeValue := Value;
end;

function TXMLCharges.Get_TotalAmount: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['TotalAmount'].Text);
end;

procedure TXMLCharges.Set_TotalAmount(const Value: Double);
begin
  ChildNodes['TotalAmount'].NodeValue := Value;
end;

function TXMLCharges.Get_GoodsAmount: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['GoodsAmount'].Text);
end;

procedure TXMLCharges.Set_GoodsAmount(const Value: Double);
begin
  ChildNodes['GoodsAmount'].NodeValue := Value;
end;

function TXMLCharges.Get_ServiceAmounts: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['ServiceAmounts'].Text);
end;

procedure TXMLCharges.Set_ServiceAmounts(const Value: Double);
begin
  ChildNodes['ServiceAmounts'].NodeValue := Value;
end;

function TXMLCharges.Get_PayableAmount: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['PayableAmount'].Text);
end;

procedure TXMLCharges.Set_PayableAmount(const Value: Double);
begin
  ChildNodes['PayableAmount'].NodeValue := Value;
end;

function TXMLCharges.Get_FreeSamples: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['FreeSamples'].Text);
end;

procedure TXMLCharges.Set_FreeSamples(const Value: Double);
begin
  ChildNodes['FreeSamples'].NodeValue := Value;
end;

function TXMLCharges.Get_Discounts: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['Discounts'].Text);
end;

procedure TXMLCharges.Set_Discounts(const Value: Double);
begin
  ChildNodes['Discounts'].NodeValue := Value;
end;

function TXMLCharges.Get_Allowances: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['Allowances'].Text);
end;

procedure TXMLCharges.Set_Allowances(const Value: Double);
begin
  ChildNodes['Allowances'].NodeValue := Value;
end;

function TXMLCharges.Get_Advance: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['Advance'].Text);
end;

procedure TXMLCharges.Set_Advance(const Value: Double);
begin
  ChildNodes['Advance'].NodeValue := Value;
end;

function TXMLCharges.Get_PackagingCharges: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['PackagingCharges'].Text);
end;

procedure TXMLCharges.Set_PackagingCharges(const Value: Double);
begin
  ChildNodes['PackagingCharges'].NodeValue := Value;
end;

function TXMLCharges.Get_ShippingCharges: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['ShippingCharges'].Text);
end;

procedure TXMLCharges.Set_ShippingCharges(const Value: Double);
begin
  ChildNodes['ShippingCharges'].NodeValue := Value;
end;

function TXMLCharges.Get_StampsCharges: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['StampsCharges'].Text);
end;

procedure TXMLCharges.Set_StampsCharges(const Value: Double);
begin
  ChildNodes['StampsCharges'].NodeValue := Value;
end;

function TXMLCharges.Get_CollectionCharges: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['CollectionCharges'].Text);
end;

procedure TXMLCharges.Set_CollectionCharges(const Value: Double);
begin
  ChildNodes['CollectionCharges'].NodeValue := Value;
end;

function TXMLCharges.Get_AdditionalCharges: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['AdditionalCharges'].Text);
end;

procedure TXMLCharges.Set_AdditionalCharges(const Value: Double);
begin
  ChildNodes['AdditionalCharges'].NodeValue := Value;
end;

function TXMLCharges.Get_CashOnDeliveryCharges: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['CashOnDeliveryCharges'].Text);
end;

procedure TXMLCharges.Set_CashOnDeliveryCharges(const Value: Double);
begin
  ChildNodes['CashOnDeliveryCharges'].NodeValue := Value;
end;

function TXMLCharges.Get_TotalAmountDocCurr: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['TotalAmountDocCurr'].Text);
end;

procedure TXMLCharges.Set_TotalAmountDocCurr(const Value: Double);
begin
  ChildNodes['TotalAmountDocCurr'].NodeValue := Value;
end;

function TXMLCharges.Get_TaxableAmountDocCurr: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['TaxableAmountDocCurr'].Text);
end;

procedure TXMLCharges.Set_TaxableAmountDocCurr(const Value: Double);
begin
  ChildNodes['TaxableAmountDocCurr'].NodeValue := Value;
end;

function TXMLCharges.Get_TaxAmountDocCurr: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['TaxAmountDocCurr'].Text);
end;

procedure TXMLCharges.Set_TaxAmountDocCurr(const Value: Double);
begin
  ChildNodes['TaxAmountDocCurr'].NodeValue := Value;
end;

function TXMLCharges.Get_WithholdingTaxManagement: UnicodeString;
begin
  Result := ChildNodes['WithholdingTaxManagement'].Text;
end;

procedure TXMLCharges.Set_WithholdingTaxManagement(const Value: UnicodeString);
begin
  ChildNodes['WithholdingTaxManagement'].NodeValue := Value;
end;

function TXMLCharges.Get_ProfessionalsCash: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['ProfessionalsCash'].Text);
end;

procedure TXMLCharges.Set_ProfessionalsCash(const Value: Double);
begin
  ChildNodes['ProfessionalsCash'].NodeValue := Value;
end;

function TXMLCharges.Get_WithholdingTax: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['WithholdingTax'].Text);
end;

procedure TXMLCharges.Set_WithholdingTax(const Value: Double);
begin
  ChildNodes['WithholdingTax'].NodeValue := Value;
end;

function TXMLCharges.Get_PaymentTerm: IXMLCharges_PaymentTerm;
begin
  Result := ChildNodes['PaymentTerm'] as IXMLCharges_PaymentTerm;
end;

function TXMLCharges.Get_AmountsWithWHTax: UnicodeString;
begin
  Result := ChildNodes['AmountsWithWHTax'].Text;
end;

procedure TXMLCharges.Set_AmountsWithWHTax(const Value: UnicodeString);
begin
  ChildNodes['AmountsWithWHTax'].NodeValue := Value;
end;

{ TXMLCharges_SaleDocId }

function TXMLCharges_SaleDocId.Get_PrimaryKey: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['primaryKey'].Text);
end;

procedure TXMLCharges_SaleDocId.Set_PrimaryKey(const Value: Boolean);
begin
  SetAttribute('primaryKey', Value);
end;

{ TXMLCharges_PaymentTerm }

function TXMLCharges_PaymentTerm.Get_Enum: UnicodeString;
begin
  Result := AttributeNodes['enum'].Text;
end;

procedure TXMLCharges_PaymentTerm.Set_Enum(const Value: UnicodeString);
begin
  SetAttribute('enum', Value);
end;

function TXMLCharges_PaymentTerm.Get_EnumNameSpace: UnicodeString;
begin
  Result := AttributeNodes['EnumNameSpace'].Text;
end;

procedure TXMLCharges_PaymentTerm.Set_EnumNameSpace(const Value: UnicodeString);
begin
  SetAttribute('EnumNameSpace', Value);
end;

{ TXMLShipping }

procedure TXMLShipping.AfterConstruction;
begin
  RegisterChildNode('SaleDocId', TXMLShipping_SaleDocId);
  inherited;
end;

function TXMLShipping.Get_UpdateType: Integer;
begin
  Result := XmlStrToInt(AttributeNodes['updateType'].Text);
end;

procedure TXMLShipping.Set_UpdateType(const Value: Integer);
begin
  SetAttribute('updateType', Value);
end;

function TXMLShipping.Get_SaleDocId: IXMLShipping_SaleDocId;
begin
  Result := ChildNodes['SaleDocId'] as IXMLShipping_SaleDocId;
end;

function TXMLShipping.Get_NoOfPacks: SmallInt;
begin
  Result := XmlStrToInt(ChildNodes['NoOfPacks'].Text);
end;

procedure TXMLShipping.Set_NoOfPacks(const Value: SmallInt);
begin
  ChildNodes['NoOfPacks'].NodeValue := Value;
end;

function TXMLShipping.Get_NetWeight: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['NetWeight'].Text);
end;

procedure TXMLShipping.Set_NetWeight(const Value: Double);
begin
  ChildNodes['NetWeight'].NodeValue := Value;
end;

function TXMLShipping.Get_GrossWeight: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['GrossWeight'].Text);
end;

procedure TXMLShipping.Set_GrossWeight(const Value: Double);
begin
  ChildNodes['GrossWeight'].NodeValue := Value;
end;

function TXMLShipping.Get_DepartureDate: UnicodeString;
begin
  Result := ChildNodes['DepartureDate'].Text;
end;

procedure TXMLShipping.Set_DepartureDate(const Value: UnicodeString);
begin
  ChildNodes['DepartureDate'].NodeValue := Value;
end;

function TXMLShipping.Get_Transport: UnicodeString;
begin
  Result := ChildNodes['Transport'].Text;
end;

procedure TXMLShipping.Set_Transport(const Value: UnicodeString);
begin
  ChildNodes['Transport'].NodeValue := Value;
end;

function TXMLShipping.Get_PackageDescription: UnicodeString;
begin
  Result := ChildNodes['PackageDescription'].Text;
end;

procedure TXMLShipping.Set_PackageDescription(const Value: UnicodeString);
begin
  ChildNodes['PackageDescription'].NodeValue := Value;
end;

{ TXMLShipping_SaleDocId }

function TXMLShipping_SaleDocId.Get_PrimaryKey: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['primaryKey'].Text);
end;

procedure TXMLShipping_SaleDocId.Set_PrimaryKey(const Value: Boolean);
begin
  SetAttribute('primaryKey', Value);
end;

{ TXMLPymtSchedule }

procedure TXMLPymtSchedule.AfterConstruction;
begin
  RegisterChildNode('PymtScheduleRow', TXMLPymtScheduleRow);
  ItemTag := 'PymtScheduleRow';
  ItemInterface := IXMLPymtScheduleRow;
  inherited;
end;

function TXMLPymtSchedule.Get_UpdateType: Integer;
begin
  Result := XmlStrToInt(AttributeNodes['updateType'].Text);
end;

procedure TXMLPymtSchedule.Set_UpdateType(const Value: Integer);
begin
  SetAttribute('updateType', Value);
end;

function TXMLPymtSchedule.Get_PymtScheduleRow(const Index: Integer): IXMLPymtScheduleRow;
begin
  Result := List[Index] as IXMLPymtScheduleRow;
end;

function TXMLPymtSchedule.Add: IXMLPymtScheduleRow;
begin
  Result := AddItem(-1) as IXMLPymtScheduleRow;
end;

function TXMLPymtSchedule.Insert(const Index: Integer): IXMLPymtScheduleRow;
begin
  Result := AddItem(Index) as IXMLPymtScheduleRow;
end;

{ TXMLPymtScheduleRow }

procedure TXMLPymtScheduleRow.AfterConstruction;
begin
  RegisterChildNode('SaleDocId', TXMLPymtScheduleRow_SaleDocId);
  RegisterChildNode('InstallmentNo', TXMLPymtScheduleRow_InstallmentNo);
  RegisterChildNode('InstallmentType', TXMLPymtScheduleRow_InstallmentType);
  inherited;
end;

function TXMLPymtScheduleRow.Get_SaleDocId: IXMLPymtScheduleRow_SaleDocId;
begin
  Result := ChildNodes['SaleDocId'] as IXMLPymtScheduleRow_SaleDocId;
end;

function TXMLPymtScheduleRow.Get_InstallmentNo: IXMLPymtScheduleRow_InstallmentNo;
begin
  Result := ChildNodes['InstallmentNo'] as IXMLPymtScheduleRow_InstallmentNo;
end;

function TXMLPymtScheduleRow.Get_InstallmentType: IXMLPymtScheduleRow_InstallmentType;
begin
  Result := ChildNodes['InstallmentType'] as IXMLPymtScheduleRow_InstallmentType;
end;

function TXMLPymtScheduleRow.Get_DueDate: UnicodeString;
begin
  Result := ChildNodes['DueDate'].Text;
end;

procedure TXMLPymtScheduleRow.Set_DueDate(const Value: UnicodeString);
begin
  ChildNodes['DueDate'].NodeValue := Value;
end;

function TXMLPymtScheduleRow.Get_InstallmentAmount: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['InstallmentAmount'].Text);
end;

procedure TXMLPymtScheduleRow.Set_InstallmentAmount(const Value: Double);
begin
  ChildNodes['InstallmentAmount'].NodeValue := Value;
end;

function TXMLPymtScheduleRow.Get_InstallmentTaxAmount: Double;
begin
  Result := XmlStrToFloatExt(ChildNodes['InstallmentTaxAmount'].Text);
end;

procedure TXMLPymtScheduleRow.Set_InstallmentTaxAmount(const Value: Double);
begin
  ChildNodes['InstallmentTaxAmount'].NodeValue := Value;
end;

{ TXMLPymtScheduleRow_SaleDocId }

function TXMLPymtScheduleRow_SaleDocId.Get_PrimaryKey: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['primaryKey'].Text);
end;

procedure TXMLPymtScheduleRow_SaleDocId.Set_PrimaryKey(const Value: Boolean);
begin
  SetAttribute('primaryKey', Value);
end;

{ TXMLPymtScheduleRow_InstallmentNo }

function TXMLPymtScheduleRow_InstallmentNo.Get_PrimaryKey: Boolean;
begin
  Result := XmlStrToBool(AttributeNodes['primaryKey'].Text);
end;

procedure TXMLPymtScheduleRow_InstallmentNo.Set_PrimaryKey(const Value: Boolean);
begin
  SetAttribute('primaryKey', Value);
end;

{ TXMLPymtScheduleRow_InstallmentType }

function TXMLPymtScheduleRow_InstallmentType.Get_Enum: UnicodeString;
begin
  Result := AttributeNodes['enum'].Text;
end;

procedure TXMLPymtScheduleRow_InstallmentType.Set_Enum(const Value: UnicodeString);
begin
  SetAttribute('enum', Value);
end;

function TXMLPymtScheduleRow_InstallmentType.Get_EnumNameSpace: UnicodeString;
begin
  Result := AttributeNodes['EnumNameSpace'].Text;
end;

procedure TXMLPymtScheduleRow_InstallmentType.Set_EnumNameSpace(const Value: UnicodeString);
begin
  SetAttribute('EnumNameSpace', Value);
end;

{ TXMLDiagnostic }

procedure TXMLDiagnostic.AfterConstruction;
begin
  RegisterChildNode('Errors', TXMLDiagnostic_Errors);
  RegisterChildNode('Warnings', TXMLDiagnostic_Warnings);
  inherited;
end;

function TXMLDiagnostic.Get_Errors: IXMLDiagnostic_Errors;
begin
  Result := ChildNodes['Errors'] as IXMLDiagnostic_Errors;
end;

function TXMLDiagnostic.Get_Warnings: IXMLDiagnostic_Warnings;
begin
  Result := ChildNodes['Warnings'] as IXMLDiagnostic_Warnings;
end;

{ TXMLDiagnostic_Errors }

procedure TXMLDiagnostic_Errors.AfterConstruction;
begin
  RegisterChildNode('Error', TXMLDiagnostic_Errors_Error);
  ItemTag := 'Error';
  ItemInterface := IXMLDiagnostic_Errors_Error;
  inherited;
end;

function TXMLDiagnostic_Errors.Get_Error(const Index: Integer): IXMLDiagnostic_Errors_Error;
begin
  Result := List[Index] as IXMLDiagnostic_Errors_Error;
end;

function TXMLDiagnostic_Errors.Add: IXMLDiagnostic_Errors_Error;
begin
  Result := AddItem(-1) as IXMLDiagnostic_Errors_Error;
end;

function TXMLDiagnostic_Errors.Insert(const Index: Integer): IXMLDiagnostic_Errors_Error;
begin
  Result := AddItem(Index) as IXMLDiagnostic_Errors_Error;
end;

{ TXMLDiagnostic_Errors_Error }

function TXMLDiagnostic_Errors_Error.Get_Code: Integer;
begin
  Result := XmlStrToInt(ChildNodes['Code'].Text);
end;

procedure TXMLDiagnostic_Errors_Error.Set_Code(const Value: Integer);
begin
  ChildNodes['Code'].NodeValue := Value;
end;

function TXMLDiagnostic_Errors_Error.Get_Source: UnicodeString;
begin
  Result := ChildNodes['Source'].Text;
end;

procedure TXMLDiagnostic_Errors_Error.Set_Source(const Value: UnicodeString);
begin
  ChildNodes['Source'].NodeValue := Value;
end;

function TXMLDiagnostic_Errors_Error.Get_Message: UnicodeString;
begin
  Result := ChildNodes['Message'].Text;
end;

procedure TXMLDiagnostic_Errors_Error.Set_Message(const Value: UnicodeString);
begin
  ChildNodes['Message'].NodeValue := Value;
end;

{ TXMLDiagnostic_Warnings }

procedure TXMLDiagnostic_Warnings.AfterConstruction;
begin
  RegisterChildNode('Warning', TXMLDiagnostic_Warnings_Warning);
  ItemTag := 'Warning';
  ItemInterface := IXMLDiagnostic_Warnings_Warning;
  inherited;
end;

function TXMLDiagnostic_Warnings.Get_Warning(const Index: Integer): IXMLDiagnostic_Warnings_Warning;
begin
  Result := List[Index] as IXMLDiagnostic_Warnings_Warning;
end;

function TXMLDiagnostic_Warnings.Add: IXMLDiagnostic_Warnings_Warning;
begin
  Result := AddItem(-1) as IXMLDiagnostic_Warnings_Warning;
end;

function TXMLDiagnostic_Warnings.Insert(const Index: Integer): IXMLDiagnostic_Warnings_Warning;
begin
  Result := AddItem(Index) as IXMLDiagnostic_Warnings_Warning;
end;

{ TXMLDiagnostic_Warnings_Warning }

function TXMLDiagnostic_Warnings_Warning.Get_Code: Integer;
begin
  Result := XmlStrToInt(ChildNodes['Code'].Text);
end;

procedure TXMLDiagnostic_Warnings_Warning.Set_Code(const Value: Integer);
begin
  ChildNodes['Code'].NodeValue := Value;
end;

function TXMLDiagnostic_Warnings_Warning.Get_Source: UnicodeString;
begin
  Result := ChildNodes['Source'].Text;
end;

procedure TXMLDiagnostic_Warnings_Warning.Set_Source(const Value: UnicodeString);
begin
  ChildNodes['Source'].NodeValue := Value;
end;

function TXMLDiagnostic_Warnings_Warning.Get_Message: UnicodeString;
begin
  Result := ChildNodes['Message'].Text;
end;

procedure TXMLDiagnostic_Warnings_Warning.Set_Message(const Value: UnicodeString);
begin
  ChildNodes['Message'].NodeValue := Value;
end;

end.