<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240816093015 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE event ADD date DATETIME NOT NULL, ADD description LONGTEXT NOT NULL, ADD image VARCHAR(200) NOT NULL, ADD capacity INT NOT NULL, ADD contact_email VARCHAR(50) NOT NULL, ADD contact_phone VARCHAR(20) NOT NULL, ADD address VARCHAR(150) NOT NULL, ADD url VARCHAR(255) NOT NULL, ADD type VARCHAR(255) NOT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE event DROP date, DROP description, DROP image, DROP capacity, DROP contact_email, DROP contact_phone, DROP address, DROP url, DROP type');
    }
}
