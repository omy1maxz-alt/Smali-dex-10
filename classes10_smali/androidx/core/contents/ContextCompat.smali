.class public Landroidx/core/contents/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# static fields
.field private static final sLock:Ljava/lang/Object;

.field private static sTempValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/contents/ContextCompat;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    if-eqz p1, :cond_f

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    return p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "permission is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Landroidx/core/contents/ContextCompat$Api24Impl;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getColor(Landroid/content/Context;I)I
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1}, Landroidx/core/contents/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-static {v0, p1, p0}, Landroidx/core/content/res/ResourcesCompat;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getDataDir(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Landroidx/core/contents/ContextCompat$Api24Impl;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    if-eqz p0, :cond_19

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return-object v0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1}, Landroidx/core/contents/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_b
    const/16 v1, 0x10

    if-lt v0, v1, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_18
    sget-object v0, Landroidx/core/contents/ContextCompat;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1b
    sget-object v1, Landroidx/core/contents/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    if-nez v1, :cond_26

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    sput-object v1, Landroidx/core/contents/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    :cond_26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Landroidx/core/contents/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    sget-object p1, Landroidx/core/contents/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1b .. :try_end_35} :catchall_3e

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :catchall_3e
    move-exception p0

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public static getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Landroidx/core/contents/ContextCompat$Api19Impl;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public static getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1}, Landroidx/core/contents/ContextCompat$Api19Impl;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public static getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Landroidx/core/contents/ContextCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance v0, Landroidx/core/contents/ContextCompat$MainHandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroidx/core/contents/ContextCompat$MainHandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public static getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1}, Landroidx/core/contents/ContextCompat$Api23Impl;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0, p1}, Landroidx/core/contents/ContextCompat;->getSystemServiceName(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public static getSystemServiceName(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1}, Landroidx/core/contents/ContextCompat$Api23Impl;->getSystemServiceName(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    sget-object p0, Landroidx/core/contents/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    invoke-static {p0, p1, p2}, Landroidx/core/contents/ContextCompat$Api16Impl;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_d

    :cond_a
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    invoke-static {p0, p1, p2}, Landroidx/core/contents/ContextCompat$Api16Impl;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_d

    :cond_a
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_d
    return-void
.end method

.method public static startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_a

    invoke-static {p0, p1}, Landroidx/core/contents/ContextCompat$Api26Impl;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_d

    :cond_a
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_d
    return-void
.end method
