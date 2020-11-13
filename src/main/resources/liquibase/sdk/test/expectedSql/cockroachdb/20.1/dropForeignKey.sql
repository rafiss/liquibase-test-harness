CREATE INDEX author_id_idx ON posts(author_id)
ALTER TABLE posts ADD CONSTRAINT fk_posts_authors_test FOREIGN KEY (author_id) REFERENCES authors (id) ON UPDATE RESTRICT ON DELETE CASCADE
ALTER TABLE posts DROP CONSTRAINT fk_posts_authors_test
DROP INDEX author_id_idx