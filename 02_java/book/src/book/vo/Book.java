package book.vo;

import java.math.BigDecimal;

/**
 * Book 테이블의 형태와 동일한 vo 클래스
 * @author 601-
 *
 */
public class Book {
	private int bookSeq;
	private String isbn;
	private String title;
	private String author;
	private String content;
	private int companyCd;
	private String companyNm;
	private String totalPage;
	private int price;
	private int quantity;
	public String getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(String totalPage) {
		this.totalPage = totalPage;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public void setBookSeq(int bookSeq) {
		this.bookSeq = bookSeq;
	}

	public void setCompanyCd(int companyCd) {
		this.companyCd = companyCd;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	private String regId;
	private String regDate; 
	private String modId;
	private String modDate;
	
	
	public Book() {
		super();
	}

	

	

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCompanyNm() {
		return companyNm;
	}

	public void setCompanyNm(String companyNm) {
		this.companyNm = companyNm;
	}

	public String getRegId() {
		return regId;
	}

	public void setRegId(String regId) {
		this.regId = regId;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getModId() {
		return modId;
	}

	public void setModId(String modId) {
		this.modId = modId;
	}

	public String getModDate() {
		return modDate;
	}

	public void setModDate(String modDate) {
		this.modDate = modDate;
	}

	public int getBookSeq() {
		return bookSeq;
	}

	public int getCompanyCd() {
		return companyCd;
	}

	public int getPrice() {
		return price;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + bookSeq;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Book other = (Book) obj;
		if (bookSeq != other.bookSeq)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Book [bookSeq=" + bookSeq + ", isbn=" + isbn + ", title=" + title + ", author=" + author + ", content="
				+ content + ", companyCd=" + companyCd + ", companyNm=" + companyNm + ", totalPage=" + totalPage
				+ ", price=" + price + ", quantity=" + quantity + ", regId=" + regId + ", regDate=" + regDate
				+ ", modId=" + modId + ", modDate=" + modDate + "]";
	}
	
	
	
}
