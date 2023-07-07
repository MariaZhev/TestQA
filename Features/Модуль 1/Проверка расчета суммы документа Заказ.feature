﻿#language: ru


Функционал: Проверка расчета суммы документа Заказ

Как Администратор я хочу
Проверка расчета суммы при изменении количества и цены 
чтобы документ был корректным   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка расчета суммы в табличной части
* Открытие формы документа
	Дано Я открываю навигационную ссылку "e1cib/data/Документ.Заказ?ref=8745e8d8d16c5cad11edfa3741be2201"		
* Изменение цены и количества
	И в таблице "Товары" я активизирую поле "Цена"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле 'Товар' я ввожу текст 'Торт'
	И в таблице "Товары" в поле 'Цена' я ввожу текст '50,00'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я активизирую поле "Количество"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле 'Количество' я ввожу текст '200'
	И в таблице "Товары" я завершаю редактирование строки
* Проверка расчета суммы
	Тогда таблица "Товары" стала равной:
		| 'Сумма'     |
		| '10 000,00' |
* Запись документа
	И я нажимаю на кнопку 'Провести и закрыть'
	И я жду закрытия окна 'Заказ * от *' в течение 20 секунд

