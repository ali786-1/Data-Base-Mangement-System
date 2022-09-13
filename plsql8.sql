declare 	
	dnum number:=&dnumber;
	count1 number;
begin
		delete from emp8 where dno=dnum;
		count1:=sql%rowcount;
		insert into del_history values(dnum,count1,sysdate);
end;
/
