package plugin.enemydown.data;

import lombok.Getter;

@Getter
public enum GameModeEnum {
  EASY("easy"),
  NORMAL("normal"),
  HARD("hard"),
  NONE("none"),
  LIST("list");

  GameModeEnum(String i) {
  }
}
