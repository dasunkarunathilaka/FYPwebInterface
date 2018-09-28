package services;

/**
 * created by Shankaja
 */

import model.CDRModel;

import java.util.ArrayList;

public interface DBService
{
    /**
     *  retrieve a requested number of objects from the DB
     * @param numObjects
     * @return array list of CDRModel
     */
    public abstract ArrayList<CDRModel> retrieveCDR(int numObjects);


    /**
     * retrieve a pointed object from the DB
     * @return CDRModel
     */
    public abstract CDRModel retrieveCDRAt(int index);

    /**
     *
     * @return num total objects
     */
    public abstract int totalObjects();

    /**
     * get the index of a certain cdr obj
     * @param model
     * @return index of the model
     */
    public abstract int indexOf(CDRModel model);
}
