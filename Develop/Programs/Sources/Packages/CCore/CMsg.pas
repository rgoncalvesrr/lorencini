unit CMsg;

interface

resourcestring

{$include cartel.inc}

{$IFDEF PT_BR}
  SInterfaceNotImpements = 'Objeto não implementa %s interface';
{$ELSEIF EN}
  SInterfaceNotImpements = 'Object not implements interface %s';
{$IFEND}

implementation

end.
