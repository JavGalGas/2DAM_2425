package Exercise1;

public class Student
{
    private String name;
    private int grade;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        if (grade >= 0 && grade <= 10)
            this.grade = grade;
    }

    public Boolean Passed() {
        return grade >= 5;
    }

}
