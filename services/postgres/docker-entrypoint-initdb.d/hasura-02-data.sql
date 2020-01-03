INSERT INTO "public"."users"("id", "auth0_id", "email", "created_at", "updated_at") VALUES(1285, 'auth0|0123456789', 'jdoe@foobar.com', '2020-01-01 08:54:49.275948+00', '2020-01-01 08:54:49.275948+00') RETURNING "id", "auth0_id", "email", "created_at", "updated_at";

INSERT INTO "public"."journal_questions"("id", "user_id", "order", "type", "text", "data", "created_at", "updated_at", "show_in_journal") VALUES(8, 1285, 1, 'text', 'What was yesterday''s best happening?', '{"rows": 2, "maxlength": 140}', '2019-12-30 07:44:47.892977+00', '2019-12-31 13:59:57.809634+00', 'TRUE') RETURNING "id", "user_id", "order", "type", "text", "data", "created_at", "updated_at", "show_in_journal";
INSERT INTO "public"."journal_questions"("id", "user_id", "order", "type", "text", "data", "created_at", "updated_at", "show_in_journal") VALUES(9, 1285, 2, 'text', 'What went well?', '{"rows": 2, "maxlength": 140}', '2019-12-30 07:52:01.906548+00', '2019-12-31 13:58:48.850241+00', 'FALSE') RETURNING "id", "user_id", "order", "type", "text", "data", "created_at", "updated_at", "show_in_journal";

INSERT INTO "public"."journal_logs"("user_id", "question_id", "text", "data", "created_at", "updated_at", "created_at_day") VALUES(1285, 8, 'dohaa', '{}', '2020-01-01 09:22:57.633486+00', '2020-01-01 09:23:27.999492+00', '2020-01-01') RETURNING "user_id", "question_id", "text", "data", "created_at", "updated_at", "created_at_day";