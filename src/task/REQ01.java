package task;

import java.io.PrintStream;
import java.util.concurrent.TimeUnit;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.internal.TextListener;
import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.NoAlertPresentException;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebDriver.Options;
import org.openqa.selenium.WebDriver.TargetLocator;
import org.openqa.selenium.WebDriver.Timeouts;
import org.openqa.selenium.firefox.FirefoxDriver;

public class REQ01
{
  private WebDriver driver;
  private String baseUrl;
  private boolean acceptNextAlert = true;
  private StringBuffer verificationErrors = new StringBuffer();
  
  public static void main(String[] args)
  {
    JUnitCore junit = new JUnitCore();
    junit.addListener(new TextListener(System.out));
    Result result = junit.run(new Class[] { REQ01.class });
    if (result.getFailureCount() > 0)
    {
      System.out.println("Test failed.");
      System.exit(1);
    }
    else
    {
      System.out.println("Test finished Successfully.");
      System.exit(0);
    }
  }
  
  @Before
  public void setUp()
    throws Exception
  {
    this.driver = new FirefoxDriver();
    this.baseUrl = "http://uitest.duodecadits.com/";
    this.driver.manage().timeouts().implicitlyWait(30L, TimeUnit.SECONDS);
  }
  
  @Test
  public void testTitleCheckREQ01()
    throws Exception
  {
    this.driver.get("http://uitest.duodecadits.com/");
    try
    {
      Assert.assertEquals("UI Testing Site", this.driver.getTitle());
    }
    catch (Error e)
    {
      this.verificationErrors.append(e.toString());
    }
    this.driver.get("http://uitest.duodecadits.com/form.html");
    try
    {
      Assert.assertEquals("UI Testing Site", this.driver.getTitle());
    }
    catch (Error e)
    {
      this.verificationErrors.append(e.toString());
    }
    this.driver.get("http://uitest.duodecadits.com/hello.html");
    try
    {
      Assert.assertEquals("UI Testing Site", this.driver.getTitle());
    }
    catch (Error e)
    {
      this.verificationErrors.append(e.toString());
    }    
  }
  
  @After
  public void tearDown()
    throws Exception
  {
    this.driver.close();
    String verificationErrorString = this.verificationErrors.toString();
    if (!"".equals(verificationErrorString)) {
      Assert.fail(verificationErrorString);
    }
  }
  
  private boolean isElementPresent(By by)
  {
    try
    {
      this.driver.findElement(by);
      return true;
    }
    catch (NoSuchElementException e) {}
    return false;
  }
  
  private boolean isAlertPresent()
  {
    try
    {
      this.driver.switchTo().alert();
      return true;
    }
    catch (NoAlertPresentException e) {}
    return false;
  }
  
  private String closeAlertAndGetItsText()
  {
    try
    {
      Alert alert = this.driver.switchTo().alert();
      String alertText = alert.getText();
      if (this.acceptNextAlert) {
        alert.accept();
      } else {
        alert.dismiss();
      }
      return alertText;
    }
    finally
    {
      this.acceptNextAlert = true;
    }
  }
}
