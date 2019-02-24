/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package library;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author honey
 */
public class DEFAULTER_LIST extends javax.swing.JInternalFrame {
public int fine;
    /**
     * Creates new form DEFAULTER_LIST
     */
    public DEFAULTER_LIST() {
        initComponents();
     try{DefaultTableModel d1=(DefaultTableModel)ta.getModel();
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql:///library","root","roh##46705R");
            PreparedStatement smt=con.prepareStatement("select student_info.name,\n" +
"       issue_book1.book_id, \n" +
"       book.book_name,\n" +
"       date_format(issue_date,'%d/%m/%y') as id,\n" +
"       date_format(due_date,'%d/%m/%y') as dt,\n" +
"       date_format(date_return,'%d/%m/%y') as dr,\n" +
"       datediff (date_return,due_date) as days\n" +
"       from issue_book1 \n" +
"inner join student_info on student_info.identity_no= issue_book1.identity_no\n" +
"inner join book on book.book_id= issue_book1.book_id\n" +
"where date_return>due_date  order by student_info.`Name`");  
 ResultSet rs=smt.executeQuery();
            while(rs.next())
            { String a=rs.getString("name");
              String b=rs.getString("book_id");
              String c=rs.getString("book_name");
              String d=rs.getString("id");
              String e=rs.getString("dt");
              String f=rs.getString("dr");
              String g=rs.getString("days");
              Integer h= Integer.parseInt(g)*15;
              Object pc[]={a,b,c,d,e,f,g,h};
              d1.addRow(pc); 
            }            
     }
     catch(Exception e)
     { 
      System.out.println(e);
     }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        ta = new javax.swing.JTable();

        setClosable(true);
        setIconifiable(true);
        setTitle("LIBRARY MANAGEMENT INFORMATION SYSTEM");

        ta.setFont(new java.awt.Font("Tahoma", 1, 10)); // NOI18N
        ta.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Name", "Book ID", "Book Name", "Issue Date", "Due Date", "Return Date", "Days", "Fine"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane1.setViewportView(ta);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 915, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(43, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable ta;
    // End of variables declaration//GEN-END:variables
}
