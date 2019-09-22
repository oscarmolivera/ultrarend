SysAdmin.create(email: "admin@test.cl", first_name:"Admin", last_name:"User", password: "AUser.123", password_confirmation: "AUser.123")
Company.create(id: 1, name: "Aceros Chile, S.R.L", federal_number: "93.926.000-5")
puts "Compañia Creada."

BranchOffice.create(id: 1, name: "Sede Principal", acronym:"STG", company_id: 1)
BranchOffice.create(id: 2, name: "Concepción", acronym:"CPN", company_id: 1)
puts "2 Surcursales creadas."

Department.create(id: 1, name: "Administración", acronym: "ADM", company_id: 1)
Department.create(id: 2, name: "TI Sistemas", acronym: "INF", company_id: 1)
Department.create(id: 3, name: "Contabilidad", acronym: "CTB", company_id: 1)
puts "3 Departamentos creados."

Trabajador.create(email: "sp-a@test.cl", first_name:"Miguel", last_name:"ACEVEDO", password: "Auser.123", password_confirmation: "Auser.123", departments_id: 1,branch_offices_id: 2)
Trabajador.create(email: "sp-i@test.cl", first_name:"Alfredo", last_name:"LOPEZ", password: "Auser.123", password_confirmation: "Auser.123", departments_id: 2,branch_offices_id: 2)
AuxContable.create(email: "sp-c@test.cl", first_name:"Solciree", last_name:"HIDALGO", password: "Auser.123", password_confirmation: "Auser.123", departments_id: 3,branch_offices_id:1)
JefeArea.create(email: "ja@test.cl", first_name:"Jefe de", last_name:"Informatica", password: "Auser.123", password_confirmation: "Auser.123", departments_id: 2,branch_offices_id:1)
JefeContable.create(email: "jc@test.cl", first_name:"JEFE", last_name:"Contable", password: "Auser.123", password_confirmation: "Auser.123", departments_id: 3,branch_offices_id:1)
puts "5 Usuarios creados."