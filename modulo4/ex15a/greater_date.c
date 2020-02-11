#include <stdio.h>


unsigned int greater_date(int date1, int date2){
	
	unsigned int year1 = date1 & 0b00000000111111111111111100000000;
	unsigned int year2 = date2 & 0b00000000111111111111111100000000; 
	// utiliza-se uma mascara para zera os bits, menos os relativos ao ano

	if(year1>year2){
		return date1;
	}else{
		if(year2>year1){
			return date2;
		}
	}
	
	//shift para a direita 24 vezes,isso por que o mes enconstra-se na parte mais signiificativa, entao ao fazendo um shift para a parte menos significativa vao entrar zeros pela esquerda(unsigned) e vou ter o valor do mes no numero.
	unsigned int month1=(unsigned)date1>>(24); 
	unsigned int month2 = (unsigned)date2>>(24);
	//unsigned int month1= j1 & 0xff;
	//unsigned int month2= j2 & 0xff;
	if(month1>month2){
		return date1;
	}else{
		if(month2>month1){
			return date2;
		}
	}
	
	unsigned int day1 = date1 & 0b00000000000000000000000011111111;
	unsigned int day2 = date2 & 0b00000000000000000000000011111111;
	
	if(day1>day2){
		return date1;
	}else{
		if(day2>day1){
			return date2;
		}
	}
	
	return date1;
}
