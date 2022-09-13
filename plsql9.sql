declare
	sal number;
	naam varchar(10);
	cursor low_sal is
		select name,salary from emp9 order by salary asc;
	cursor high_sal is
		select name,salary from emp9 order by salary desc;
begin
	open low_sal;
	open high_sal;
	dbms_output.put_line('The five lowest paid employees are:');
	for i in 1 .. 6 loop
		fetch low_sal into naam,sal;
		EXIT WHEN i>5;
		dbms_output.put_line(naam||' sal is: '||sal);
	end loop;
	dbms_output.put_line('The five highest paid employees are:');
	for i in 1 .. 6 loop
		fetch high_sal into naam,sal;
		EXIT WHEN i>5;
		dbms_output.put_line(naam||' sal is: '||sal);
	end loop;
end;