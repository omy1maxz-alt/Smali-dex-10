.class public Lcom/gold/extension/shared/patches/FixRecycledBitmapPatch;
.super Ljava/lang/Object;
.source "FixRecycledBitmapPatch.java"


# direct methods
.method public static synthetic $r8$lambda$BJB1sVhB3I5S8rCV4M7UBJ9mrGk()Ljava/lang/String;
    .registers 1

    .line 26
    const-string v0, "Bitmap is recycled, creating a dummy bitmap"

    return-object v0
.end method

.method public static synthetic $r8$lambda$sYAv3sjMvLnUM50nkHYLhYnRjFQ()Ljava/lang/String;
    .registers 1

    .line 34
    const-string v0, "Bitmap copied"

    return-object v0
.end method

.method public static synthetic $r8$lambda$yiOwg3-toECjiYpLN9mn7Hd-kdg()Ljava/lang/String;
    .registers 1

    .line 36
    const-string v0, "Failed to copy bitmap"

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static putBitmap(Landroid/media/MediaMetadata$Builder;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;
    .registers 5

    if-eqz p2, :cond_3b

    .line 25
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 26
    new-instance p2, Lcom/gold/extension/shared/patches/FixRecycledBitmapPatch$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/gold/extension/shared/patches/FixRecycledBitmapPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 27
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 31
    :cond_17
    :try_start_17
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_22

    .line 32
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_22

    :catch_20
    move-exception p1

    goto :goto_33

    .line 33
    :cond_22
    :goto_22
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    move-result-object p0

    .line 34
    new-instance p1, Lcom/gold/extension/shared/patches/FixRecycledBitmapPatch$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/gold/extension/shared/patches/FixRecycledBitmapPatch$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_32} :catch_20

    return-object p0

    .line 36
    :goto_33
    new-instance p2, Lcom/gold/extension/shared/patches/FixRecycledBitmapPatch$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/gold/extension/shared/patches/FixRecycledBitmapPatch$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p2, p1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_3b
    return-object p0
.end method
