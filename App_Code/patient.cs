using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for patient
/// </summary>
/// 
[Serializable]
public  class patient
{
   public int id;
   public string name;
    public string date;
    public string age;
    public string address;
    public string occup;
    public double price;
    public string dis;
    public string followUP;

    public patient()
    {
        

        //
        // TODO: Add constructor logic here
        //
    }
}