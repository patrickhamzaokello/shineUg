<?php

class Artist
{

    private $con;
    private $id;
    private $name;
    private $email;
    private $profilephoto;
    private $coverimage;
    private $bio;
    private $genre;
    private $tag;


    public function __construct($con, $id)
    {
        $this->con = $con;
        $this->id = $id;

        $query = mysqli_query($this->con, "SELECT * FROM artists WHERE id='$this->id'");
        $artistfetched = mysqli_fetch_array($query);


        if (mysqli_num_rows($query) < 1) {

            $this->name = null;
            $this->email = null;
            $this->profilephoto = null;
            $this->coverimage = null;
            $this->bio = null;
            $this->genre = null;
            $this->tag = null;
        } else {

            $this->name = $artistfetched['name'];
            $this->email = $artistfetched['email'];
            $this->profilephoto = $artistfetched['profilephoto'];
            $this->coverimage = $artistfetched['coverimage'];
            $this->bio = $artistfetched['bio'];
            $this->genre = $artistfetched['genre'];
            $this->tag = $artistfetched['tag'];
        }
    }

    public function getId()
    {
        return $this->id;
    }

    public function getName()
    {
        return $this->name;
    }

    public function getEmail()
    {
        return $this->email;
    }


    public function getProfilePath()
    {
        return $this->profilephoto;
    }

    public function getArtistCoverPath()
    {
        return $this->coverimage;
    }

    public function getArtistBio()
    {
        return $this->bio;
    }


    public function getGenre()
    {
        return $this->genre;
    }

    public function getTag()
    {
        return $this->tag;
    }

    public function getGenrename()
    {
        $query = mysqli_query($this->con, "SELECT name FROM genres WHERE id='$this->genre'");
        $row = mysqli_fetch_array($query);
        return $row['name'];
    }

    public function getSongIds()
    {
        $query = mysqli_query($this->con, "SELECT id FROM songs WHERE artist='$this->id' and tag != 'ad' ORDER BY plays DESC");
        $array = array();

        while ($row = mysqli_fetch_array($query)) {
            array_push($array, $row['id']);
        }

        return $array;
    }

    
}