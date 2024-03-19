CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    amount NUMERIC(10,2) NOT NULL,
    sender_id BIGINT NOT NULL,
    receiver_id BIGINT NOT NULL,
    timestamp TIMESTAMP NOT NULL,
    FOREIGN KEY (sender_id) REFERENCES users(id),
    FOREIGN KEY (receiver_id) REFERENCES users(id)
);
