.class public final Lcom/gold/youtube/om7753/util/PermissionHelper;
.super Ljava/lang/Object;
.source "PermissionHelper.java"


# direct methods
.method public static checkReadStoragePermissions(Landroid/app/Activity;I)Z
    .registers 4

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/contents/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public static checkStoragePermissions(Landroid/app/Activity;I)Z
    .registers 3

    invoke-static {p0}, Lcom/gold/youtube/om7753/settings/NewSettings;->useStorageAccessFramework(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/util/PermissionHelper;->checkReadStoragePermissions(Landroid/app/Activity;I)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/util/PermissionHelper;->checkWriteStoragePermissions(Landroid/app/Activity;I)Z

    move-result p0

    return p0
.end method

.method public static checkWriteStoragePermissions(Landroid/app/Activity;I)Z
    .registers 4

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/contents/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_11

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0

    :cond_11
    const/4 p0, 0x1

    return p0
.end method
