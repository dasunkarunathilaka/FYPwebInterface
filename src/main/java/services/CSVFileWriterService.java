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

//        CDRModel has 6 fields --> 6 items in each array (for each row)
        String csv = "/tmp/dataint/cdr.csv";
        ArrayList<String[]> writable = new ArrayList<>();
        for (CDRModel model : input) {
            String cdrString = model.getJSONString();
            writable.add(cdrString.split(","));
        }
        CSVWriter writer = new CSVWriter(new FileWriter(csv));
        writer.writeAll((Iterable<String[]>) writable);
        System.out.println("CSV File written successfully All at a time");
        writer.close();
    }

}
