--create database bank;

-- CREATE TYPE "phone_type" AS ENUM ('landline', 'mobile');

-- CREATE TYPE "transaction_type" AS ENUM ('deposit', 'withdraw');

-- create table "states" (
-- 	"id" serial PRIMARY KEY,
-- 	"name" varchar(200) NOT NULL
-- );

-- create table "cities" (
-- 	"id" serial PRIMARY KEY,
-- 	"name" varchar(200) NOT NULL,
-- 	"stateId" INTEGER NOT NULL references "states"("id")
-- );

-- create table "customers" (
-- 	"id" serial PRIMARY KEY,
-- 	cpf varchar(11) NOT NULL UNIQUE,
-- 	"fullName" varchar(250) NOT NULL,
-- 	"email" varchar(150) NOT NULL,
-- 	"password" varchar(200) NOT NULL
-- );

-- create table "customerPhones" (
-- 	"id" serial PRIMARY KEY,
-- 	"customerId" INTEGER references "customers"(id) NOT NULL,
-- 	"number" INTEGER NOT NULL,
-- 	"type" phone_type
-- );

-- create table "customerAddresses" (
-- 	"id" serial PRIMARY KEY,
-- 	"customerId" INTEGER unique NOT NULL references "customers"("id"),
-- 	"street" varchar(200) NOT NULL,
-- 	"number" INTEGER NOT NULL,
-- 	"complement" varchar(200),
-- 	"postalCode" varchar(12) NOT NULL,
-- 	"cityId" INTEGER NOT NULL references "cities"("id")
-- );

-- create table "bankAccount" (
-- 	"id" serial PRIMARY KEY,
-- 	"customerId" INTEGER NOT NULL references "states"("id"),
-- 	"accountNumber" integer NOT NULL,
-- 	"agency" INTEGER NOT NULL,
-- 	"openDate" date NOT NULL,
-- 	"closeDate" date
-- );

-- create table "transactions" (
-- 	"id" serial PRIMARY KEY,
-- 	"bankAccountId" INTEGER NOT NULL references "bankAccount"("id"),
-- 	"amount" DOUBLE PRECISION NOT NULL,
-- 	"type" transaction_type NOT NULL,
-- 	"time" TIMESTAMP DEFAULT NOW() NOT NULL,
-- 	"description" text,
-- 	"cancelled" bool NOT NULL default false
-- );

-- create table "creditCards" (
-- 	"id" serial PRIMARY KEY,
-- 	"ban1kAccountId" INTEGER NOT NULL references "states"("id"),
-- 	"name" varchar(200) NOT NULL,
-- 	"number" INTEGER unique NOT NULL,
-- 	"securityCode" integer NOT NULL,
-- 	"expirationMonth" varchar(2) NOT NULL,
-- 	"expirationYear" varchar(2) NOT NULL,
-- 	"password" integer NOT NULL,
-- 	"limit" integer NOT NULL
-- );


