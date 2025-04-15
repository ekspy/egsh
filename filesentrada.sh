#!/bin/bash

# Arquivo: numeros.txt (Exercícios 1 e 7)
cat << 'EOF' > numeros.txt
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
EOF

# Arquivo: texto.txt (Exercício 4)
cat << 'EOF' > texto.txt
Oi
Bom dia
Hello world
Este é um texto bem longo para teste
Outro texto médio aqui
EOF

# Arquivo: server.log (Exercício 5)
cat << 'EOF' > server.log
2025-04-10 admin login
2025-04-10 user1 error
2025-04-10 user2 success
2025-04-10 user3 error
2025-04-10 user4 error
2025-04-10 user5 error
2025-04-10 guest logout
EOF

# Arquivo: palavras.txt (Exercício 6)
cat << 'EOF' > palavras.txt
Este é um teste simples.
Outro linha com mais palavras, aqui!
Texto, com pontuação... e espaços extras.
Vamos contar todas essas palavras agora.
Mais uma linha para alcançar o limite.
EOF

# Arquivo: entrada.txt (Exercício 11)
cat << 'EOF' > entrada.txt
Aprendendo a programar em bash
Este é um texto qualquer
Bash é uma linguagem poderosa
Nada de bash aqui
Shell scripting com bash
EOF

# Arquivo: valores.txt (Exercício 12)
cat << 'EOF' > valores.txt
10.5
20.75
15.0
30.25
25.5
EOF

# Nota: fibonacci.txt (Exercícios 3 e 7) é gerado pelos próprios scripts,
# então não precisa ser criado manualmente.

echo "Arquivos de entrada criados com sucesso:"
ls -l numeros.txt texto.txt server.log palavras.txt entrada.txt valores.txt