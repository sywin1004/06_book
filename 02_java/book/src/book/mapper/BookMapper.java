package book.mapper;

import java.util.List;

import book.vo.Book;

public interface BookMapper {

		public abstract List<Book> select(Book book);
		
		List<Book> searchByCompanyCd (Book book);
}
