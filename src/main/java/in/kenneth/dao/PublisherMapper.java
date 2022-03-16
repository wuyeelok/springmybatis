package in.kenneth.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import in.kenneth.entity.Publisher;

@Mapper
public interface PublisherMapper {

	@Select("Select *, PHONE as phoneNumber from PUBLISHERS")
	public List<Publisher> findAll();

}
