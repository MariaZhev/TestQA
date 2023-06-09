﻿#language: ru

@tree

Функционал: проверка заполнения поля Организация в Заказе покупателя

Как Тестировщик я хочу
проверить заполнение поля Организация 
чтобы заполнение работает корректно 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверка заполнения поля Организация в Заказе покупателя
* Поле Организация заполняется из соглашения
	Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	Когда открылось окно 'Заказы покупателей'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Заказ покупателя (создание)'
	И я нажимаю кнопку выбора у поля с именем "Agreement"
	Тогда открылось окно 'Соглашения'
	И в таблице "List" я перехожу к строке:
	| 'Вид'     | 'Вид взаиморасчетов' | 'Код' | 'Наименование'                                                    |
	| 'Обычное' | 'По документам'      | '1'   | 'Соглашение с клиентами (расчет по документам + кредитный лимит)' |
	И в таблице "List" я активизирую поле с именем "Description"
	И в таблице "List" я выбираю текущую строку
	Если поле с именем "Company" заполнено Тогда
		И я закрываю все окна клиентского приложения		
	Иначе 
		И я нажимаю кнопку выбора у поля с именем "Company"
		Тогда открылось окно 'Организации'
		И в таблице "List" я активизирую поле с именем "Description"
		И в таблице "List" я перехожу к  строке	
		| 'Код' | 'Наименование'           |
		| '1'   | 'Собственная компания 1' |
		И в таблице "List" я выбираю текущую строку
		И элемент формы с именем 'Company' стал равен 'Собственная компания 1'
		И я закрываю все окна клиентского приложения

* Поле Организация заполняется пользователем			
	Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	Когда открылось окно 'Заказы покупателей'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Заказ покупателя (создание)'
	И я нажимаю кнопку выбора у поля с именем "Agreement"
	Тогда открылось окно 'Соглашения'
	И в таблице "List" я перехожу к строке:	
		| 'Вид'     | 'Вид взаиморасчетов' | 'Код' | 'Наименование' |
		| 'Обычное' | 'По соглашениям'     | '10'  | 'Тест'         |
	И в таблице "List" я активизирую поле с именем "Description"
	И в таблице "List" я выбираю текущую строку
	Если поле с именем "Company" заполнено Тогда
		И я закрываю все окна клиентского приложения		
	Иначе 
		И я нажимаю кнопку выбора у поля с именем "Company"
		Тогда открылось окно 'Организации'
		И в таблице "List" я активизирую поле с именем "Description"
		И в таблице "List" я перехожу к  строке	
		| 'Код' | 'Наименование'           |
		| '1'   | 'Собственная компания 1' |
		И в таблице "List" я выбираю текущую строку
		И элемент формы с именем 'Company' стал равен 'Собственная компания 1'
		И я закрываю все окна клиентского приложения


