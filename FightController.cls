public class fightController{
public fightGame game{get;set;}
public fightUnit firstUnit{get;set;}
public fightUnit secondUnit{get;set;}
public fightUnit winner{get;set;}

 public fightController(){
 this.firstUnit=new fightUnit();
 this.secondUnit=new fightUnit();
 this.winner=new fightUnit();}
 
public PageReference fight() {
        game = new fightGame();
        winner = game.fight(firstUnit, secondUnit);
        return null;
    }
 
 }
