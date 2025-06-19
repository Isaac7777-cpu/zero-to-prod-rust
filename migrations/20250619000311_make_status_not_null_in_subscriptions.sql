-- Add migration script here
-- Note that we want to make sure this operation is automic,
-- therefore, we will wrap the whole migration in one transaction.
BEGIN;
  -- Backfill `status` for historical entries
  UPDATE subscriptions
    SET status = 'confirmed'
    WHERE status IS NULL;
  -- Make `status` mandatory
  ALTER TABLE subscriptions ALTER COLUMN status SET NOT NULL;
COMMIT;
