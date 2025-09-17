-- PostgreSQL サーバーで自動生成
INSERT INTO
strict_users (email, name)
VALUES
('uuidv7-gen@example.com', 'v7-gen');

-- 事前生成した UUIDv7
INSERT INTO
strict_users (id, email, name)
VALUES
(
    '0199568c-1034-70b3-b560-492a16ab6597',
    'uuidv7@example.com',
    'v7'
);

-- 事前生成した UUIDv4
INSERT INTO
strict_users (id, email, name)
VALUES
(
    'd07d805c-9d09-4eb4-92ee-a4dc32ecad64',
    'uuidv4@example.com',
    'v4'
);

-- 事前生成した UUID のような文字列（エラー）
INSERT INTO
strict_users (id, email, name)
VALUES
(
    'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx',
    'uuid-like@example.com',
    'not uuid'
);
