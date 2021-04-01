# Morph-Skyline++

##How to deploy
Firstly, copy the mapping file, the queries and the properties files from the corresponding directories to your directory

Then, start Morph-Skyline++:

```bash 
$ docker-compose up -d 
```

Subsequently, download data from https://upm365-my.sharepoint.com/:f:/g/personal/marlene_gdasilva_upm_es/Eu7oM2gUwA9DvxkAZ6f-03YB92xfzARh3g4JAFGgRWmXOA?e=Dj1lRp, and load the data into the database using our scripts in the data directory.

# How to load the data?

- Install docker (with user permissions), docker-compose (with user permissions), unzip, wget.
- Download the datasets from https://upm365-my.sharepoint.com/:f:/g/personal/marlene_gdasilva_upm_es/Eu7oM2gUwA9DvxkAZ6f-03YB92xfzARh3g4JAFGgRWmXOA?e=Dj1lRp. 
- For each file, decompress the files with tar -xzvf file.tar.gz and then copy the decompressed files into the directory exa_volume where Morph-Skyline++ is installed
- For loading data, run: 
```bash 
docker exec exasoldb exaplus -c localhost:8563 -u sys -P exasol -f "exa exasol/docker-db/script.sql" 
```

You can now execute run.sh to perform our queries.
