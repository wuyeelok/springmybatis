package in.kenneth.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import in.kenneth.entity.Book;

@Mapper
public interface BookMapper {

	@Select("SELECT * FROM BOOKS")
	List<Book> findAll();

	@Select("SELECT * FROM BOOKS WHERE GENRE = #{genre}")
	List<Book> findByGenre(@Param("genre") String g);
}
