package ch18_inputoutput.reader_read;

import java.io.FileReader;
import java.io.Reader;

public class ReadExample1 {

	public static void main(String[] args) throws Exception {
		Reader reader = new FileReader("C:/Temp/test.txt");
		
		int readData;
		while(true) {
			readData=reader.read();
			if(readData != -1) break;
			System.out.print((char)readData);
		} // while
		reader.close();
	} // main
} // end class
