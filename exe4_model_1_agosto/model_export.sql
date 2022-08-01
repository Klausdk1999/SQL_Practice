CREATE TABLE "public.users" (
	"id" serial NOT NULL,
	"name" varchar(200) NOT NULL,
	"password" varchar(100) NOT NULL,
	"email" varchar(200) NOT NULL,
	CONSTRAINT "users_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.products" (
	"id" serial NOT NULL,
	"name" varchar(200) NOT NULL UNIQUE,
	"price" integer NOT NULL,
	"main_photo" TEXT NOT NULL,
	"extra_photos_id" integer NOT NULL,
	"category" varchar(50) NOT NULL,
	"sizes" varchar(20) NOT NULL,
	CONSTRAINT "products_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.orders" (
	"id" serial NOT NULL,
	"user_id" integer NOT NULL,
	"status" varchar(50) NOT NULL,
	"address_id" integer NOT NULL,
	"date" DATETIME NOT NULL,
	CONSTRAINT "orders_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.products_orders" (
	"product_id" integer NOT NULL,
	"order_id" integer NOT NULL,
	"amount" integer NOT NULL,
	"chosen_size" varchar(20) NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.address" (
	"id" serial NOT NULL,
	"city" varchar(200) NOT NULL,
	"postal_code" varchar(100) NOT NULL,
	"complement" varchar(150),
	"road_neigborhood" TEXT NOT NULL,
	"number" integer NOT NULL,
	"user_id" integer NOT NULL,
	CONSTRAINT "address_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.extra_photos" (
	"id" serial NOT NULL,
	"photo_1" TEXT NOT NULL,
	"photo_2" TEXT NOT NULL,
	"photo_3" TEXT NOT NULL,
	"photo_4" TEXT,
	"photo_5" TEXT,
	CONSTRAINT "extra_photos_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.sizes" (
	"id" serial NOT NULL,
	"size_1" varchar(20) NOT NULL,
	"size_2" varchar(20) NOT NULL,
	"size_3" varchar(20) NOT NULL,
	"size_4" varchar(20),
	"size_5" varchar(20),
	CONSTRAINT "sizes_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.sizes_products" (
	"sizes_id" integer NOT NULL,
	"products_id" integer NOT NULL
) WITH (
  OIDS=FALSE
);




ALTER TABLE "products" ADD CONSTRAINT "products_fk0" FOREIGN KEY ("extra_photos_id") REFERENCES "extra_photos"("id");

ALTER TABLE "orders" ADD CONSTRAINT "orders_fk0" FOREIGN KEY ("user_id") REFERENCES "users"("id");
ALTER TABLE "orders" ADD CONSTRAINT "orders_fk1" FOREIGN KEY ("address_id") REFERENCES "address"("id");

ALTER TABLE "products_orders" ADD CONSTRAINT "products_orders_fk0" FOREIGN KEY ("product_id") REFERENCES "products"("id");
ALTER TABLE "products_orders" ADD CONSTRAINT "products_orders_fk1" FOREIGN KEY ("order_id") REFERENCES "orders"("id");

ALTER TABLE "address" ADD CONSTRAINT "address_fk0" FOREIGN KEY ("user_id") REFERENCES "users"("id");



ALTER TABLE "sizes_products" ADD CONSTRAINT "sizes_products_fk0" FOREIGN KEY ("sizes_id") REFERENCES "sizes"("id");
ALTER TABLE "sizes_products" ADD CONSTRAINT "sizes_products_fk1" FOREIGN KEY ("products_id") REFERENCES "products"("id");









