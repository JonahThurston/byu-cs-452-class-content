CREATE TABLE Player (
  player_id INTEGER PRIMARY KEY,
  faction   VARCHAR(20) NOT NULL,
  points    INTEGER NOT NULL
);

CREATE TABLE Clearing (
  clearing_id INTEGER PRIMARY KEY,
  suite       VARCHAR(20) NOT NULL
);

CREATE TABLE Piece (
  piece_id    INTEGER PRIMARY KEY,
  clearing_id INTEGER NOT NULL,
  player_id   INTEGER NOT NULL,
  piece_type  VARCHAR(20)   NOT NULL,
  FOREIGN KEY (player_id)   REFERENCES Player(player_id),
  FOREIGN KEY (clearing_id) REFERENCES Clearing(clearing_id)
);

CREATE TABLE Cards (
  card_id   INTEGER PRIMARY KEY,
  title     TEXT    NOT NULL,
  effect    TEXT    NOT NULL,
  cost      INTEGER NOT NULL,
  player_id INTEGER,
  FOREIGN KEY (player_id) REFERENCES Player(player_id)
);
