SELECT Month,
       WeekDay,
       SUM(Revenue) AS "Revenue",
       SUM(Service) AS "Service",
       ROUND(SUM(Margin), 2) AS "Margin",
       ROUND(AVG(Avg_Margin), 2) AS "Avg_margin",
       ROUND(SUM(Costs), 2) AS "Costs",
       ROUND(AVG(Revenue), 2) AS "Avg_bill",
       AVG(Pices_Sold) AS "Avg_pics",
       SUM(Pices_Sold) AS "Pics_Sold"
FROM (SELECT AVG(СуммаЗаказаНаСайте) AS "Revenue",
       SUM(Маржа) AS "Margin",
       AVG(Маржа) AS "Avg_margin",
       AVG(СуммаУслуг) AS "Service",
       SUM(ЦенаЗакупки * КоличествоПроданоКлиенту) AS "Costs",
       SUM(КоличествоПроданоКлиенту) AS "Pices_sold",
       МесяцДатыЗаказа AS "Month",
       DAYOFWEEK(Дата) AS "WeekDay"
FROM mysql.DATA
GROUP BY НомерЗаказаНаСайте, МесяцДатыЗаказа, DAYOFWEEK(Дата)) as orders
GROUP BY Month, WeekDay
ORDER BY Month, WeekDay;

SELECT Группа2 As "Main_group",
       ROUND(SUM(Цена * КоличествоПроданоКлиенту), 2) AS "Revenue",
       ROUND(AVG(Цена), 2) AS "Avg_price",
       ROUND(SUM(Маржа * КоличествоПроданоКлиенту), 2) AS "Margin",
       ROUND(AVG(Маржа), 2) AS "Avg_margin",
       ROUND(SUM(ЦенаЗакупки * КоличествоПроданоКлиенту), 2) AS "Costs",
       ROUND(AVG(СуммаЗаказаНаСайте), 2) AS "Avg_bill",
       ROUND(AVG(КоличествоПроданоКлиенту), 2) AS "Avg_pics",
       SUM(КоличествоПроданоКлиенту) AS "Pics_Sold"
FROM DATA
GROUP BY Группа2
ORDER BY Revenue DESC;

SELECT Группа3 As "Sub_group",
       ROUND(SUM(Цена * КоличествоПроданоКлиенту), 2) AS "Revenue",
       ROUND(AVG(Цена), 2) AS "Avg_price",
       ROUND(SUM(Маржа * КоличествоПроданоКлиенту), 2) AS "Margin",
       ROUND(AVG(Маржа), 2) AS "Avg_margin",
       ROUND(SUM(ЦенаЗакупки * КоличествоПроданоКлиенту), 2) AS "Costs",
       ROUND(AVG(СуммаЗаказаНаСайте), 2) AS "Avg_bill",
       ROUND(AVG(КоличествоПроданоКлиенту), 2) AS "Avg_pics",
       SUM(КоличествоПроданоКлиенту) AS "Pics_Sold"
FROM DATA
GROUP BY Группа3
ORDER BY Revenue DESC;

SELECT Группа4 As "SubSub_group",
       ROUND(SUM(Цена * КоличествоПроданоКлиенту), 2) AS "Revenue",
       ROUND(AVG(Цена), 2) AS "Avg_price",
       ROUND(SUM(Маржа * КоличествоПроданоКлиенту), 2) AS "Margin",
       ROUND(AVG(Маржа), 2) AS "Avg_margin",
       ROUND(SUM(ЦенаЗакупки * КоличествоПроданоКлиенту), 2) AS "Costs",
       ROUND(AVG(СуммаЗаказаНаСайте), 2) AS "Avg_bill",
       ROUND(AVG(КоличествоПроданоКлиенту), 2) AS "Avg_pics",
       SUM(КоличествоПроданоКлиенту) AS "Pics_Sold"
FROM DATA
GROUP BY Группа4
ORDER BY Revenue DESC;

SELECT Группа4 As "SubSub_group",
       ROUND(SUM(Цена * КоличествоПроданоКлиенту), 2) AS "Revenue",
       ROUND(AVG(Цена), 2) AS "Avg_price",
       ROUND(SUM(Маржа * КоличествоПроданоКлиенту), 2) AS "Margin",
       ROUND(AVG(Маржа), 2) AS "Avg_margin",
       ROUND(SUM(ЦенаЗакупки * КоличествоПроданоКлиенту), 2) AS "Costs",
       ROUND(AVG(СуммаЗаказаНаСайте), 2) AS "Avg_bill",
       ROUND(AVG(КоличествоПроданоКлиенту), 2) AS "Avg_pics",
       SUM(КоличествоПроданоКлиенту) AS "Pics_Sold"
FROM DATA
GROUP BY Группа4
ORDER BY Revenue DESC;

SELECT Тип As "Category",
       ROUND(SUM(Цена * КоличествоПроданоКлиенту), 2) AS "Revenue",
       ROUND(AVG(Цена), 2) AS "Avg_price",
       ROUND(SUM(Маржа * КоличествоПроданоКлиенту), 2) AS "Margin",
       ROUND(AVG(Маржа), 2) AS "Avg_margin",
       ROUND(SUM(ЦенаЗакупки * КоличествоПроданоКлиенту), 2) AS "Costs",
       ROUND(AVG(СуммаЗаказаНаСайте), 2) AS "Avg_bill",
       ROUND(AVG(КоличествоПроданоКлиенту), 2) AS "Avg_pics",
       SUM(КоличествоПроданоКлиенту) AS "Pics_Sold"
FROM DATA
GROUP BY Тип
ORDER BY Revenue DESC;

SELECT НомерЗаказаНаСайте AS "Order_no",
       Дата AS "Date",
       ROUND(AVG(СуммаЗаказаНаСайте), 2) AS "Revenue",
       ROUND(SUM(Маржа * Количество), 2) AS "Margin",
       ROUND(AVG(Маржа), 2) AS "Avg_margin",
       ROUND(SUM(ЦенаЗакупки * Количество), 2) AS "Costs"
FROM DATA
GROUP BY НомерЗаказаНаСайте, Дата;