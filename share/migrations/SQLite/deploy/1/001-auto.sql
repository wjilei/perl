--
-- Created by SQL::Translator::Producer::SQLite
-- Created on Mon Jul 25 15:49:44 2022
--

;
BEGIN TRANSACTION;
--
-- Table: "artist"
--
CREATE TABLE "artist" (
  "artist_id" INTEGER PRIMARY KEY NOT NULL,
  "name" varchar(96) NOT NULL
);
--
-- Table: "cd"
--
CREATE TABLE "cd" (
  "cd_id" INTEGER PRIMARY KEY NOT NULL,
  "artist_fk" integer NOT NULL,
  "title" varchar(96) NOT NULL,
  FOREIGN KEY ("artist_fk") REFERENCES "artist"("artist_id") ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE INDEX "cd_idx_artist_fk" ON "cd" ("artist_fk");
--
-- Table: "track"
--
CREATE TABLE "track" (
  "track_id" INTEGER PRIMARY KEY NOT NULL,
  "cd_fk" integer NOT NULL,
  "title" varchar(96) NOT NULL,
  FOREIGN KEY ("cd_fk") REFERENCES "cd"("cd_id") ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE INDEX "track_idx_cd_fk" ON "track" ("cd_fk");
COMMIT;
