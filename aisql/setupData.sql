

-- Fun seed data for the Root-like woodland battle!
-- This assumes tables are empty. If not, clear them as needed.

-- Players
INSERT INTO Player (player_id, faction, points) VALUES
  (1, 'Marquise de Cat', 10),
  (2, 'Eyrie Dynasties', 8),
  (3, 'Woodland Alliance', 6),
  (4, 'Vagabond', 12);

-- Clearings (Fox, Rabbit, Mouse cycling)
INSERT INTO Clearing (clearing_id, suite) VALUES
  (1,  'Fox'),
  (2,  'Rabbit'),
  (3,  'Mouse'),
  (4,  'Fox'),
  (5,  'Rabbit'),
  (6,  'Mouse'),
  (7,  'Fox'),
  (8,  'Rabbit'),
  (9,  'Mouse'),
  (10, 'Fox'),
  (11, 'Rabbit'),
  (12, 'Mouse');

-- Pieces on the map
-- piece_id, clearing_id, player_id, piece_type
INSERT INTO Piece (piece_id, clearing_id, player_id, piece_type) VALUES
  -- Marquise (buildings + warriors)
  (1,  1, 1, 'warrior'),
  (2,  1, 1, 'sawmill'),
  (3,  2, 1, 'workshop'),
  (4,  3, 1, 'recruiter'),
  (5,  4, 1, 'warrior'),
  (6, 10, 1, 'sawmill'),
  (7, 11, 1, 'warrior'),

  -- Eyrie (roosts + warriors)
  (8,  4, 2, 'roost'),
  (9,  7, 2, 'roost'),
  (10, 4, 2, 'warrior'),
  (11, 5, 2, 'warrior'),
  (12, 7, 2, 'warrior'),

  -- Woodland Alliance (sympathy, base, officer)
  (13, 6, 3, 'sympathy'),
  (14, 9, 3, 'sympathy'),
  (15, 6, 3, 'base'),
  (16, 5, 3, 'officer'),

  -- Vagabond (solo adventurer + loot items)
  (17, 8, 4, 'vagabond'),
  (18, 2, 4, 'item'),
  (19, 8, 4, 'item'),

  -- Extra ambient warriors to spice things up
  (20, 3, 1, 'warrior'),
  (21, 3, 2, 'warrior'),
  (22, 12, 3, 'sympathy');

-- Cards (some owned, some in the deck)
-- card_id, title, effect, cost, player_id (nullable)
INSERT INTO Cards (card_id, title, effect, cost, player_id) VALUES
  (1,  'Ambush (Fox)',      'Surprise attack in a Fox clearing', 0, NULL),
  (2,  'Ambush (Rabbit)',   'Surprise attack in a Rabbit clearing', 0, NULL),
  (3,  'Ambush (Mouse)',    'Surprise attack in a Mouse clearing', 0, NULL),
  (4,  'Favor of the Foxes','Remove enemy pieces in all Fox clearings', 3, 3),
  (5,  'Favor of the Rabbits','Remove enemy pieces in all Rabbit clearings', 3, NULL),
  (6,  'Favor of the Mice', 'Remove enemy pieces in all Mouse clearings', 3, NULL),
  (7,  'Brutal Tactics',    'Gain extra hits on attack', 1, 2),
  (8,  'Sappers',           'Defensive hits in battle', 1, 1),
  (9,  'Master Engravers',  'Crafting yields bonus points', 2, 1),
  (10, 'Informants',        'Peek at top of deck', 1, 4),
  (11, 'Tax Collector',     'Gain points for buildings', 2, 1),
  (12, 'Codebreakers',      'Reroute orders cleverly', 2, 2),
  (13, 'Crossbow',          'Item - single target removal', 0, 4),
  (14, 'Tea',               'Item - refresh extra actions', 0, 4),
  (15, 'Boots',             'Item - extra move', 0, NULL),
  (16, 'Bag',               'Item - carry more loot', 0, NULL),
  (17, 'Bake Sale',         'Gain 2 points when crafted', 1, 3),
  (18, 'Fox Partisans',     'Battle bonus in Fox clearings', 1, NULL),
  (19, 'Rabbit Partisans',  'Battle bonus in Rabbit clearings', 1, NULL),
  (20, 'Mouse Partisans',   'Battle bonus in Mouse clearings', 1, NULL);