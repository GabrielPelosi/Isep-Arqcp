#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "asm.h"

int main(int argc, char **argv)
{
	int n_atletas=4;
	
	//criacao da memoria dinamica
	Atleta *ptrA = (Atleta*)calloc(n_atletas, sizeof(Atleta));
	
	ptrA[0].resultados = (unsigned short*)calloc(6,sizeof(short));
	ptrA[0].nome = (char*)calloc(6,sizeof(char));
	
	ptrA[1].resultados = (unsigned short*)calloc(4,sizeof(short));
	ptrA[1].nome = (char*)calloc(4,sizeof(char));
	
	ptrA[2].resultados = (unsigned short*)calloc(6,sizeof(short));
	ptrA[2].nome = (char*)calloc(7,sizeof(char));
	
	ptrA[3].resultados = (unsigned short*)calloc(2,sizeof(short));
	ptrA[3].nome = (char*)calloc(9,sizeof(char));
	
	
	int n_provas0=3;
	int n_provas1=2;
	int n_provas2=3;
	int n_provas3=1;
	
	unsigned short resultado0[] = {0x5000,0x656E,0x7780,0x9042,0x4F80,0x6924};
	unsigned short resultado1[] = {10,25};
	unsigned short resultado2[] = {10,29};
	unsigned short resultado3[] = {10,15};
	
	char nome0[]= "Flecha";
	char nome1[]="Bala";
	char nome2[]="Caracol";
	char nome3[] ="Tartaruga";
	
	short id0=1;
	short id1=2;
	short id2=3;
	short id3=4;
	
	ptrA[0].nome = nome0;
	ptrA[0].n_provas = n_provas0;
	ptrA[0].id = id0;
	ptrA[0].resultados = resultado0;
	
	ptrA[1].nome = nome1;
	ptrA[1].n_provas = n_provas1;
	ptrA[1].id = id1;
	ptrA[1].resultados = resultado1;
	
	ptrA[2].nome = nome2;
	ptrA[2].n_provas = n_provas2;
	ptrA[2].id = id2;
	ptrA[2].resultados = resultado2;
	
	ptrA[3].nome = nome3;
	ptrA[3].n_provas = n_provas3;
	ptrA[3].id = id3;
	ptrA[3].resultados = resultado3;
	
	
	int m_tempo = melhor_tempo(ptrA);
	
	printf("melhor tempo %d", m_tempo);
	
	
	free(ptrA);  //liberar memoria da heap
	
	
	return 0;
}

