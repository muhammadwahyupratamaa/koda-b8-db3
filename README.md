# SQL Query postgreSQL Mengambil data

## Ini merupakan penjelasan query sql untuk mengambil data sesuai kriteria dan ambil data degan relasi tabel lain dengan JOIN

### Screenshoot Query1
![alt text](Querry1.png)

Berisi beberapa query SQL dasar menggunakan:

- `WHERE`
- `LIKE`
- `BETWEEN`
- `COUNT()` 

### Screenshoot Query2
![alt text](Querry2.png)

Pada query ini ditampilkan data aktor beserta peran (`role`), judul film, dan `rankscore` dengan menggabungkan beberapa tabel yang saling berelasi menggunakan `JOIN`.

Agar penulisan query lebih singkat dan mudah dibaca, setiap tabel diberikan alias.

Contoh:

```sql
FROM "actors" "a"
JOIN "roles" "rl"
JOIN "movies" "m"
```

Dengan menggunakan alias, pemanggilan kolom menjadi lebih jelas dan menghindari ambiguitas.

Contoh:

```sql
"m"."name" AS "title"
```

Selain itu, kolom `first_name` dan `last_name` pada tabel `actors` digabungkan menjadi satu kolom menggunakan fungsi `CONCAT`, sehingga nama aktor ditampilkan dalam satu kolom.

Contoh:

```sql
CONCAT("a"."first_name", ' ', "a"."last_name") AS "nama_actor"
```
```

## Screenshot Query 3

| Data Director dengan Jumlah Genre | Data Actor dengan Role > 5 | Movies dengan Genres |
| :---: | :---: | :---: |
| <img src="./1.png" width="300"> | <img src="./2.png" width="300"> | <img src="./3.png" width="300"> |

| Data Director Paling Produktif | Tahun Tersibuk |
| :---: | :---: |
| <img src="./4.png" width="350"> | <img src="./5.png" width="350"> |