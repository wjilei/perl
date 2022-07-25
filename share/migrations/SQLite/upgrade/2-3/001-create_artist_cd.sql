BEGIN;

;
CREATE TABLE "artist_cd" (
  "artist_fk" integer NOT NULL,
  "cd_fk" integer NOT NULL,
  PRIMARY KEY ("artist_fk", "cd_fk"),
  FOREIGN KEY ("artist_fk") REFERENCES "artist"("artist_id") ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY ("cd_fk") REFERENCES "cd"("cd_id") ON DELETE CASCADE ON UPDATE CASCADE
);
;
CREATE INDEX "artist_cd_idx_artist_fk" ON "artist_cd" ("artist_fk");

;
CREATE INDEX "artist_cd_idx_cd_fk" ON "artist_cd" ("cd_fk");
;

COMMIT;