public class FightGame {
public class FightGame {
    public List<String> fightLogs{get;set;}

    public FightGame()
    {
        this.fightLogs=new List<String>();
    }
   
    public Integer getRandomNumber(Integer size)
    {
          Double d = math.random() * size;
          return d.intValue();
    }   
    
    private Boolean getRandomBoolean()
    {
          if(math.mod(getRandomNumber(10),2) == 0)
          {
               return true;
          }
          else
          {
               return false;
          }
     }
    
 public FightUnit fight(FightUnit unitFirst, FightUnit unitSecond) 
    {
        while (unitFirst.getHealthPoint() > 0 && unitSecond.getHealthPoint() > 0) 
        {
            if (getRandomBoolean())//use method RandomBoolean
            { 
                oneKick(unitFirst, unitSecond);
            } 
            else 
            {
                oneKick( unitSecond,unitFirst);
            }
        }
        return inspectionHP(unitFirst,unitSecond);

    }
     public FightUnit inspectionHP(FightUnit unitFirst,FightUnit unitSecond)
     {
        if (unitFirst.getHealthPoint() > 0) 
        {
            return unitFirst;
        }
         else 
        {
            return unitSecond;
        }
     }
    
      private void oneKick(FightUnit unitFirst, FightUnit unitSecond) 
      {
        Integer loseHp = unitFirst.getHealthPoint() - KickRandom(unitSecond);
       
        if (loseHp > 0) 
        {
         unitFirst.setHealthPoint(loseHp);
         fightLogs.add(unitFirst.getName() + ' осталось '+unitFirst.getHealthPoint() + ' жизненых поинтов.');
        } 
        else
        {
         unitFirst.setHealthPoint(0);
         fightLogs.add(unitFirst.getName() + ' осталось '+unitFirst.getHealthPoint() + ' жизненых поинтов.');
         fightLogs.add(unitFirst.getName() + ' Умер,слабак!!!');
        
        }
      }
    
      private Integer KickRandom(FightUnit unit){
      
       Integer Kick=(Integer) (Math.floor(Math.random()*(unit.getMaxDMG() - unit.getMinDMG() + 1) + unit.getMinDMG()));
       String chest='грудь';
       String head='голова';
       String legs='ноги';
       Integer atackChois=(Integer)(Math.random()*3);
       Integer blockChois=(Integer)(Math.random()*3);
       
       if(atackChois==blockChois)
       {
       fightLogs.add(unit.getName() + ' блокировал удар');
       Kick=0;
       }
       if(atackChois==0)
       {
       fightLogs.add(unit.getName() + ' атаковал с силой ' + Kick+' в '+ head);
       }
       else if(atackChois==1)
       {
       fightLogs.add(unit.getName() + ' атаковал с силой ' + Kick+' в '+ chest);
       }else
       {
       fightLogs.add(unit.getName() + ' атаковал с силой ' + Kick+' в '+ legs);
       }
         
       return Kick;
    }
}
