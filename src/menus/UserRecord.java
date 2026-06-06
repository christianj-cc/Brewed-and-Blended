package menus;

public class UserRecord {
// Instance variables
    private static String username;
 
    //empty constructor
    public UserRecord() { }
   
    public UserRecord(String username)
    {
        this.username = username;
    }
 
    public String getUsername() { 
         return username; 
    }
 
    public void setUsername(String username) {
        this.username = username;
    }
 
    // toString() Method @return
    @Override
    public String toString() {
        return String.format("%-15s", username);
    }
}
