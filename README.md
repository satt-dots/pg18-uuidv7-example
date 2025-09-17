# PostgreSQL 18 UUIDv7 Example

## 使い方

1. PostgreSQL サーバーを起動する。

    ```bash
    task pg:up
    ```

2. DB マイグレーションを実行する。

    ```bash
    task dm:run
    ```

3. サーバーに接続する。

    ```bash
    task pg:psql
    ```

4. テーブル一覧を表示する。

    ```psql
    testdb=# \dt
                    List of tables
     Schema |       Name        | Type  |  Owner
    --------+-------------------+-------+----------
     public | schema_migrations | table | postgres
     public | users             | table | postgres
     (2 rows)
    ```

5. ランダムな UUIDv7 の値を生成する。

    ````psql
    testdb=# select uuidv7();
                uuidv7
    --------------------------------------
    01995687-fd32-779d-a1f3-eb0cee7759d3
    (1 row)
    ````

## 参考

- [RFC 9562 - Universally Unique IDentifiers (UUIDs)](https://datatracker.ietf.org/doc/rfc9562/)
- [PostgreSQL: Documentation: 18: 9.14. UUID Functions](https://www.postgresql.org/docs/18/functions-uuid.html)
- [PostgreSQL: Documentation: 18: 8.12. UUID Type](https://www.postgresql.org/docs/18/datatype-uuid.html)
- [UUIDv7 Comes to PostgreSQL 18](https://www.thenile.dev/blog/uuidv7)
- [postgres - Official Image | Docker Hub](https://hub.docker.com/_/postgres)
- [amacneil/dbmate: 🚀 A lightweight, framework-agnostic database migration tool.](https://github.com/amacneil/dbmate)
