<?php
use PhpUnit\Framework\TestCase;
use login\classes\User;



class UserTest extends TestCase
{
    public function testRegisterUser()
    {
        $user = new User();
        $user->username = 'testuser';
        $user->email = 'test@example.com';
        $user->SetPassword('testpassword');

        $errors = $user->RegisterUser();

        // Controleer of er geen fouten zitten bij het registreren van de gebruiker
        $this->assertEmpty($errors);

     
    }

    public function testLoginUser()
    {
        $user = new User();
        $user->username = 'testuser';
        $user->SetPassword('testpassword');

        
        $isLoggedIn = $user->LoginUser();

        // Controleer of de gebruiker is ingelogd 
        $this->assertTrue($isLoggedIn);

        // Controleer of de gebruiker nu is ingelogd
        $this->assertTrue($user->IsLoggedin());
    }

    public function testLogout()
    {
        $user = new User();
        $user->Logout();

        
        $this->assertFalse($user->IsLoggedin());
    }
}
?>
