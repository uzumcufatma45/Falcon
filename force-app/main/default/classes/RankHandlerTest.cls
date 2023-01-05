@isTest
public class RankHandlerTest {
@isTest  
private static void TestRank(){
    RankHandler a = new RankHandler();
    string IsGold = a.rankPrize(1);
    System.assertEquals('Gold', IsGold);
    
    string IsSilver = a.rankPrize(2);
    System.assertEquals('Silver', IsSilver);
    
    string IsBronze = a.rankPrize(3);
    System.assertEquals('Bronze', IsBronze);
    
    string IsTop = a.rankPrize(8);
    System.assertEquals('Top 10', IsTop);
  
    string IsPart = a.rankPrize(11);
    System.assertEquals('Participation certificate', IsPart);

}  
    @isTest
private static void TestRank2(){
    RankHandler b = new RankHandler();
    string IsGold = b.rankPrizeSwitch(1);
    System.assertEquals('Gold', IsGold);
    
    string IsSilver = b.rankPrizeSwitch(2);
    System.assertEquals('Silver', IsSilver);
    
    string IsBronze = b.rankPrizeSwitch(3);
    System.assertEquals('Bronze', IsBronze);
    
    string IsTop = b.rankPrizeSwitch(8);
    System.assertEquals('Top 10', IsTop);
  
    string IsPart = b.rankPrizeSwitch(11);
    System.assertEquals('thank you for participating', IsPart);

    }
}