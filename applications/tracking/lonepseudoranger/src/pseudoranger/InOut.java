/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pseudoranger;

/**
 *
 * @author admin
 * src http://www.developerfusion.com/code/2064/a-simple-way-to-read-an-xml-file-in-java/
 */
import java.io.File;
import org.w3c.dom.Document;
import org.w3c.dom.*;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException; 

public class InOut{

    public static void XMLinStation (){
    try {

            DocumentBuilderFactory docBuilderFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder docBuilder = docBuilderFactory.newDocumentBuilder();
            Document doc = docBuilder.parse (new File(Main.dir+""+Main.separator+"station.xml"));

            // normalize text representation
            doc.getDocumentElement ().normalize ();
            System.out.println ("Root element of the doc is " + 
                 doc.getDocumentElement().getNodeName());


            NodeList listOfRangers = doc.getElementsByTagName("station");
            int totalStations = listOfRangers.getLength();
            System.out.println("Total no of stations : " + totalStations);
            pseudoranger.Main.stations = totalStations;
            pseudoranger.Main.x = new double[totalStations];
            pseudoranger.Main.y = new double[totalStations];
            pseudoranger.Main.z = new double[totalStations];
            pseudoranger.Main.t = new double[totalStations];
            pseudoranger.Main.station_latency = new double[totalStations];

            for(int s=0; s<listOfRangers.getLength() ; s++){


                Node idNode = listOfRangers.item(s);
                if(idNode.getNodeType() == Node.ELEMENT_NODE){


                    Element StationElement = (Element)idNode;

                    //-------
                    NodeList idList = StationElement.getElementsByTagName("id");
                    Element idElement = (Element)idList.item(0);

                    NodeList textidList = idElement.getChildNodes();
                    System.out.println("id : " + 
                           ((Node)textidList.item(0)).getNodeValue().trim());
                    
                    //-------
                    NodeList xList = StationElement.getElementsByTagName("x");
                    Element xElement = (Element)xList.item(0);

                    NodeList textxList = xElement.getChildNodes();
                    System.out.println("X : " + 
                           ((Node)textxList.item(0)).getNodeValue().trim());
                    pseudoranger.Main.x[s] = Double.parseDouble(((Node)textxList.item(0)).getNodeValue().trim());

                    //-------
                    NodeList yList = StationElement.getElementsByTagName("y");
                    Element yElement = (Element)yList.item(0);

                    NodeList textyList = yElement.getChildNodes();
                    System.out.println("Y : " + 
                           ((Node)textyList.item(0)).getNodeValue().trim());
                    pseudoranger.Main.y[s] = Double.parseDouble(((Node)textyList.item(0)).getNodeValue().trim());

                    //----
                    NodeList zList = StationElement.getElementsByTagName("z");
                    Element zElement = (Element)zList.item(0);

                    NodeList textzList = zElement.getChildNodes();
                    System.out.println("Z : " + 
                           ((Node)textzList.item(0)).getNodeValue().trim());
                    pseudoranger.Main.z[s] = Double.parseDouble(((Node)textzList.item(0)).getNodeValue().trim());

                    //------
                    NodeList tList = StationElement.getElementsByTagName("t");
                    Element tElement = (Element)tList.item(0);

                    NodeList texttList = tElement.getChildNodes();
                    System.out.println("t : " + 
                           ((Node)texttList.item(0)).getNodeValue().trim());
                    pseudoranger.Main.t[s] = Double.parseDouble(((Node)texttList.item(0)).getNodeValue().trim());

                    //------
                    NodeList tlatencyList = StationElement.getElementsByTagName("tlatency");
                    Element tlatencyElement = (Element)tlatencyList.item(0);

                    NodeList texttlatencyList = tlatencyElement.getChildNodes();
                    System.out.println("tlatency : " + 
                           ((Node)texttlatencyList.item(0)).getNodeValue().trim());
                    pseudoranger.Main.station_latency[s] = Double.parseDouble(((Node)texttlatencyList.item(0)).getNodeValue().trim());

                    //------


                }//end of if clause


            }//end of for loop with s var


        }catch (SAXParseException err) {
        System.out.println ("** Parsing error" + ", line " 
             + err.getLineNumber () + ", uri " + err.getSystemId ());
        System.out.println(" " + err.getMessage ());

        }catch (SAXException e) {
        Exception x = e.getException ();
        ((x == null) ? e : x).printStackTrace ();

        }catch (Throwable t) {
        t.printStackTrace ();
        }
        //System.exit (0);

    }//end of main

    public static void XMLinBeacon (){
    try {

            DocumentBuilderFactory docBuilderFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder docBuilder = docBuilderFactory.newDocumentBuilder();
            Document doc = docBuilder.parse (new File(Main.dir+""+Main.separator+"station.xml"));

            // normalize text representation
            doc.getDocumentElement ().normalize ();
            System.out.println ("Root element of the doc is " + 
                 doc.getDocumentElement().getNodeName());


            NodeList listOfRangers = doc.getElementsByTagName("beacon");
            int totalStations = listOfRangers.getLength();
            System.out.println("Total no of stations : " + totalStations);

            for(int s=0; s<listOfRangers.getLength() ; s++){


                Node idNode = listOfRangers.item(s);
                if(idNode.getNodeType() == Node.ELEMENT_NODE){


                    Element StationElement = (Element)idNode;

                    //-------
                    NodeList idList = StationElement.getElementsByTagName("id");
                    Element idElement = (Element)idList.item(0);

                    NodeList textidList = idElement.getChildNodes();
                    System.out.println("id : " + 
                           ((Node)textidList.item(0)).getNodeValue().trim());
                    
                    //------
                    NodeList tList = StationElement.getElementsByTagName("t");
                    Element tElement = (Element)tList.item(0);

                    NodeList texttList = tElement.getChildNodes();
                    System.out.println("t : " + 
                           ((Node)texttList.item(0)).getNodeValue().trim());
                    pseudoranger.Main.t0 = Double.parseDouble(((Node)texttList.item(0)).getNodeValue().trim());

                    //------


                }//end of if clause


            }//end of for loop with s var


        }catch (SAXParseException err) {
        System.out.println ("** Parsing error" + ", line " 
             + err.getLineNumber () + ", uri " + err.getSystemId ());
        System.out.println(" " + err.getMessage ());

        }catch (SAXException e) {
        Exception x = e.getException ();
        ((x == null) ? e : x).printStackTrace ();

        }catch (Throwable t) {
        t.printStackTrace ();
        }
        //System.exit (0);

    }//end of main
    
    public static void XMLinConfig (){
    try {

            DocumentBuilderFactory docBuilderFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder docBuilder = docBuilderFactory.newDocumentBuilder();
            Document doc = docBuilder.parse (new File(Main.dir+""+Main.separator+"config.xml"));

            // normalize text representation
            doc.getDocumentElement ().normalize ();
            System.out.println ("Root element of the doc is " + 
                 doc.getDocumentElement().getNodeName());


            NodeList listOfRangers = doc.getElementsByTagName("ranger");
            int totalStations = listOfRangers.getLength();
            System.out.println("Total no of rangers : " + totalStations);

            for(int s=0; s<listOfRangers.getLength() ; s++){


                Node idNode = listOfRangers.item(s);
                if(idNode.getNodeType() == Node.ELEMENT_NODE){


                    Element StationElement = (Element)idNode;

                    //-------
                    NodeList testList = StationElement.getElementsByTagName("testmode");
                    Element testElement = (Element)testList.item(0);

                    NodeList texttestList = testElement.getChildNodes();
                    System.out.println("testmodeID : " + 
                           ((Node)texttestList.item(0)).getNodeValue().trim());
                    pseudoranger.Main.testmode = Integer.parseInt(((Node)texttestList.item(0)).getNodeValue().trim());
                    
                    //------


                }//end of if clause


            }//end of for loop with s var


        }catch (SAXParseException err) {
        System.out.println ("** Parsing error" + ", line " 
             + err.getLineNumber () + ", uri " + err.getSystemId ());
        System.out.println(" " + err.getMessage ());

        }catch (SAXException e) {
        Exception x = e.getException ();
        ((x == null) ? e : x).printStackTrace ();

        }catch (Throwable t) {
        t.printStackTrace ();
        }
        //System.exit (0);

    }//end of main
}
