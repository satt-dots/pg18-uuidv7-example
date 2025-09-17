-- migrate:up
CREATE TABLE strict_users (
    id UUID PRIMARY KEY DEFAULT uuidv7(),
    email VARCHAR(255) UNIQUE NOT NULL,
    name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT now(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT now(),

    CHECK (
        uuid_extract_version(id) = 7
    )
);

-- migrate:down
DROP TABLE strict_users;
