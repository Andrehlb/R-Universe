# Developing a script to count the frequency of each base in a DNA sequence.

# Read in the DNA sequence

cat("Iniciando a análise...\n")

# Read the file into a vector of strings

lines <- readLines("D:\reposGitHub\R-Universe\assestesSequences\UBi-Intron-COMTAS-NOS.txt")

# Conect the lines to form a single DNA sequence

dna_sequence <- paste(lines, collapse="")

# Remove spaces and unwanted characters

dna_sequence <- gsub("[[:space:]]+", "", dna_sequence)

# Count the number of each base

a_count <- sum(substr(dna_sequence, 1:nchar(dna_sequence), 1:nchar(dna_sequence)) == "A")
t_count <- sum(substr(dna_sequence, 1:nchar(dna_sequence), 1:nchar(dna_sequence)) == "T")
g_count <- sum(substr(dna_sequence, 1:nchar(dna_sequence), 1:nchar(dna_sequence)) == "G")
c_count <- sum(substr(dna_sequence, 1:nchar(dna_sequence), 1:nchar(dna_sequence)) == "C")

# Print the results

cat("Frequência de A:", a_count, "\n")
cat("Frequência de T:", t_count, "\n")
cat("Frequência de G:", g_count, "\n")
cat("Frequência de C:", c_count, "\n")
