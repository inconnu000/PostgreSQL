CREATE TABLE user_follow_show(
user_id INT NOT NULL,
show_id INT NOT NULL,
follow_date TIMESTAMP NOT NULL,
CONSTRAINT user_follow_show_show_id_fkey FOREIGN KEY (show_id)
	REFERENCES show (show_id) MATCH SIMPLE
	ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT user_follow_show_user_id_fkey FOREIGN KEY (user_id)
	REFERENCES users (user_id) MATCH SIMPLE
	ON UPDATE NO ACTION ON DELETE NO ACTION
);
