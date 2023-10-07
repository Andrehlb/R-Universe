# Developing a script to count the frequency of each base in a DNA sequence.

# Read in the DNA sequence in the string vector lines

cat("Iniciando a análise...\n")

# Read the file into a vector of strings
lines <- readLines("D:\\reposGitHub\\R-Universe\\assetsSequences\\UBi-Intron-COMTAS-NOS.txt")

# Debugging: Verify the type of the data of the'lines' variable	
print(paste("Type of the variable 'lines': ", class(lines)))

# Conect the lines to form a single DNA sequence
dna_sequence <- paste(lines, collapse="")

# Debugging: Verify the type of the data of the'dna_sequence' variable
print(paste("Type of the variable 'dna_sequence': ", class(dna_sequence)))

# Debugging: Verify the length of the'dna_sequence' variable
print(paste("Length of the variable 'dna_sequence': ", nchar(dna_sequence)))

# Debugging: Print the first 50 characters of the'dna_sequence' variable
print(paste("Reading the DNA sequence, imcompletely displayedg: ", substr(dna_sequence, 1, 30)))  # imprime os primeiros 50 caracteres

# Remove spaces and unwanted characters
dna_sequence <- gsub("[[:space:]]+", "", dna_sequence)

# Print the debug results

print(paste("Printng the debug results: ", (base_count)))

# Count the number of each base using the table() function

# a_count <- sum(substr(dna_sequence, 1:nchar(dna_sequence), 1:nchar(dna_sequence)) == "A")
# t_count <- sum(substr(dna_sequence, 1:nchar(dna_sequence), 1:nchar(dna_sequence)) == "T")
# g_count <- sum(substr(dna_sequence, 1:nchar(dna_sequence), 1:nchar(dna_sequence)) == "G")
# c_count <- sum(substr(dna_sequence, 1:nchar(dna_sequence), 1:nchar(dna_sequence)) == "C")
base_count <- table(strsplit(tolower(dna_sequence), '')[[1]])

# Verify if each base exist in the result. If not, define the value as 0

if (!"a" %in% names(base_count)) base_count["a"] <- 0
if (!"t" %in% names(base_count)) base_count["t"] <- 0
if (!"g" %in% names(base_count)) base_count["g"] <- 0
if (!"c" %in% names(base_count)) base_count["c"] <- 0

# Print the results

cat("Frequency of the A:", base_count["a"], "\n")
cat("Frequency of the T:", base_count["t"], "\n")
cat("Frequency of the G:", base_count["g"], "\n")
cat("Frequency of the C:", base_count["c"], "\n")
