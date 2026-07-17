# SQL Query PostgreSQL Mengambil Data

## Penjelasan

Repository ini berisi beberapa query SQL untuk mengambil data berdasarkan kriteria tertentu serta menampilkan data dari beberapa tabel yang saling berelasi menggunakan `JOIN`.

---

## Screenshot Query 1

![Query 1](Querry1.png)

Berisi beberapa query SQL dasar menggunakan:

- `WHERE`
- `LIKE`
- `BETWEEN`
- `COUNT()`

---

## Screenshot Query 2

![Query 2](Querry2.png)

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

---

## Screenshot Query 3

### Data Director dengan Jumlah Genre

![Director](1.png)

### Data Actor dengan Role > 5

![Actor](2.png)

### Movies dengan Genres dalam Satu Kolom

![Movies](3.png)

### Data Director Paling Produktif

![Director Produktif](4.png)

### Tahun Tersibuk dengan Jumlah Movies

![Tahun Tersibuk](5.png)