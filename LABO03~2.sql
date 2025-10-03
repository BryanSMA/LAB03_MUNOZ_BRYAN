--EJERCICIO 3.1
set serveroutput on
declare
    cursor c_emp is
        select e.employee_id, e.first_name, e.last_name,
               e.job_id, j.job_title, count(*) as cambios
        from employees e
        join job_history jh on e.employee_id = jh.employee_id
        join jobs j on e.job_id = j.job_id
        group by e.employee_id, e.first_name, e.last_name, e.job_id, j.job_title
        having count(*) > 1;
begin
    for r in c_emp loop
        dbms_output.put_line('ID:'||r.employee_id||' '||r.first_name||' '||r.last_name||
                             ' Puesto:'||r.job_id||' '||r.job_title||' Cambios:'||r.cambios);
    end loop;
end;
--EJERCICIO 3.2
set serveroutput on
declare
    cursor c_hires is
        select to_char(hire_date,'Month') as mes,
               round(count(*)/count(distinct extract(year from hire_date)),2) as promedio
        from employees
        group by to_char(hire_date,'Month');
begin
    for r in c_hires loop
        dbms_output.put_line('Mes:'||r.mes||' Promedio Contrataciones:'||r.promedio);
    end loop;
end;
--EJERCICIO 3.3
set serveroutput on
declare
    cursor c_reg is
        select r.region_name, sum(e.salary) as total_salario,
               count(e.employee_id) as cantidad,
               min(e.hire_date) as mas_antiguo
        from employees e
        join departments d on e.department_id=d.department_id
        join locations l on d.location_id=l.location_id
        join countries c on l.country_id=c.country_id
        join regions r on c.region_id=r.region_id
        group by r.region_name;
begin
    for r in c_reg loop
        dbms_output.put_line('Region:'||r.region_name);
        dbms_output.put_line(' Total Salarios:'||r.total_salario||
                             ' Cantidad:'||r.cantidad||
                             ' Mas antiguo:'||r.mas_antiguo);
    end loop;
end;
--EJERCICIO 3.4
set serveroutput on
declare
    cursor c_emp is
        select distinct e.first_name, e.last_name
        from employees e
        join job_history jh on e.employee_id=jh.employee_id
        where e.job_id<>jh.job_id;
begin
    for r in c_emp loop
        dbms_output.put_line('Empleado:'||r.first_name||' '||r.last_name);
    end loop;
end;
--EJERCICIO 3.5
set serveroutput on
declare
    cursor c_emp is
        select d.department_name, e.first_name, e.last_name
        from employees e
        join departments d on e.department_id = d.department_id
        where e.employee_id <> NVL(d.manager_id, -1);
begin
    for r in c_emp loop
        dbms_output.put_line('Deptartamento:'||r.department_name||
                             ' Empleado:'||r.first_name||' '||r.last_name);
    end loop;
end;
--EJERCICIO 3.6
set serveroutput on
declare
    cursor c_emp is
        select e.last_name, d.department_name, e.job_id
        from employees e
        join departments d on e.department_id=d.department_id
        join locations l on d.location_id=l.location_id
        where l.street_address like '%Quinta Avenida%';
begin
    for r in c_emp loop
        dbms_output.put_line('Apellido:'||r.last_name||' Depto:'||
                             r.department_name||' Job:'||r.job_id);
    end loop;
end;
--EJERCICIO 3.7
set serveroutput on
declare
    cursor c_emp is
        select distinct e.first_name, e.last_name
        from employees e
        join job_history jh on e.job_id=jh.job_id
        where jh.job_id in (
            select job_id
            from employees
            where first_name='Juan' and last_name='Pérez'
        );
begin
    for r in c_emp loop
        dbms_output.put_line('Empleado:'||r.first_name||' '||r.last_name);
    end loop;
end;
--EJERCICIO 3.8
set serveroutput on
declare
    cursor c_emp is
        select e.first_name, e.last_name
        from employees e
        join departments d on e.department_id=d.department_id
        where d.department_name='Marketing'
          and not exists (select 1
                          from job_history jh
                          where jh.employee_id=e.employee_id);
begin
    for r in c_emp loop
        dbms_output.put_line('Empleado:'||r.first_name||' '||r.last_name);
    end loop;
end;
--EJERCICIO 3.9
set serveroutput on
declare
    cursor c_emp is
        select first_name, last_name,
               trunc(months_between(sysdate,hire_date)/12,2) as tiempo
        from employees;
begin
    for r in c_emp loop
        dbms_output.put_line('Empleado:'||r.first_name||' '||r.last_name||
                             ' Tiempo:'||r.tiempo||' años');
    end loop;
end;
--EJERCICIO 3.10
set serveroutput on
declare
    cursor c_emp is
        select *
        from (
            select e.employee_id, e.first_name, e.last_name,
                   e.job_id, j.job_title, count(*) as cambios
            from employees e
            join job_history jh on e.employee_id=jh.employee_id
            join jobs j on e.job_id=j.job_id
            group by e.employee_id, e.first_name, e.last_name, e.job_id, j.job_title
            order by count(*) desc
        )
        where rownum<=4;
begin
    for r in c_emp loop
        dbms_output.put_line('ID:'||r.employee_id||' '||r.first_name||' '||r.last_name||
                             ' Puesto:'||r.job_id||' '||r.job_title||' Cambios:'||r.cambios);
    end loop;
end;
