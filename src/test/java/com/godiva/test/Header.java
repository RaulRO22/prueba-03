package com.godiva.test;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.AfterEach;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

import java.util.concurrent.TimeUnit;

public class Header {
    public WebDriver driver;
    public String testURL = "https://dev01-direct-godivauk.demandware.net/s/Godiva/home?lang=en_US";

    @BeforeEach
    public void setupTest (){
        ChromeOptions options = new ChromeOptions();
        options.addArguments("--headless");

        driver = new ChromeDriver(options);

        driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
        driver.manage().window().maximize();
        driver.navigate().to(testURL);

        //accept cookies
        WebElement cookieModal = driver.findElement(By.className("affirm"));
        cookieModal.click();
    }

    @Test
    public void isNavBarVisible() {
        WebElement navbar = driver.findElement(By.xpath("//nav[@role='navigation']"));
        Assertions.assertTrue(navbar.isDisplayed());
    }

    @AfterEach
    public void teardownTest (){
        driver.quit();
    }

}