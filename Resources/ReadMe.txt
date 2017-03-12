EXCEL Datalar�n�n Kopyalanmas�
------------------------------
1. �ncelikle t�m excel datalar� T�m� adl� sayfaya kopyalanmal�d�r.
2. Daha sonra T�m� sayfas�ndan �l-�l�e-Semt-Mahalle-PK sayfas�na kopyalanmal�d�r.
	2.1. T�m sut�nlar se�ilerek Veri->Yinelenenleri Kald�r penceresinden Verilerimde �stbilgi var se�ene�i se�ilerek ayr��t�r�lmal�d�r.
3. T�m� sayfas�ndan �l-�l�e-Semt sut�nlar�n� se�erek �l-�l�e-Semt sayfas�na kopyalanmal�d�r.
	3.1. T�m sut�nlar se�ilerek Veri->Yinelenenleri Kald�r penceresinden Verilerimde �stbilgi var se�ene�i se�ilerek ayr��t�r�lmal�d�r.
4. T�m� sayfas�ndan �l-�l�e sut�nlar�n� se�erek �l-�l�e sayfas�na kopyalanmal�d�r.
	4.1. T�m sut�nlar se�ilerek Veri->Yinelenenleri Kald�r penceresinden Verilerimde �stbilgi var se�ene�i se�ilerek ayr��t�r�lmal�d�r.
5. T�m� sayfas�ndan �l sut�nunu se�erek �l sayfas�na kopyalanmal�d�r.
	5.1. T�m sut�nlar se�ilerek Veri->Yinelenenleri Kald�r penceresinden Verilerimde �stbilgi var se�ene�i se�ilerek ayr��t�r�lmal�d�r.

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

EXCEL'den SQL Server'a Aktarma ��lemi
-------------------------------------
1. Countries veritaban�na sa� tu� t�klayarak excel import sayfas� a��lmal�d�r.
	1.1. Tasks->Import Data sayfas� a��lmal�d�r.
	1.2. Choose a Data Source sayfas�ndan Data Source Microsoft Excel se�ilmelidir. Excel yolu ve Excel version MS Excel 2007 se�ilmelidir.
	1.3. Choose a Destination sayfas�ndan Destination SQL Server Native Client 11.0 se�ilmelidir.
	1.4. Specift Table Copy or Query sayfas�nda Copy data from one or more tables or views se�ilmelidir.
	1.5. Select Source Tables and Views sayfas�ndan T�m� hari� hepsi se�ilmelidir.
	1.6. Finish ile aktar�m tamamlanmal�d�r.
	1.7. Excel ile kopyalanan datalar e�it mi kontrol edilmelidir.
2. Resources->DataTransfer i�erisnden DataTransfer SQL'leri ile data aktar�mlar� yap�lmal�d�r.
	2.1. DataTransfer - Counties �al��t�r�lmal�d�r.
	2.2. DataTransfer - Area �al��t�r�lmal�d�r.
	2.3. DataTransfer - Neighborhood �al��t�r�lmal�d�r.
3. Daha sonra ge�ici(il, il-il�e, il-il�e-semt, il-il�e-semt-mahalle) tablolar kald�r�lmas� i�in Drop_Temp_Tables sorgusu �al��t�r�lmal�d�r.

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

MSSQL'den MySQL'e Aktarma ��lemi
--------------------------------
1. MySQL i�inden countries veritaban� silinir.
2. Yeniden countries adl� veritaban� olu�turulur.
3. Daha sonra Scripts/MySQL/Countries_Schema.sql dosyas� �al��t�r�larak �ema yap�s� olu�turulur.
4. CountriesDBTransfer projesi �al��t�r�larak MySQL'e aktar�m i�lemi ba�lat�l�r.
5. phpmyadmin i�ersinden D��a Aktar sekmesinden aktar�m i�lemi ba�lat�lmal�d�r.

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

