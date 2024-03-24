package plugin.enemydown.app.service;

import java.util.List;
import org.springframework.stereotype.Service;
import plugin.enemydown.app.mapper.data.PlayerScore;
import plugin.enemydown.app.mapper.data.PlayerScoreMapper;

@Service
public class PlayerScoreService {

  private final PlayerScoreMapper mapper;

  public PlayerScoreService(PlayerScoreMapper mapper) {
    this.mapper = mapper;
  }

  public List<PlayerScore> searchPlayerScoreList() {
    return mapper.selectPlayerScoreList();
  }
}