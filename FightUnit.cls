public class FightUnit{
    private String name;
    private Integer HP;
    private Integer minDMG;
    private Integer maxDMG;
    
    public FightUnit(){
        
    }

    public FightUnit(String name, Integer healthPoint, Integer damageMin, Integer damageMax) {
        this.name = name;
        this.HP = healthPoint;
        this.minDMG = damageMin;
        this.maxDMG = damageMax;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getHP() {
        return HP;
    }

    public void setHP(Integer healthPoint) {
        this.HP=healthPoint;
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