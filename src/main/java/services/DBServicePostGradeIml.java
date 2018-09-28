package services;

/**
 * created by Shankaja
 */

import model.CDRModel;

import java.util.ArrayList;

public class DBServicePostGradeIml implements DBService {

    private static DBService instance = null;

    public static DBService getInstance()
    {
        if (instance == null )
            instance = new DBServicePostGradeIml();
        return instance;
    }

    private DBServicePostGradeIml(){}

    //TODO : implement according to postgrade sql
    @Override
    public ArrayList<CDRModel> retrieveCDR(int numObjects) {
        return null;
    }

    @Override
    public CDRModel retrieveCDRAt(int index) {
        return null;
    }

    @Override
    public int totalObjects() {
        return 0;
    }

    @Override
    public int indexOf(CDRModel model) {
        return 0;
    }
}
