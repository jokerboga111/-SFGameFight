public class FightGame {
    public List<String> fightLogs{get;set;}

    public FightGame(){
        this.fightLogs=new List<String>();
    }
    

    
 public FightUnit fight(FightUnit unitFirst, FightUnit unitSecond) {

        while (unitFirst.getHP() > 0 && unitSecond.getHP() > 0) {
            if (Math.random() > 0.5) {    // randomizing players turn
                oneKick(unitFirst, unitSecond);
            } else {
                oneKick( unitSecond,unitFirst);
            }
        }
         return inspectionHP(unitFirst,unitSecond);

    }
     public FightUnit inspectionHP(FightUnit unitFirst,FightUnit unitSecond){
        if (unitFirst.getHP() > 0) {
            return unitFirst;
        } else {
            return unitSecond;
        }
        }
    
      private void oneKick(FightUnit unitFirst, FightUnit unitSecond) {
        Integer loseHp = unitFirst.getHP() - KickRandom(unitSecond);
        if (loseHp > 0) {
            fightLogs.add(unitFirst.getName() + ' осталось'+unitFirst.getHP() + ' жизненых поинтов.');
            unitFirst.setHP(loseHp);
        } else {
            unitFirst.setHP(0);
            fightLogs.add(unitFirst.getName() + ' осталось'+unitFirst.getHP() + ' жизненых поинтов.');
            fightLogs.add(unitFirst.getName() + ' Умер,слабак!!!');
        
        }
    }
    
      private Integer KickRandom(FightUnit unit){
      Integer Kick=(Integer) (Math.floor(Math.random()*(unit.getMaxDMG() - unit.getMinDMG() + 1) + unit.getMinDMG()));
      fightLogs.add(unit.getName() + ' атаковал с силой ' + Kick);	
      return Kick;
    }
}