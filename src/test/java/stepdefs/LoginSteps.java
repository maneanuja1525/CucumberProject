package stepdefs;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.junit.*;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class LoginSteps {

	WebDriver driver=BaseClass.driver;
	
	@Given("I have opened the application in browser")
	public void i_have_opened_the_application_in_browser() {
	    // Write code here that turns the phrase above into concrete actions
		driver.get("https://www.simplilearn.com");
		
	}

	@When("I click on the login link")
	public void i_click_on_the_login_link() {
	    // Write code here that turns the phrase above into concrete actions
		WebElement LoginText=driver.findElement(By.linkText("Log in"));
		LoginText.click();
	}

	@When("I enter username")
	public void i_enter_username() {
	    // Write code here that turns the phrase above into concrete actions
		WebElement username=driver.findElement(By.xpath("//input[@class='email']"));
		username.sendKeys("abc@xyz.com");
	}

	@When("I enter password")
	public void i_enter_password() {
	    // Write code here that turns the phrase above into concrete actions
		WebElement password=driver.findElement(By.xpath("//input[@id='password']"));
		password.sendKeys("abc@123");
	}

	@When("I click on the login Button")
	public void i_click_on_the_login_button() {
	    // Write code here that turns the phrase above into concrete actions
	   WebElement loginButton=driver.findElement(By.xpath("//input[@type='submit']"));
	   loginButton.click();
	}

	@Then("I should be Landed on the home page")
	public void i_should_be_landed_on_the_home_page() {
	    // Write code here that turns the phrase above into concrete actions
	    System.out.println("Inside the Simplilearn homepage");
	}

	@When("I enter username {string}")
	public void i_enter_username(String usernameVal) {
	    // Write code here that turns the phrase above into concrete actions
		WebElement username=driver.findElement(By.xpath("//input[@class='email']"));
	    username.sendKeys(usernameVal);
	}

	@When("I enter password {string}")
	public void i_enter_password(String passwordVal) {
	    // Write code here that turns the phrase above into concrete actions
		WebElement password=driver.findElement(By.xpath("//input[@id='password']"));
		password.sendKeys(passwordVal);
	}

	@Then("I should get the errorMsg {string}")
	public void i_should_get_the_error_msg(String ExpMsg) {
	    // Write code here that turns the phrase above into concrete actions

		WebElement ErrorMsg= driver.findElement(By.id("msg_box"));
		String ActualMsg=ErrorMsg.getText();
		Assert.assertEquals(ExpMsg, ActualMsg) ;
	}
}
