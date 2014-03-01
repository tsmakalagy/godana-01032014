<?php
/**
 * BjyAuthorize Module (https://github.com/bjyoungblood/BjyAuthorize)
 *
 * @link https://github.com/bjyoungblood/BjyAuthorize for the canonical source repository
 * @license http://framework.zend.com/license/new-bsd New BSD License
 */
namespace SamUser\Entity;

use Godana\Entity\File as File;
use BjyAuthorize\Provider\Role\ProviderInterface;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\ORM\Mapping as ORM;
use ZfcUser\Entity\UserInterface;

/**
 * An example of how to implement a role aware user entity.
 *
 * @ORM\Entity(repositoryClass="Godana\Entity\UserRepository")
 * @ORM\Table(name="users")
 *
 * @author Tom Oram <tom@scl.co.uk>
 */
class User implements UserInterface, ProviderInterface
{
    /**
     * @var int
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @var string
     * @ORM\Column(type="string", length=255, unique=true, nullable=true)
     */
    protected $username;

    /**
     * @var string
     * @ORM\Column(type="string", unique=true,  length=255)
     */
    protected $email;

    /**
     * @var string
     * @ORM\Column(type="string", length=50, nullable=true)
     */
    protected $displayName;

    /**
     * @var string
     * @ORM\Column(type="string", length=128)
     */
    protected $password;

    /**
     * @var int
     * @ORM\Column(type="integer", nullable=true)
     */
    protected $state;

    /**
     * @var \Doctrine\Common\Collections\Collection
     * @ORM\ManyToMany(targetEntity="SamUser\Entity\Role")
     * @ORM\JoinTable(name="users_roles",
     *      joinColumns={@ORM\JoinColumn(name="user_id", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="role_id", referencedColumnName="id")}
     * )
     */
    protected $roles;
    
    
    /**
     * @var string
     * @ORM\Column(type="string", length=128, nullable=true)
     */
    protected $firstname;
    
    /**
     * @var string
     * @ORM\Column(type="string", length=256, nullable=true)
     */
    protected $lastname;
    
    /**
     * @var date
     * @ORM\Column(type="date", nullable=true)
     */
    protected $dateofbirth;
    
    /**
     * @var int
     * @ORM\Column(type="integer", length=1, nullable=true)
     */
    protected $sex;
    
    /**
     * @var File
     * @ORM\ManyToOne(targetEntity="Godana\Entity\File")
     * @ORM\JoinColumn(name="file_id", referencedColumnName="id_file")
     */
    protected $file;
    

    /**
     * Initialies the roles variable.
     */
    public function __construct()
    {
        $this->roles = new ArrayCollection();
    }

    /**
     * Get id.
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set id.
     *
     * @param int $id
     *
     * @return void
     */
    public function setId($id)
    {
        $this->id = (int) $id;
    }

    /**
     * Get username.
     *
     * @return string
     */
    public function getUsername()
    {
        return $this->username;
    }

    /**
     * Set username.
     *
     * @param string $username
     *
     * @return void
     */
    public function setUsername($username)
    {
        $this->username = $username;
    }

    /**
     * Get email.
     *
     * @return string
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * Set email.
     *
     * @param string $email
     *
     * @return void
     */
    public function setEmail($email)
    {
        $this->email = $email;
    }

    /**
     * Get displayName.
     *
     * @return string
     */
    public function getDisplayName()
    {
        return $this->displayName;
    }

    /**
     * Set displayName.
     *
     * @param string $displayName
     *
     * @return void
     */
    public function setDisplayName($displayName)
    {
        $this->displayName = $displayName;
    }

    /**
     * Get password.
     *
     * @return string
     */
    public function getPassword()
    {
        return $this->password;
    }

    /**
     * Set password.
     *
     * @param string $password
     *
     * @return void
     */
    public function setPassword($password)
    {
        $this->password = $password;
    }

    /**
     * Get state.
     *
     * @return int
     */
    public function getState()
    {
        return $this->state;
    }

    /**
     * Set state.
     *
     * @param int $state
     *
     * @return void
     */
    public function setState($state)
    {
        $this->state = $state;
    }
    
	public function addRoles(\Doctrine\Common\Collections\Collection $roles)
    {
        foreach ($roles as $role) {
            $this->roles->add($role);
        }
    }

    public function removeRoles(\Doctrine\Common\Collections\Collection $roles)
    {
        foreach ($roles as $role) {
            $this->roles->removeElement($role);
        }
    }

    /**
     * Get role.
     *
     * @return array
     */
    public function getRoles()
    {
        return $this->roles->getValues();
    }

    /**
     * Add a role to the user.
     *
     * @param Role $role
     *
     * @return void
     */
    public function addRole($role)
    {
        $this->roles[] = $role;
    }
    
    public function hasRole($roleId)
    {
    	$hasRole = false;
    	foreach ($this->roles as $role) {
    		if ($role->getRoleId() == $roleId) {
    			$hasRole = true;
    		}
    	}
    	return $hasRole;
    }
    
	/**
     * Get firstname.
     *
     * @return string
     */
    public function getFirstname()
    {
        return $this->firstname;
    }

    /**
     * Set firstname.
     *
     * @param string $firstname
     *
     * @return void
     */
    public function setFirstname($firstname)
    {
        $this->firstname = $firstname;
    }
    
	/**
     * Get lastname.
     *
     * @return string
     */
    public function getLastname()
    {
        return $this->lastname;
    }

    /**
     * Set lastname.
     *
     * @param string $lastname
     *
     * @return void
     */
    public function setLastname($lastname)
    {
        $this->lastname = $lastname;
    }
    
	/**
     * Get dateofbirth.
     *
     * @return Date
     */
    public function getDateofbirth()
    {
        return $this->dateofbirth;
    }

    /**
     * Set dateofbirth.
     *
     * @param Date $dateofbirth
     *
     * @return void
     */
    public function setDateofbirth($dateofbirth)
    {
        $this->dateofbirth = $dateofbirth;
    }
    
	/**
     * Get sex.
     *
     * @return int
     */
    public function getSex()
    {
        return $this->sex;
    }

    /**
     * Set sex.
     *
     * @param int $sex
     *
     * @return void
     */
    public function setSex($sex)
    {
        $this->sex = $sex;
    }
    
    public function getFile()
    {
    	return $this->file;
    }
    
    public function setFile($file)
    {
    	$this->file = $file;
    }
}
