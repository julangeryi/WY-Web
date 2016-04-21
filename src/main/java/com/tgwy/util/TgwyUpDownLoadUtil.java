package com.tgwy.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import org.apache.commons.io.IOUtils;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.commons.net.ftp.FTPReply;

import com.tgwy.constant.TgwyConstant;

public class TgwyUpDownLoadUtil {
	
    public static void fileUploadByFtp(String fileName) {  
    	
        FTPClient ftpClient = new FTPClient();  
        FileInputStream fis = null;  
  
        try {  
        	ftpClient.connect("10.3.23.238",21);  
            ftpClient.login("vsftpuser", "vsftpvsftp");  
            
            if(FTPReply.isPositiveCompletion(ftpClient.getReplyCode())){
            	File srcFile = new File(TgwyConstant.inputLocation+fileName);  
            	fis = new FileInputStream(srcFile);  
            	// 设置上传目录  
            	ftpClient.changeWorkingDirectory("/user/ftpath");  
            	// 设置文件类型（二进制）  
            	ftpClient.setFileType(FTPClient.BINARY_FILE_TYPE);  
            	
            	ftpClient.storeFile(fileName, fis);  
            }
            
        } catch (IOException e) {  
            e.printStackTrace();  
            throw new RuntimeException("FTP客户端出错！", e);  
        } finally {  
            IOUtils.closeQuietly(fis);  
            try {  
                ftpClient.disconnect();  
            } catch (IOException e) {  
                e.printStackTrace();  
                throw new RuntimeException("关闭FTP连接发生异常！", e);  
            }  
        }  
    } 
    
    public static void fileDownLoadByFtp(String fileName){
    	
        FTPClient ftpClient = new FTPClient();  
        FileInputStream fis = null; 
        
        try {  
        	ftpClient.connect("10.3.23.238",21);  
            ftpClient.login("vsftpuser", "vsftpvsftp");  
            if(FTPReply.isPositiveCompletion(ftpClient.getReplyCode())){
            	// 设置上传目录  
            	ftpClient.changeWorkingDirectory("/user/ftpath");  
                FTPFile[] fs = ftpClient.listFiles();    
                for(FTPFile ff:fs){    
                    if(ff.getName().equals(fileName)){    
                        File localFile = new File("c:/"+TgwyDateStringUtil.getLocalDateOther()+ff.getName());    
                        OutputStream is = new FileOutputStream(localFile);     
                        ftpClient.retrieveFile(ff.getName(), is);    
                        is.close();    
                    }    
                } 
            }
            
        } catch (IOException e) {  
            e.printStackTrace();  
            throw new RuntimeException("FTP客户端出错！", e);  
        } finally {  
            IOUtils.closeQuietly(fis);  
            try {  
                ftpClient.disconnect();  
            } catch (IOException e) {  
                e.printStackTrace();  
                throw new RuntimeException("关闭FTP连接发生异常！", e);  
            }  
        }
    }
}
