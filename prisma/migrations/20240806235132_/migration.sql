/*
  Warnings:

  - You are about to drop the column `Phones` on the `Barbershop` table. All the data in the column will be lost.
  - You are about to drop the column `createAt` on the `Barbershop` table. All the data in the column will be lost.
  - You are about to drop the column `descrption` on the `Barbershop` table. All the data in the column will be lost.
  - You are about to drop the column `imagrUrl` on the `Barbershop` table. All the data in the column will be lost.
  - You are about to drop the column `descrption` on the `BarbershopService` table. All the data in the column will be lost.
  - You are about to drop the column `imagrUrl` on the `BarbershopService` table. All the data in the column will be lost.
  - You are about to drop the column `updateAt` on the `Booking` table. All the data in the column will be lost.
  - You are about to drop the column `createAt` on the `User` table. All the data in the column will be lost.
  - Added the required column `description` to the `Barbershop` table without a default value. This is not possible if the table is not empty.
  - Added the required column `imageUrl` to the `Barbershop` table without a default value. This is not possible if the table is not empty.
  - Added the required column `description` to the `BarbershopService` table without a default value. This is not possible if the table is not empty.
  - Added the required column `imageUrl` to the `BarbershopService` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `Booking` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Barbershop" DROP COLUMN "Phones",
DROP COLUMN "createAt",
DROP COLUMN "descrption",
DROP COLUMN "imagrUrl",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "description" TEXT NOT NULL,
ADD COLUMN     "imageUrl" TEXT NOT NULL,
ADD COLUMN     "phones" TEXT[];

-- AlterTable
ALTER TABLE "BarbershopService" DROP COLUMN "descrption",
DROP COLUMN "imagrUrl",
ADD COLUMN     "description" TEXT NOT NULL,
ADD COLUMN     "imageUrl" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Booking" DROP COLUMN "updateAt",
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "User" DROP COLUMN "createAt",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;
