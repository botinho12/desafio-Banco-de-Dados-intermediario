select concat(nome , ' - ', 'desafio1') "primerira concatenada"
from CLIENTE

	select nome , 
	case nome 
			when   null   then 'retorne'
	else 
		nome
end NomeCompleto
	from CLIENTE