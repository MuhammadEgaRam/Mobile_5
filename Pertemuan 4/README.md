# Pemrograman Mobile - Pertemuan 4

NIM : 2141720114

NAMA : Agung Malik Al Qindy

ABSEN : 03

KELAS : 3D

## Praktikum 

### Langkah 1
![Alt text](images/p1l1.png)

### Langkah 2
![ss2](images/p1l2.png)
- Kode program berjalan lancar 

### Langkah 3
![ss3](images/p1l3error.png)
- assert akan menghasilkan error, untuk solusi nya adalah mengubah nilai assert list.length nya menjadi 5

- kode program setelah di fix
![ss4](images/p1l3fix.png)

## Praktikum 2

### Langkah 1
![ss5](images/p2l1.png)

### Langkah 2
![ss6](images/p2l2.png)
- seperti pada list, tipe data set akan menampilkan hasil urut sesuai index

### Langkah 3
![ss7](images/p2l3.png)
- kode berjalan tanpa error, yang menampilkan kurung kurawa kosong 

- Setelah ditambahkan elemen nama dan NIM dengan dua fungsi yang berbeda
![ss8](images/p2l3dirubah.png)

## Praktikum 3

### Langkah 1
![ss9](images/p3l1.png)

### Langkah 2
![ss10](images/p3l2.png)

- tipe data maps akan menampilkan key dan value yang dapat berupa string, int, atau objek lain

### Langkah 3
![ss11](images/p3l3sebelum.png)

- Jika ingin mengganti value dari sebuah key, maka dengan cara memanggil ulang sebuah key seperti contoh gifts['fifth'] yang merujuk pada key 'fifth' yang sudah ada sebelumnya dan diikuti dengan = (value baru yang ingin diganti pada key sebelumnya)  


##### Menambahkan Eleman nama dan NIM pada tiap variabel

![ss12](images/p3l3setelah.png)

![ss13](images/p3l3hasil.png)

## Praktikum 4

### Langkah 1
![ss14](images/p4l1.png)

### Langkah 2
![ss15](images/p4l2error.png)
- error tersebut disebabkan karena variabel list1 masih belum di deklarasi

- Setelah di fix:
![ss16](images/p4l2fix.png)

- tanda ... pada kode tersebut digunakan untuk menggabungkan nilai list dengan nilai dari variabel list lainnya

### Langkah 3
![ss17](images/p4l3error1.png)

- pada error diatas, sama seperti sebelumnya, variabel masih belum di deklarasi

- setelah di fix:
![ss18](images/p4l3fix1.png)


##### Error 2
![ss19](images/p4l3error2.png)

- tanda ? pada spread operator dapat digunakan pada map, tetapi pada  kasus tersebut menggunakan list yang hanya menggunakan ... saja

- setelah di fix:
![ss20](images/p4l3fix2.png)

- Hasil:
![ss21](images/p4l3hasil1.png)

##### Menambahkan variabel list berisi NIM menggunakan Spread Operators

```dart
  var list4 = [2141720041];
  var list5 = [0, ...list4];

  print(list5);
```

- Hasil
![ss22](images/p4l3hasil2.png)

### Langkah 4
![ss23](images/p4l4error.png)

- variabel promoActive masih belum di deklarasi dan di inisialisasi

![ss24](images/p4l4fix.png)

#### Jika promoActive true
![ss25](images/p4l4true.png)

#### Jika promoActive false
![ss26](images/p4l4false.png)

- pada code diatas promoActive ketika bernilai true maka nilai yang berada didalam kondisi if akan dijalankan, sedangkan jika promoActive bernilai false nilai yang berada di dalam if yaitu 'Outlet' tidak akan dijalankan karena kondisi bernilai false sehingga yang akan ditampilkan ketika program dijalankan hanyalah nilai yang tidak masuk di dalam kondisi if

### Langkah 5
![ss27](images/p4l5error.png)
- error karena variabel login belum di deklarasi dan di inisialisasi

- Setelah di fix:
![ss28](images/p4l5fixerror.png)

#### Jika variabel login memiliki kondisi lain:
![ss29](images/p4l5percobaan.png)

### Langkah 6
![ss30](images/p4l6.png)
- Collection for dapat digunakan untuk membuat data pada list yang memiliki pola berulang sehingga dapat menyingkat program

## Praktikum 5

### Langkah 1
![ss31](images/p5l1.png)

### Langkah 2
![ss32](images/p5l2.png)
- record dapat menampilkan isi berupa kombinasi antara list dengan maps

### Langkah 3
![ss33](images/p5l3belumfix.png)

![ss34](images/p5l3percobaan.png)

- fungsi tukar pada program diatas menggunakan record yang digunakan untuk menukar posisi nilai record2

### Langkah 4
![ss35](images/p5l4error.png)
- error karena variabel masih belum memiliki value 

![ss36](images/p5l4fix.png)

### Langkah 5
![ss35](images/p5l5.png)

- jika ingin mengakses value dalam records, jika data berupa data biasa tanpa key, maka cukup mengakses menggunakan index nya, tetapi jika ingin mengakses value maps, maka untuk menampilkan valuenya menggunakan key milik value yang ingin di tampilkan

#### Mengganti isi record dengan nama dan NIM
![ss35](images/p5l5percobaan.png)

## Tugas Praktikum

2. Functions adalah adalah sekumpulan kode dalam 1 fungsi yang dapat digunakan berkali kali untuk melakukan tugas tertentu. functions berisi kumpulan kode logika yang dapat dipanggil untuk keperluan tertentu

3. Jenis-jenis parameter
    - Required Parameters:

        Parameter ini harus diberikan saat memanggil fungsi, dan jumlahnya harus sesuai dengan yang dideklarasikan dalam fungsi.

        ```dart
        void greet(String name) {
        print('Hello, $name!');
        }

        ```

    - Optional Parameter:

        Optional parameters tidak wajib diberikan saat memanggil fungsi.


        Terdapat dua jenis parameter opsional:
        
        - Named Parameters:

            Didefinisikan dengan menggunakan {} dalam deklarasi fungsi.

            ```dart
            void printOrder({String item, int quantity}) {
            print('Order: $item, Quantity: $quantity');
            }

            ```
        - Positional Parameters:

            Didefinisikan dengan menggunakan [] dalam deklarasi fungsi.

            ```dart
            void showInfo(String name, [int age = 30]) {
            print('Name: $name, Age: $age');
            }

            ```

4. Dart mendukung konsep "functions as first-class objects," yang artinya fungsi dapat digunakan seperti tipe data lainnya, seperti variabel atau argumen untuk fungsi lain. Contoh:
    ```dart
    void sayHello(String name) {
    print('Hello, $name!');
    }

    void main() {
    var greeting = sayHello;

    // Memanggil fungsi melalui variabel
    greeting('Alice');
    }

    ```

5. Anonymous functions adalah fungsi yang tidak memiliki nama dan dapat didefinisikan dan digunakan di tempat yang sama. Dart memiliki dua jenis anonymous functions: lambda expressions dan anonymous function expressions. Contoh:
    
    ```dart
    // Lambda expression
    var add = (int a, int b) => a + b;

    // Anonymous function expression
    var multiply = (int x, int y) {
    return x * y;
    };

    ```

6. Perbedaan:
    - Lexical Scope: Lexical scope adalah aturan dalam bahasa pemrograman di mana cakupan atau ruang lingkup variabel ditentukan oleh tempat variabel tersebut dideklarasikan dalam kode sumber, bukan tempat variabel tersebut dipanggil atau digunakan.

        ```dart
        void main() {
        var x = 10;

        void printX() {
            print(x); // Variabel x diambil dari lexical scope
        }

        printX();
        }

        ```

    - Lexical Closures: Lexical closure adalah kemampuan sebuah fungsi untuk mengakses variabel-variabel dari lexical scope di mana fungsi tersebut didefinisikan, bahkan jika fungsi tersebut dipanggil di luar lexical scope tersebut.

        ```dart
        Function makeCounter() {
        var count = 0;
        return () {
            return ++count;
        };
        }

        void main() {
        var counter = makeCounter();

        print(counter()); // 1
        print(counter()); // 2
        }

        ```

7. dart dapat mengembalikan multiple values dari sebuah fungsi dengan mengemasnya dalam koleksi seperti List atau Map. Contoh:
    ```dart
    List<int> findMinMax(List<int> numbers) {
    int min = numbers[0];
    int max = numbers[0];

    for (int number in numbers) {
        if (number < min) {
        min = number;
        }
        if (number > max) {
        max = number;
        }
    }

    return [min, max]; // Mengembalikan List dengan dua nilai
    }

    void main() {
    List<int> numbers = [3, 1, 7, 2, 8, 4];
    var result = findMinMax(numbers);

    print('Min: ${result[0]}, Max: ${result[1]}');
    }

    ```
    Dalam contoh di atas, fungsi findMinMax mengembalikan sebuah List yang berisi dua nilai, yaitu nilai minimum dan maksimum dari list input.








