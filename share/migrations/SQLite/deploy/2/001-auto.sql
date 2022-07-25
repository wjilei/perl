--
-- Created by SQL::Translator::Producer::SQLite
-- Created on Mon Jul 25 16:10:21 2022
--

;
BEGIN TRANSACTION;
--
-- Table: "country"
--
CREATE TABLE "country" (
  "country_id" INTEGER PRIMARY KEY NOT NULL,
  "name" varchar(96) NOT NULL
);
CREATE UNIQUE INDEX "country_name" ON "country" ("name");
--
-- Table: "artist"
--
CREATE TABLE "artist" (
  "artist_id" INTEGER PRIMARY KEY NOT NULL,
  "country_fk" integer NOT NULL,
  "name" varchar(96) NOT NULL,
  FOREIGN KEY ("country_fk") REFERENCES "country"("country_id") ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE INDEX "artist_idx_country_fk" ON "artist" ("country_fk");
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
