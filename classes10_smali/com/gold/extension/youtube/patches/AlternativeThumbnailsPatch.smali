.class public final Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;
.super Ljava/lang/Object;
.source "AlternativeThumbnailsPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;,
        Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;,
        Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailQuality;,
        Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$VerifiedQualities;,
        Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;,
        Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$StillImagesAvailability;,
        Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DeArrowAvailability;
    }
.end annotation


# static fields
.field private static final DEARROW_FAILURE_API_BACKOFF_MILLISECONDS:J = 0x493e0L

.field private static final deArrowAPIURLPrefix:Ljava/lang/String;

.field private static final dearrowAPIURI:Landroid/net/Uri;

.field private static volatile timeToResumeDeArrowAPICalls:J


# direct methods
.method public static synthetic $r8$lambda$-q8WBs2xVGVsPBIwHw_pBY8OaE8()Ljava/lang/String;
    .registers 1

    .line 339
    const-string v0, "overrideImageURL failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$0qntFQaMQ5VWFsyYpWVEP-khw3I()Ljava/lang/String;
    .registers 1

    .line 262
    const-string v0, "Resuming DeArrow API calls"

    return-object v0
.end method

.method public static synthetic $r8$lambda$3-v9UVndgG6jAzFLwFuEnMyC5T8()Ljava/lang/String;
    .registers 1

    .line 421
    const-string v0, "Callback failure error"

    return-object v0
.end method

.method public static synthetic $r8$lambda$9wQX0D94ozgpzVGuyk6ST8kI9fI(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Replacement URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DlKmdPj9rL2mJEwWKlRWdHH6Ogs()Ljava/lang/String;
    .registers 1

    .line 393
    const-string v0, "Callback success error"

    return-object v0
.end method

.method public static synthetic $r8$lambda$GS1WaWrum-SR5RbsB_9gTccLbGs(I)Ljava/lang/String;
    .registers 3

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleCronetSuccess, statusCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K3ci9ahEo3J7feyUjDSNAUeV9C4()Ljava/lang/String;
    .registers 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Using DeArrow API address: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;->deArrowAPIURLPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$KzYa3Ax2kF5SeuIG_h5kmK6PQQ0(Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;)Ljava/lang/String;
    .registers 3

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to recognize image quality of URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->sanitizedURL:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Mvnn0cXv82lJZfwZY-wHeyJLNaw(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Encountered DeArrow error.  URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZSX0j_cXMuLhyIRY-c4ty3LQh-A(Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;)Ljava/lang/String;
    .registers 3

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Original URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->sanitizedURL:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$f_-JKoT0z41Qq-3jSVtKysTCpkc(Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;)Ljava/lang/String;
    .registers 3

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleCronetSuccess, image not available: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->sanitizedURL:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kA-wOTH-RSOvo7BmK03YlouOuIE(Ljava/io/IOException;)Ljava/lang/String;
    .registers 3

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleCronetFailure, exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 159
    invoke-static {}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;->validateSettings()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;->dearrowAPIURI:Landroid/net/Uri;

    .line 160
    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    .line 161
    const-string v1, ""

    goto :goto_1e

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    :goto_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;->deArrowAPIURLPrefix:Ljava/lang/String;

    .line 163
    new-instance v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildDeArrowThumbnailURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 242
    sget-object v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;->dearrowAPIURI:Landroid/net/Uri;

    .line 243
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "videoID"

    .line 244
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "redirectUrl"

    .line 245
    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 246
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 247
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildYouTubeVideoStillURL(Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailQuality;)Ljava/lang/String;
    .registers 3
    .param p0  # Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailQuality;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, p1, v0}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->createStillsURL(Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailQuality;Z)Ljava/lang/String;

    move-result-object v0

    .line 224
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->videoId:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$VerifiedQualities;->verifyAltThumbnailExist(Ljava/lang/String;Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailQuality;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    return-object v0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method private static canUseDeArrowAPI()Z
    .registers 8

    .line 258
    sget-wide v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;->timeToResumeDeArrowAPICalls:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 261
    :cond_a
    sget-wide v4, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;->timeToResumeDeArrowAPICalls:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_1f

    .line 262
    new-instance v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 263
    sput-wide v2, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;->timeToResumeDeArrowAPICalls:J

    return v1

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public static handleCronetFailure(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/io/IOException;)V
    .registers 4
    .param p1  # Lorg/chromium/net/UrlResponseInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 412
    :try_start_0
    check-cast p0, Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-virtual {p0}, Lorg/chromium/net/impl/CronetUrlRequest;->getHookedUrl()Ljava/lang/String;

    move-result-object p0

    .line 413
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;->urlIsDeArrow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 414
    new-instance v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda10;

    invoke-direct {v0, p2}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda10;-><init>(Ljava/io/IOException;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    if-eqz p1, :cond_1b

    .line 416
    invoke-virtual {p1}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result p1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    .line 418
    :goto_1c
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;->handleDeArrowError(Ljava/lang/String;I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    :cond_1f
    return-void

    :catch_20
    move-exception p0

    .line 421
    new-instance p1, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda11;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static handleCronetSuccess(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .registers 3
    .param p1  # Lorg/chromium/net/UrlResponseInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 351
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result p0

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_9

    goto :goto_4d

    .line 356
    :cond_9
    invoke-virtual {p1}, Lorg/chromium/net/UrlResponseInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 358
    invoke-static {p1}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;->urlIsDeArrow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 359
    new-instance v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/16 v0, 0x130

    if-ne p0, v0, :cond_20

    goto :goto_4d

    .line 364
    :cond_20
    invoke-static {p1, p0}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;->handleDeArrowError(Ljava/lang/String;I)V

    return-void

    :cond_24
    const/16 v0, 0x194

    if-ne p0, v0, :cond_4d

    .line 376
    invoke-static {p1}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->decodeImageURL(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;

    move-result-object p0

    if-nez p0, :cond_2f

    goto :goto_4d

    .line 381
    :cond_2f
    new-instance p1, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda4;-><init>(Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 383
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->imageQuality:Ljava/lang/String;

    invoke-static {p1}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailQuality;->altImageNameToQuality(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailQuality;

    move-result-object p1

    if-nez p1, :cond_48

    .line 386
    new-instance p1, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda5;-><init>(Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 390
    :cond_48
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->videoId:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$VerifiedQualities;->setAltThumbnailDoesNotExist(Ljava/lang/String;Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailQuality;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4e

    :cond_4d
    :goto_4d
    return-void

    :catch_4e
    move-exception p0

    .line 393
    new-instance p1, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static handleDeArrowError(Ljava/lang/String;I)V
    .registers 6
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 270
    new-instance v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 272
    sget-wide v2, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;->timeToResumeDeArrowAPICalls:J

    cmp-long p0, v2, v0

    if-gez p0, :cond_3e

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    .line 273
    sput-wide v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;->timeToResumeDeArrowAPICalls:J

    .line 274
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_DEARROW_CONNECTION_TOAST:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3e

    if-eqz p1, :cond_35

    .line 276
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "youtube_alt_thumbnail_dearrow_error"

    invoke-static {p1, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3b

    .line 277
    :cond_35
    const-string p0, "youtube_alt_thumbnail_dearrow_error_generic"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 278
    :goto_3b
    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    :cond_3e
    return-void
.end method

.method private static optionSettingForCurrentNavigation()Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;
    .registers 5

    .line 183
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/youtube/shared/PlayerType;->isMaximizedOrFullscreen()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 184
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_PLAYER:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;

    return-object v0

    .line 188
    :cond_13
    invoke-static {}, Lcom/gold/extension/youtube/shared/NavigationBar;->isSearchBarActive()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 189
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_SEARCH:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;

    return-object v0

    .line 193
    :cond_22
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_HOME:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;

    .line 194
    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_SUBSCRIPTIONS:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;

    .line 195
    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_LIBRARY:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v2}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;

    if-ne v0, v1, :cond_3f

    if-ne v0, v2, :cond_3f

    goto :goto_57

    .line 200
    :cond_3f
    invoke-static {}, Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;->getSelectedNavigationButton()Lcom/gold/extension/youtube/shared/NavigationBar$NavigationButton;

    move-result-object v3

    if-nez v3, :cond_46

    goto :goto_57

    .line 206
    :cond_46
    sget-object v4, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$1;->$SwitchMap$app$morphe$extension$youtube$shared$NavigationBar$NavigationButton:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_59

    const/4 v4, 0x2

    if-eq v3, v4, :cond_59

    const/4 v1, 0x3

    if-eq v3, v1, :cond_58

    :goto_57
    return-object v0

    :cond_58
    return-object v2

    :cond_59
    return-object v1
.end method

.method public static overrideImageURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 290
    :try_start_0
    invoke-static {}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;->optionSettingForCurrentNavigation()Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;

    move-result-object v0

    .line 292
    sget-object v1, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;->ORIGINAL:Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;

    if-ne v0, v1, :cond_9

    goto :goto_6c

    .line 296
    :cond_9
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->decodeImageURL(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_6c

    .line 301
    :cond_10
    new-instance v2, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda7;-><init>(Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 303
    iget-object v2, v1, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->imageQuality:Ljava/lang/String;

    invoke-static {v2}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailQuality;->getQualityToUse(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailQuality;

    move-result-object v2

    if-nez v2, :cond_21

    goto :goto_6c

    .line 311
    :cond_21
    iget-boolean v3, v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;->useDeArrow:Z

    if-eqz v3, :cond_43

    invoke-static {}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;->canUseDeArrowAPI()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 314
    iget-boolean v0, v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;->useStillImages:Z

    if-eqz v0, :cond_36

    .line 315
    invoke-static {v1, v2}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;->buildYouTubeVideoStillURL(Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailQuality;)Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    :catch_34
    move-exception v0

    goto :goto_6d

    :cond_36
    const/4 v0, 0x0

    :goto_37
    if-nez v0, :cond_3b

    .line 318
    iget-object v0, v1, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->sanitizedURL:Ljava/lang/String;

    .line 321
    :cond_3b
    iget-object v2, v1, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->videoId:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;->buildDeArrowThumbnailURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    goto :goto_4f

    .line 322
    :cond_43
    iget-boolean v0, v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;->useStillImages:Z

    if-eqz v0, :cond_6c

    .line 324
    invoke-static {v1, v2}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;->buildYouTubeVideoStillURL(Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailQuality;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4e

    goto :goto_6c

    :cond_4e
    const/4 v2, 0x1

    .line 333
    :goto_4f
    new-instance v3, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    if-eqz v2, :cond_6b

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->viewTrackingParameters:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6a} :catch_34

    return-object p0

    :cond_6b
    return-object v0

    :cond_6c
    :goto_6c
    return-object p0

    .line 339
    :goto_6d
    new-instance v1, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static urlIsDeArrow(Ljava/lang/String;)Z
    .registers 2
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 251
    sget-object v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;->deArrowAPIURLPrefix:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static validateSettings()Landroid/net/Uri;
    .registers 4

    .line 170
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_DEARROW_API_URL:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 173
    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1f

    goto :goto_20

    :cond_1f
    return-object v1

    .line 174
    :cond_20
    :goto_20
    const-string v1, "Invalid DeArrow API URL. Using default"

    invoke-static {v1}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->resetToDefault()Ljava/lang/Object;

    .line 176
    invoke-static {}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;->validateSettings()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
