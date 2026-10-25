.class Landroidx/core/contents/ContextCompat$Api24Impl;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# direct methods
.method static createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 1

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static getDataDir(Landroid/content/Context;)Ljava/io/File;
    .registers 1

    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static isDeviceProtectedStorage(Landroid/content/Context;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result p0

    return p0
.end method
