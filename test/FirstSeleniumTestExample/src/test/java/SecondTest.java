import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;


public class SecondTest {

    //-----------------------------------Global Variables-----------------------------------
    //Declare a Webdriver variable
    public WebDriver driver;

    //Declare a test URL variable
    public String testURL = "https://dev04-direct-godivauk.demandware.net/s/Godiva/home?lang=en_US";

    //-----------------------------------Test Setup-----------------------------------
    @BeforeMethod
    public void setupTest (){
        System.setProperty("webdriver.chrome.driver", "chromedriver");
        //Create a new ChromeDriver
        driver = new ChromeDriver();

        //Go to www.swtestacademy.com
        driver.navigate().to(testURL);
    }

    //-----------------------------------Tests-----------------------------------
    @Test
    public void getNavbar() throws InterruptedException {
        driver.manage().window().maximize();
        Thread.sleep(3000);
        WebElement clickmodal = driver.findElement(By.className("affirm"));
        clickmodal.click();
        Thread.sleep(2000);
        WebElement navbar = driver.findElement(By.xpath("//nav[@role='navigation']"));
        Assert.assertEquals(true, navbar.isDisplayed());
    }

    //-----------------------------------Test TearDown-----------------------------------
    @AfterMethod
    public void teardownTest (){

    }

}
