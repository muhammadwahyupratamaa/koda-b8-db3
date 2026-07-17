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

### Screenshoot Query3

<table>
    <tr>
        <td>Data Director dengan Jumlah Genre</td>
        <td>Data Actor dengan Role > 5</td>
        <td>Movies dengan genres dibuatkan 1 coloumn dipisah comma</td>
    </tr>
    <tr>
        <td><img src="1.png" alt="director"></td>
        <td><img src="2.png" alt="actor"></td>
        <td><img src="3.png" alt="actor"></td>
    </tr>
</table>

<table>
    <tr>
        <td>Data director paling produktif</td>
        <td>Tahun tersibuk dengan jumlah moviesnya</td>
    </tr>
    <tr>
        <td><img src="4.png" alt="director"></td>
        <td><img src="5.png" alt="actor"></td>
    </tr>
</table>