unit SecurityIntf;

interface

type
  ISecurityForm = interface
    ['{25D0550E-570F-4144-9AA0-D52E5EBCAF58}']
    function GetAllowDelete: Boolean;
    function GetAllowEdit: Boolean;
    function GetAllowInsert: Boolean;
    function GetAllowView: Boolean;
    procedure SetAllowDelete(const Value: Boolean);
    procedure SetAllowEdit(const Value: Boolean);
    procedure SetAllowInsert(const Value: Boolean);
    procedure SetAllowView(const Value: Boolean);
    
    property AllowInsert: Boolean read GetAllowInsert write SetAllowInsert;
    property AllowEdit: Boolean read GetAllowEdit write SetAllowEdit;
    property AllowView: Boolean read GetAllowView write SetAllowView;
    property AllowDelete: Boolean read GetAllowDelete write SetAllowDelete;
  end;


implementation

end.
