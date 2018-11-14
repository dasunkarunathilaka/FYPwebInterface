package com.fyp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import services.DBServicePostGreIml;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.sql.SQLException;

/**
 * Created by Dasun K on 9/26/2018.
 */

@Controller
public class HomeController {

//    private static final String INTERNAL_FILE = "Assignemt_TT_Swing.pdf";
    private static final String INTERNAL_FILE = "cdr.csv";
    private static final String EXTERNAL_FILE_PATH = "C:/Users/User/Desktop/Codegen/HotelReservationsSystem.zip";
    //TODO : file location = resources/cdr.csv <- make this downloadable

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getInput() {
        return "inputForm";
    }

    @RequestMapping(value = "/postInput", method = RequestMethod.POST)
    public String postInput(@RequestParam("userInput") String userInput) {
        System.out.println("User Input is : " + userInput);
        try {
            DBServicePostGreIml.getInstance().retrieveCDR(Integer.parseInt(userInput.replaceAll("[ ]","")));
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return "downloadPage";

    }

    @RequestMapping(value = "/download/{type}", method = RequestMethod.GET)
    public void downloadFile(HttpServletResponse response, @PathVariable("type") String type) throws IOException {

        File file = null;

        if (type.equalsIgnoreCase("internal")) {
            ClassLoader classloader = Thread.currentThread().getContextClassLoader();
            file = new File(classloader.getResource(INTERNAL_FILE).getFile());
        } else {
            file = new File(EXTERNAL_FILE_PATH);
        }

        if (!file.exists()) {
            String errorMessage = "Sorry. The file you are looking for does not exist";
            System.out.println(errorMessage);
            OutputStream outputStream = response.getOutputStream();
            outputStream.write(errorMessage.getBytes(Charset.forName("UTF-8")));
            outputStream.close();
            return;
        }

        String mimeType = URLConnection.guessContentTypeFromName(file.getName());
        if (mimeType == null) {
            System.out.println("mimetype is not detectable, will take default");
            mimeType = "application/octet-stream";
        }

        System.out.println("mimetype : " + mimeType);

        response.setContentType(mimeType);

        /* "Content-Disposition : inline" will show viewable types [like images/text/pdf/anything viewable by browser] right on browser
            while others(zip e.g) will be directly downloaded [may provide save as popup, based on your browser setting.]*/
        response.setHeader("Content-Disposition", String.format("inline; filename=\"" + file.getName() + "\""));


        /* "Content-Disposition : attachment" will be directly download, may provide save as popup, based on your browser setting*/
        //response.setHeader("Content-Disposition", String.format("attachment; filename=\"%s\"", file.getName()));

        response.setContentLength((int) file.length());

        InputStream inputStream = new BufferedInputStream(new FileInputStream(file));

        //Copy bytes from source to destination(outputstream in this example), closes both streams.
        FileCopyUtils.copy(inputStream, response.getOutputStream());
    }
}
