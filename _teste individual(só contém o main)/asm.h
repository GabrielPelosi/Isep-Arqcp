#ifndef ASM_H
#define ASM_H

	typedef struct{
		char *nome;
		short id;
		int n_provas;
		unsigned short *resultados;
		
	}Atleta;

	int melhor_tempo(Atleta *atleta);

	void qualificados(Atleta *atletas, int n, int tempo_min, short *ids_qualificados);

#endif
