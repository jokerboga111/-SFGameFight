public class FightController{
public FightGame game{get;set;}
public FightUnit FirstUnit{get;set;}
public FightUnit SecondUnit{get;set;}
public FightUnit winner{get;set;}

 public FightController(){
 this.FirstUnit=new FightUnit();
 this.SecondUnit=new FightUnit();
 this.winner=new FightUnit();}
 
public PageReference fight() {
        game = new FightGame();
        winner = game.fight(FirstUnit, SecondUnit);
        return null;
    }
 
 }