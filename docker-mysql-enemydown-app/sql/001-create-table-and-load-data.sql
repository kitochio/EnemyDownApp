-- 難易度などゲーム設定を行うテーブル作成
DROP TABLE IF EXISTS game_config;
CREATE TABLE game_config (
    id INT AUTO_INCREMENT,
    game_time INT,
    difficulty VARCHAR(30),
    PRIMARY KEY(id),
    UNIQUE(difficulty)
);

-- 難易度毎に出現するEnemy情報を扱うテーブル作成
DROP TABLE IF EXISTS spawn_enemy;
CREATE TABLE spawn_enemy (
    id INT AUTO_INCREMENT,
    difficulty VARCHAR(30),
    enemy_name VARCHAR(100),
    score INT,
    PRIMARY KEY(id),
    UNIQUE(difficulty, enemy_name)
);

-- プラグインを実行した世界中のプレイヤー名やスコア情報を扱うテーブル作成
DROP TABLE IF EXISTS player_score;
CREATE TABLE player_score (
    id INT AUTO_INCREMENT,
    player_name VARCHAR(100),
    score INT,
    difficulty VARCHAR(30),
    registered_at DATETIME,
    PRIMARY KEY(id)
);

-- 検索処理実行前の事前データ投入
INSERT INTO game_config (game_time, difficulty) VALUES (60, 'easy');
INSERT INTO game_config (game_time, difficulty) VALUES (60, 'normal');
INSERT INTO game_config (game_time, difficulty) VALUES (60, 'hard');

INSERT INTO spawn_enemy (difficulty, enemy_name, score) VALUES ('easy', 'ZOMBIE', 10);
INSERT INTO spawn_enemy (difficulty, enemy_name, score) VALUES ('normal', 'ZOMBIE', 10);
INSERT INTO spawn_enemy (difficulty, enemy_name, score) VALUES ('normal', 'SKELETON', 20);
INSERT INTO spawn_enemy (difficulty, enemy_name, score) VALUES ('hard', 'ZOMBIE', 10);
INSERT INTO spawn_enemy (difficulty, enemy_name, score) VALUES ('hard', 'SKELETON', 20);
INSERT INTO spawn_enemy (difficulty, enemy_name, score) VALUES ('hard', 'WITCH', 20);

INSERT INTO player_score (player_name, score, difficulty, registered_at) VALUES ('koujienami', 100, 'normal', NOW());
INSERT INTO player_score (player_name, score, difficulty, registered_at) VALUES ('koujienami', 200, 'easy', NOW());
