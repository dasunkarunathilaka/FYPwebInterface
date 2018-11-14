package services;

import com.opencsv.CSVWriter;
import model.CDRModel;

import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;


public class CSVFileWriterService
{
    private static CSVFileWriterService instance = null;

    private CSVFileWriterService(){}

    public static CSVFileWriterService getInstance()
    {
        if (instance ==null )
            instance = new CSVFileWriterService();
        return instance;
    }

    public void writeArray(ArrayList<CDRModel> input) throws IOException {
        String csv = "/tmp/dataint/cdr.csv";
        ArrayList<String> writable = new ArrayList<String>();
        for (CDRModel model : input) {
            writable.add(model.getJSONString());
        }
        CSVWriter writer = new CSVWriter(new FileWriter(csv));
//        writer.writeAll((Iterable<String[]>) writable);
        System.out.println("CSV File written successfully All at a time");
        writer.close();
    }

}
