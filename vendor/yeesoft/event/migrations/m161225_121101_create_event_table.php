<?php

use yii\db\Migration;

class m161225_121101_create_event_table extends Migration
{
    const EVENT_TABLE = '{{%events}}';

    public function safeUp()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE=InnoDB';
        }

        $this->createTable(self::EVENT_TABLE, [
            'id' => $this->primaryKey(),
            'title' => $this->string(255)->notNull(),
            'content' => $this->text(),
            'nominate' => "ENUM('0','1')",
            'created_at' => $this->integer(),
        ], $tableOptions);
        

        $this->addForeignKey('fk_post_category_created_by', self::POST_CATEGORY_TABLE, 'created_by', '{{%user}}', 'id', 'SET NULL', 'CASCADE');
        $this->insert(self::EVENT_TABLE, ['created_at' => time()]);

        $this->createTable(self::POST_CATEGORY_LANG_TABLE, [
            'id' => $this->primaryKey(),
            'post_category_id' => $this->integer(),
            'language' => $this->string(6)->notNull(),
            'title' => $this->string(255)->notNull(),
            'description' => $this->text(),
        ], $tableOptions);
        
        $this->createIndex('post_category_lang_id', self::POST_CATEGORY_LANG_TABLE, 'post_category_id');
        $this->createIndex('post_category_lang_language', self::POST_CATEGORY_LANG_TABLE, 'language');
        $this->addForeignKey('fk_post_category_lang', self::POST_CATEGORY_LANG_TABLE, 'post_category_id', self::POST_CATEGORY_TABLE, 'id', 'CASCADE', 'CASCADE');
   
        $this->createTable(self::POST_TABLE, [
            'id' => $this->primaryKey(),
            'slug' => $this->string(255)->notNull(),
            'category_id' => $this->integer(),
            'status' => $this->integer(1)->notNull()->defaultValue(0)->comment('0-pending,1-published'),
            'comment_status' => $this->integer(1)->notNull()->defaultValue(1)->comment('0-closed,1-open'),
            'thumbnail' => $this->string(255),
            'published_at' => $this->integer(),
            'created_at' => $this->integer(),
            'updated_at' => $this->integer(),
            'created_by' => $this->integer(),
            'updated_by' => $this->integer(),
            'revision' => $this->integer(1)->notNull()->defaultValue(1),
        ], $tableOptions);

        $this->createIndex('post_slug', self::POST_TABLE, 'slug');
        $this->createIndex('post_category_id', self::POST_TABLE, 'category_id');
        $this->createIndex('post_status', self::POST_TABLE, 'status');
        $this->addForeignKey('fk_post_category_id', self::POST_TABLE, 'category_id', self::POST_CATEGORY_TABLE, 'id', 'SET NULL', 'CASCADE');
        $this->addForeignKey('fk_page_created_by', self::POST_TABLE, 'created_by', '{{%user}}', 'id', 'SET NULL', 'CASCADE');
        $this->addForeignKey('fk_page_updated_by', self::POST_TABLE, 'updated_by', '{{%user}}', 'id', 'SET NULL', 'CASCADE');
        
        $this->createTable(self::POST_LANG_TABLE, [
            'id' => $this->primaryKey(),
            'post_id' => $this->integer()->notNull(),
            'language' => $this->string(6)->notNull(),
            'title' => $this->text(),
            'content' => $this->text(),
        ], $tableOptions);

        $this->createIndex('post_lang_post_id', self::POST_LANG_TABLE, 'post_id');
        $this->createIndex('post_lang_language', self::POST_LANG_TABLE, 'language');
        $this->addForeignKey('fk_post_lang', self::POST_LANG_TABLE, 'post_id', self::POST_TABLE, 'id', 'CASCADE', 'CASCADE');
    }

    public function safeDown()
    {
        $this->dropTable(self::POST_CATEGORY_LANG_TABLE);
    }
}