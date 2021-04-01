global SIPtoUSERtable:table[addr] of set[string]= table();


event http_header(c: connection, is_orig: bool, name :string, value :string)
{
	if (name=="USER-AGENT")
	{
		if (c$id$orig_h in SIPtoUSERtable) 
	  {
		  add SIPtoUSERtable[c$id$orig_h][value];
	  }
	  else
	  {
		  SIPtoUSERtable[c$id$orig_h]=set(value);
	  }
	}
}


event zeek_done()
{
	for (key in SIPtoUSERtable)
	{
		if( |SIPtoUSERtable[key]|>=3)
		print key,"is a proxy";
	}
}
