package murach.business;

public class User {
    private String firstName;
    private String lastName;
    private String email;
    private String dob;
    private String heardFrom;
    private String wantsUpdates;
    private String emailOK;
    private String contactVia;

    public User() {}

    public User(String firstName, String lastName, String email, String dob,
                String heardFrom, String wantsUpdates, String emailOK, String contactVia) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.dob = dob;
        this.heardFrom = heardFrom;
        this.wantsUpdates = wantsUpdates;
        this.emailOK = emailOK;
        this.contactVia = contactVia;
    }

    // Getters and setters for all fields
    public String getFirstName() { return firstName; }
    public String getLastName() { return lastName; }
    public String getEmail() { return email; }
    public String getDob() { return dob; }
    public String getHeardFrom() { return heardFrom; }
    public String getWantsUpdates() { return wantsUpdates; }
    public String getEmailOK() { return emailOK; }
    public String getContactVia() { return contactVia; }

    public void setFirstName(String firstName) { this.firstName = firstName; }
    public void setLastName(String lastName) { this.lastName = lastName; }
    public void setEmail(String email) { this.email = email; }
    public void setDob(String dob) { this.dob = dob; }
    public void setHeardFrom(String heardFrom) { this.heardFrom = heardFrom; }
    public void setWantsUpdates(String wantsUpdates) { this.wantsUpdates = wantsUpdates; }
    public void setEmailOK(String emailOK) { this.emailOK = emailOK; }
    public void setContactVia(String contactVia) { this.contactVia = contactVia; }
}