typedef struct{
char *vinho;
char *notas;
unsigned short nota_final;
}Prova_Vinhos;

void nota_final(Prova_Vinhos *vinho);

char* melhor_vinho(Prova_Vinhos *vinhos, int n);
