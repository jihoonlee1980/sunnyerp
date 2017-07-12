package spring.util;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import org.springframework.web.multipart.MultipartFile;

public class SpringFileWriter {
	private FileOutputStream fos;

	public void writeFile(MultipartFile file,String path,String fileName)
	{
		try {
			byte fileData[]=file.getBytes();
			fos=new FileOutputStream(path+"\\"+fileName);
			/*fos=new FileOutputStream("/home/hosting_users/sunnyerp/tomcat/webapps/ROOT/save/"+"/"+fileName);*/
			fos.write(fileData);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try{
				if(fos!=null)
					fos.close();
			}catch(Exception e){}
		}		
	}

	public void writeFile(ArrayList<MultipartFile> list,String path) throws Exception
	{
		for(MultipartFile file:list)
		{

			byte fileData[]=file.getBytes();
			fos=new FileOutputStream(path+"\\"+file.getOriginalFilename());
			/*fos=new FileOutputStream
					("/home/hosting_users/sunnyerp/tomcat/webapps/ROOT/save/"+"/"+file.getOriginalFilename());*/
			fos.write(fileData);

			if(fos!=null)
				fos.close();
		}
	}
}     
