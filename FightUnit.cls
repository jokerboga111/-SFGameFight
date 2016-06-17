public class FightUnit{
    private String name;
    private Integer healthPoint;
    private Integer minDMG;
    private Integer maxDMG;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getHealthPoint() {
        return healthPoint;
    }

    public void setHealthPoint(Integer healthPoint) {
        this.healthPoint=healthPoint;
    }

    public Integer getMinDMG() {
        return minDMG;
    }

    public void setMinDMG(Integer damageMin) {
        this.minDMG = damageMin;
    }

    public Integer getMaxDMG() {
        return maxDMG;
    }

    public void setMaxDMG(Integer damageMax) {
        this.maxDMG = damageMax;
    }
    
    
}
