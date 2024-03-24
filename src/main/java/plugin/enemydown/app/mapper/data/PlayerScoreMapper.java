package plugin.enemydown.app.mapper.data;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface PlayerScoreMapper {

  @Select("select * from player_score order by id asc ")
  List<PlayerScore> selectPlayerScoreList();
}
