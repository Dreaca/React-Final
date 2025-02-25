-- CreateTable
CREATE TABLE `Customer` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `address` VARCHAR(191) NOT NULL,
    `phone` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Item` (
    `itemCode` VARCHAR(191) NOT NULL,
    `desc` VARCHAR(191) NOT NULL,
    `author` VARCHAR(191) NOT NULL,
    `qto` INTEGER NOT NULL,
    `price` DOUBLE NOT NULL,

    PRIMARY KEY (`itemCode`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Orders` (
    `orderId` VARCHAR(191) NOT NULL,
    `customerId` VARCHAR(191) NOT NULL,
    `date` VARCHAR(191) NOT NULL,
    `customerName` VARCHAR(191) NOT NULL,
    `total` DOUBLE NOT NULL,
    `discount` VARCHAR(191) NOT NULL,
    `subtotal` DOUBLE NOT NULL,

    PRIMARY KEY (`orderId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `OrderDetails` (
    `orderId` VARCHAR(191) NOT NULL,
    `itemCode` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`itemCode`, `orderId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `OrderDetails` ADD CONSTRAINT `OrderDetails_orderId_fkey` FOREIGN KEY (`orderId`) REFERENCES `Orders`(`orderId`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `OrderDetails` ADD CONSTRAINT `OrderDetails_itemCode_fkey` FOREIGN KEY (`itemCode`) REFERENCES `Item`(`itemCode`) ON DELETE RESTRICT ON UPDATE CASCADE;
