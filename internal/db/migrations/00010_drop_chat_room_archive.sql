-- +goose Up
-- +goose StatementBegin
ALTER TABLE chat_rooms DROP CONSTRAINT IF EXISTS no_auto_archive;
-- +goose StatementEnd
-- +goose StatementBegin
ALTER TABLE chat_rooms DROP COLUMN IF EXISTS archived_at;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE chat_rooms ADD COLUMN archived_at timestamptz;
-- +goose StatementEnd
