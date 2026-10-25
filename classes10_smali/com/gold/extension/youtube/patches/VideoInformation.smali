.class public final Lcom/gold/extension/youtube/patches/VideoInformation;
.super Ljava/lang/Object;
.source "VideoInformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;,
        Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;,
        Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityMenuInterface;
    }
.end annotation


# static fields
.field public static final AUTOMATIC_VIDEO_QUALITY_VALUE:I = -0x2

.field private static final DEFAULT_YOUTUBE_PLAYBACK_SPEED:F = 1.0f

.field private static final SHORTS_PLAYER_PARAMETERS:Ljava/lang/String; = "8AEB"

.field private static final VIDEO_QUALITY_PREMIUM_NAME:Ljava/lang/String; = "Premium"

.field private static channelId:Ljava/lang/String;

.field private static channelName:Ljava/lang/String;

.field private static currentMenuInterface:Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityMenuInterface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static currentQualities:[Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static currentQuality:Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static desiredVideoResolution:I

.field private static mdxPlayerDirectorRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;",
            ">;"
        }
    .end annotation
.end field

.field public static final onChannelIdChange:Lcom/gold/extension/youtube/shared/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/youtube/shared/Event<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final onQualityChange:Lcom/gold/extension/youtube/shared/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/youtube/shared/Event<",
            "Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static playbackSpeed:F

.field public static playbackSpeedClass:Lpxn;

.field private static playerControllerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile playerResponsePlaylistId:Ljava/lang/String;

.field private static volatile playerResponseVideoId:Ljava/lang/String;

.field private static volatile playerResponseVideoIdIsShort:Z

.field private static qualityNeedsUpdating:Z

.field private static videoId:Ljava/lang/String;

.field private static volatile videoIdIsShort:Z

.field private static videoLength:J


# direct methods
.method public static synthetic $r8$lambda$5e3tFwHKbzMbeMEzb2o3gWgZpPc(J)Ljava/lang/String;
    .registers 4

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Seeking relative to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$79gxIefN0VfR_u8MjaxkGU2JEU4(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "New player response playlist ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7lmJ0BJjxESY5Hkg5lugEZHYkhs()Ljava/lang/String;
    .registers 1

    .line 567
    const-string v0, "Cannot change quality, menu interface is null"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Bw3JD86EiSkzCW2IhSQzGJKQfXo(JJJ)Ljava/lang/String;
    .registers 8

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring seekTo call as video playback is almost finished.  videoTime: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " videoLength: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " seekTo: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$E9phQYoTkiIpDpebOAVUpHCZMms()Ljava/lang/String;
    .registers 1

    .line 158
    const-string v0, "Failed to initialize MDX"

    return-object v0
.end method

.method public static synthetic $r8$lambda$J5Gt2WTWPvhS0wgkNBfEce2zuU0()Ljava/lang/String;
    .registers 2

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoQualities: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gold/extension/youtube/patches/VideoInformation;->currentQualities:[Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$ORdpvL4566VPahJBxbGt2yXry2o()Ljava/lang/String;
    .registers 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extracted Channel ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gold/extension/youtube/patches/VideoInformation;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$Q7M3EGksAtL9PJKSDUwHOFRC9QE()Ljava/lang/String;
    .registers 1

    .line 336
    const-string v0, "Cannot seekTo MXD because player controller is null"

    return-object v0
.end method

.method public static synthetic $r8$lambda$QBMYSeeoN2eFezU2M5Teju9OQo8()Ljava/lang/String;
    .registers 1

    .line 145
    const-string v0, "initialize failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$RXdKkWGrYdOM3wj8Q2ei45ehyug()Ljava/lang/String;
    .registers 1

    .line 362
    const-string v0, "Cannot seek relative as player controller is null"

    return-object v0
.end method

.method public static synthetic $r8$lambda$SnWUX84KXxYj5PhrhF3Vae6wIrM()Ljava/lang/String;
    .registers 1

    .line 131
    const-string v0, "newVideoStarted"

    return-object v0
.end method

.method public static synthetic $r8$lambda$TG392i6fQZzjtpH4Jd_dXp6aZ-s(JJ)Ljava/lang/String;
    .registers 6

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skipping seekTo for MDX because seek time is too small("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr p0, p2

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UBkY3ZqS0uc2uGR-bAO3L1lcmHA(ZLcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_19

    .line 646
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Changing video quality from: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 647
    :cond_19
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Video is already the preferred quality: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VbQznQnrXR3WpQaWwOPCr09dTgs(Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)Ljava/lang/String;
    .registers 3

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current quality changed to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XgdgyW9Mu_-F5mdsKncqhdqJoLQ()Ljava/lang/String;
    .registers 1

    .line 315
    const-string v0, "Cannot seekTo because player controller is null"

    return-object v0
.end method

.method public static synthetic $r8$lambda$_-tfvcBNVR8KmIKB34QD1l8J6n4(J)Ljava/lang/String;
    .registers 4

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current video length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_I0x9Ph4-qJP-UmXx_OIgykeE6A()Ljava/lang/String;
    .registers 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extracted Channel Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gold/extension/youtube/patches/VideoInformation;->channelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$aJSMrcDzyqV-azS_n1bhIY5Lvuc(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fixing wrong quality resolution from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") to: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bIlTwyLoFRAz_6Npk9PKTIAsJTs()Ljava/lang/String;
    .registers 1

    .line 321
    const-string v0, "seekTo did not succeeded. Trying MXD."

    return-object v0
.end method

.method public static synthetic $r8$lambda$biAJpc-QW1krbuuVRl_iTTFBhLY(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "New player response video ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$blNj0XWb5sPuW5hM_CEiDxR8XU4(F)Ljava/lang/String;
    .registers 3

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video speed changed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cc1Gt1XWwOnykNDZkNOGml04aYw(J)Ljava/lang/String;
    .registers 4

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Seeking to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ewyn1SCmnkDEglneC95gZAG_pfs(Z)Ljava/lang/String;
    .registers 3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "videoIdIsShort: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$foB5m9KJJQi2jBwCmqjFNxrL-DU()Ljava/lang/String;
    .registers 1

    .line 383
    const-string v0, "seekToRelative failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$hJyejpFIwjDwMY_7ISWlE45F_-A(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "New video ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kOLzceNYQg0cijlO9jv1BPxjhTo()Ljava/lang/String;
    .registers 1

    .line 669
    const-string v0, "setVideoQuality failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$kTtOXpUzMchN96HWCRjVZX_TnaA()Ljava/lang/String;
    .registers 1

    .line 344
    const-string v0, "seekTo failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$mcB5JaUIGH0RbgSR8hPfbFp47Oo()Ljava/lang/String;
    .registers 1

    .line 378
    const-string v0, "Cannot seek relative as MXD player controller is null"

    return-object v0
.end method

.method public static synthetic $r8$lambda$q-pgD-MIFusyllP4xQHdj1C-vdE(I)Ljava/lang/String;
    .registers 3

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting desired video resolution: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tzmeLRFoTUtvvcpA8OzPUIEVQHw()Ljava/lang/String;
    .registers 1

    .line 590
    const-string v0, "fixVideoQualityResolution failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$w5_cO0XVWQXEfR4c4iBNlU9T18w(F)Ljava/lang/String;
    .registers 3

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video speed changed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wm3FWA1Wdocy3f1DGv8ap3Y3eRk(F)Ljava/lang/String;
    .registers 3

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User selected playback speed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$z9jiUMhTZ3PUdTNGNsy-sMfJYK8(F)Ljava/lang/String;
    .registers 3

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Overriding playback speed to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 64
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->playerControllerRef:Ljava/lang/ref/WeakReference;

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->mdxPlayerDirectorRef:Ljava/lang/ref/WeakReference;

    .line 66
    const-string v0, ""

    sput-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->channelId:Ljava/lang/String;

    .line 67
    sput-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->channelName:Ljava/lang/String;

    .line 68
    sput-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->videoId:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 69
    sput-wide v1, Lcom/gold/extension/youtube/patches/VideoInformation;->videoLength:J

    .line 71
    sput-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->playerResponsePlaylistId:Ljava/lang/String;

    .line 72
    sput-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->playerResponseVideoId:Ljava/lang/String;

    const/high16 v0, 0x3f800000  # 1.0f

    .line 79
    sput v0, Lcom/gold/extension/youtube/patches/VideoInformation;->playbackSpeed:F

    const/4 v0, -0x2

    .line 81
    sput v0, Lcom/gold/extension/youtube/patches/VideoInformation;->desiredVideoResolution:I

    .line 107
    new-instance v0, Lcom/gold/extension/youtube/shared/Event;

    invoke-direct {v0}, Lcom/gold/extension/youtube/shared/Event;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->onQualityChange:Lcom/gold/extension/youtube/shared/Event;

    .line 112
    new-instance v0, Lcom/gold/extension/youtube/shared/Event;

    invoke-direct {v0}, Lcom/gold/extension/youtube/shared/Event;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->onChannelIdChange:Lcom/gold/extension/youtube/shared/Event;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeQuality(Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)V
    .registers 2

    .line 564
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 566
    sget-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->currentMenuInterface:Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityMenuInterface;

    if-nez v0, :cond_10

    .line 567
    new-instance p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 570
    :cond_10
    invoke-interface {v0, p0}, Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityMenuInterface;->patch_setQuality(Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)V

    return-void
.end method

.method public static fixVideoQualityResolution(Ljava/lang/String;I)I
    .registers 4

    .line 580
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    const/16 v0, 0x70

    .line 581
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_26

    const/4 v1, 0x0

    .line 583
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 584
    new-instance v1, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1, v0}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda20;-><init>(Ljava/lang/String;II)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    return v0

    :catch_24
    move-exception p0

    goto :goto_27

    :cond_26
    return p1

    .line 590
    :goto_27
    new-instance v0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda21;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return p1
.end method

.method public static getChannelId()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 392
    sget-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public static getChannelName()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 183
    sget-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentQualities()[Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 116
    sget-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->currentQualities:[Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

    return-object v0
.end method

.method public static getCurrentQuality()Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 121
    sget-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->currentQuality:Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

    return-object v0
.end method

.method private static getMdxVideoTime()J
    .registers 2

    .line 481
    sget-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->mdxPlayerDirectorRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;

    if-eqz v0, :cond_f

    .line 483
    invoke-interface {v0}, Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;->patch_getVideoTime()J

    move-result-wide v0

    return-wide v0

    :cond_f
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getPlaybackSpeed()F
    .registers 1

    .line 453
    sget v0, Lcom/gold/extension/youtube/patches/VideoInformation;->playbackSpeed:F

    return v0
.end method

.method public static getPlayerResponseVideoId()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 430
    sget-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->playerResponseVideoId:Ljava/lang/String;

    return-object v0
.end method

.method private static getPlayerVideoTime()J
    .registers 2

    .line 471
    sget-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->playerControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;

    if-eqz v0, :cond_f

    .line 473
    invoke-interface {v0}, Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;->patch_getVideoTime()J

    move-result-wide v0

    return-wide v0

    :cond_f
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getPlaylistId()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 414
    sget-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->playerResponsePlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method public static getVideoId()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 403
    sget-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public static getVideoLength()J
    .registers 2

    .line 464
    sget-wide v0, Lcom/gold/extension/youtube/patches/VideoInformation;->videoLength:J

    return-wide v0
.end method

.method public static getVideoTime()J
    .registers 6

    .line 494
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getPlayerVideoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_b

    goto :goto_14

    .line 500
    :cond_b
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getMdxVideoTime()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-ltz v2, :cond_14

    return-wide v4

    :cond_14
    :goto_14
    return-wide v0
.end method

.method public static initialize(Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;)V
    .registers 4
    .param p0  # Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 131
    const-string v0, ""

    :try_start_2
    new-instance v1, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 133
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/gold/extension/youtube/patches/VideoInformation;->playerControllerRef:Ljava/lang/ref/WeakReference;

    const-wide/16 v1, 0x0

    .line 134
    sput-wide v1, Lcom/gold/extension/youtube/patches/VideoInformation;->videoLength:J

    .line 135
    sput-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->channelId:Ljava/lang/String;

    .line 136
    sput-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->channelName:Ljava/lang/String;

    const/high16 p0, 0x3f800000  # 1.0f

    .line 139
    sput p0, Lcom/gold/extension/youtube/patches/VideoInformation;->playbackSpeed:F

    const/4 p0, -0x2

    .line 140
    sput p0, Lcom/gold/extension/youtube/patches/VideoInformation;->desiredVideoResolution:I

    const/4 p0, 0x0

    .line 141
    sput-object p0, Lcom/gold/extension/youtube/patches/VideoInformation;->currentQualities:[Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

    .line 142
    sput-object p0, Lcom/gold/extension/youtube/patches/VideoInformation;->currentMenuInterface:Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityMenuInterface;

    .line 143
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/VideoInformation;->setCurrentQuality(Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_2e

    return-void

    :catch_2e
    move-exception p0

    .line 145
    new-instance v0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static initializeMDX(Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;)V
    .registers 2

    .line 156
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->mdxPlayerDirectorRef:Ljava/lang/ref/WeakReference;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 158
    new-instance v0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static isAtEndOfVideo()Z
    .registers 4

    .line 518
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoTime()J

    move-result-wide v0

    sget-wide v2, Lcom/gold/extension/youtube/patches/VideoInformation;->videoLength:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static isPremiumVideoQuality(Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)Z
    .registers 2
    .param p0  # Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 675
    invoke-interface {p0}, Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;->patch_getQualityName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 676
    const-string v0, "Premium"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static lastPlayerResponseIsShort()Z
    .registers 1

    .line 439
    sget-boolean v0, Lcom/gold/extension/youtube/patches/VideoInformation;->playerResponseVideoIdIsShort:Z

    return v0
.end method

.method public static lastVideoIdIsShort()Z
    .registers 1

    .line 446
    sget-boolean v0, Lcom/gold/extension/youtube/patches/VideoInformation;->videoIdIsShort:Z

    return v0
.end method

.method public static newPlayerResponseSignature(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 209
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/VideoInformation;->playerParametersAreShort(Ljava/lang/String;)Z

    move-result p1

    .line 210
    sput-boolean p1, Lcom/gold/extension/youtube/patches/VideoInformation;->playerResponseVideoIdIsShort:Z

    if-eqz p1, :cond_a

    if-eqz p2, :cond_18

    .line 212
    :cond_a
    sget-boolean p2, Lcom/gold/extension/youtube/patches/VideoInformation;->videoIdIsShort:Z

    if-eq p2, p1, :cond_18

    .line 213
    sput-boolean p1, Lcom/gold/extension/youtube/patches/VideoInformation;->videoIdIsShort:Z

    .line 214
    new-instance p2, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda12;

    invoke-direct {p2, p1}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda12;-><init>(Z)V

    invoke-static {p2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_18
    return-object p0
.end method

.method public static overridePlaybackSpeed(F)V
    .registers 2

    sget-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->playbackSpeedClass:Lpxn;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p0}, Lpxn;->overridePlaybackSpeed(F)V

    return-void

    :cond_8
    nop

    .line 526
    new-instance v0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda11;-><init>(F)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void
.end method

.method public static playerParametersAreShort(Ljava/lang/String;)Z
    .registers 2
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 202
    const-string v0, "8AEB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static seekTo(J)Z
    .registers 11

    .line 294
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    const/4 v1, 0x0

    .line 296
    :try_start_4
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoTime()J

    move-result-wide v3

    .line 297
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoLength()J

    move-result-wide v5

    const-wide/16 v7, 0xfa

    sub-long v7, v5, v7

    .line 300
    invoke-static {p0, p1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    cmp-long v0, v3, p0

    if-gtz v0, :cond_29

    cmp-long v0, v3, v7

    if-ltz v0, :cond_29

    .line 305
    new-instance v2, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda2;

    move-wide v7, p0

    invoke-direct/range {v2 .. v8}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda2;-><init>(JJJ)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return v1

    :catch_26
    move-exception v0

    move-object p0, v0

    goto :goto_87

    .line 310
    :cond_29
    new-instance p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda3;

    invoke-direct {p0, v7, v8}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda3;-><init>(J)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 313
    sget-object p0, Lcom/gold/extension/youtube/patches/VideoInformation;->playerControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;

    if-nez p0, :cond_44

    .line 315
    new-instance p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_57

    .line 317
    :cond_44
    invoke-interface {p0, v7, v8}, Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;->patch_seekTo(J)Z

    move-result p0

    if-eqz p0, :cond_4f

    .line 318
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->onVideoSeeked()V

    const/4 p0, 0x1

    return p0

    .line 321
    :cond_4f
    new-instance p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda5;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :goto_57
    const-wide/16 p0, 0x3e8

    .line 328
    div-long v5, v7, p0

    div-long p0, v3, p0

    cmp-long p0, v5, p0

    if-nez p0, :cond_6a

    .line 329
    new-instance p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda6;

    invoke-direct {p0, v7, v8, v3, v4}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda6;-><init>(JJ)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return v1

    .line 334
    :cond_6a
    sget-object p0, Lcom/gold/extension/youtube/patches/VideoInformation;->mdxPlayerDirectorRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;

    if-nez p0, :cond_7d

    .line 336
    new-instance p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda7;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return v1

    .line 340
    :cond_7d
    invoke-interface {p0, v7, v8}, Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;->patch_seekTo(J)Z

    move-result p0

    if-eqz p0, :cond_86

    .line 341
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->onVideoSeeked()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_86} :catch_26

    :cond_86
    return p0

    .line 344
    :goto_87
    new-instance p1, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return v1
.end method

.method public static seekToRelative(J)V
    .registers 4

    .line 354
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 356
    :try_start_3
    new-instance v0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda16;-><init>(J)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 360
    sget-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->playerControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;

    if-nez v0, :cond_1e

    .line 362
    new-instance v0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda17;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_21

    .line 364
    :cond_1e
    invoke-interface {v0, p0, p1}, Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;->patch_seekToRelative(J)V

    :goto_21
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_2e

    const-wide/16 v0, -0x3e8

    .line 371
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    goto :goto_34

    :cond_2e
    const-wide/16 v0, 0x3e8

    .line 373
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 376
    :goto_34
    sget-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->mdxPlayerDirectorRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;

    if-nez v0, :cond_47

    .line 378
    new-instance p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda18;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda18;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 380
    :cond_47
    invoke-interface {v0, p0, p1}, Lcom/gold/extension/youtube/patches/VideoInformation$PlaybackController;->patch_seekToRelative(J)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4a} :catch_4b

    return-void

    :catch_4b
    move-exception p0

    .line 383
    new-instance p1, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda19;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda19;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setChannelId(Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_3

    goto :goto_5

    .line 166
    :cond_3
    const-string p0, ""

    :goto_5
    sput-object p0, Lcom/gold/extension/youtube/patches/VideoInformation;->channelId:Ljava/lang/String;

    .line 167
    new-instance p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda22;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda22;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 168
    sget-object p0, Lcom/gold/extension/youtube/patches/VideoInformation;->channelId:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1e

    .line 169
    sget-object p0, Lcom/gold/extension/youtube/patches/VideoInformation;->onChannelIdChange:Lcom/gold/extension/youtube/shared/Event;

    sget-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->channelId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gold/extension/youtube/shared/Event;->invoke(Ljava/lang/Object;)V

    :cond_1e
    return-void
.end method

.method public static setChannelName(Ljava/lang/String;)V
    .registers 1

    if-eqz p0, :cond_3

    goto :goto_5

    .line 177
    :cond_3
    const-string p0, ""

    :goto_5
    sput-object p0, Lcom/gold/extension/youtube/patches/VideoInformation;->channelName:Ljava/lang/String;

    .line 178
    new-instance p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda23;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda23;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void
.end method

.method private static setCurrentQuality(Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)V
    .registers 2
    .param p0  # Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 552
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 553
    sget-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->currentQuality:Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

    if-eq v0, p0, :cond_16

    .line 554
    new-instance v0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda24;-><init>(Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 555
    sput-object p0, Lcom/gold/extension/youtube/patches/VideoInformation;->currentQuality:Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

    .line 556
    sget-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->onQualityChange:Lcom/gold/extension/youtube/shared/Event;

    invoke-virtual {v0, p0}, Lcom/gold/extension/youtube/shared/Event;->invoke(Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public static setDesiredVideoResolution(I)V
    .registers 2

    .line 545
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 546
    new-instance v0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda14;-><init>(I)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 547
    sput p0, Lcom/gold/extension/youtube/patches/VideoInformation;->desiredVideoResolution:I

    const/4 p0, 0x1

    .line 548
    sput-boolean p0, Lcom/gold/extension/youtube/patches/VideoInformation;->qualityNeedsUpdating:Z

    return-void
.end method

.method public static setPlaybackSpeed(F)V
    .registers 2

    .line 535
    sget v0, Lcom/gold/extension/youtube/patches/VideoInformation;->playbackSpeed:F

    cmpl-float v0, v0, p0

    if-eqz v0, :cond_10

    .line 536
    new-instance v0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda28;-><init>(F)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 537
    sput p0, Lcom/gold/extension/youtube/patches/VideoInformation;->playbackSpeed:F

    :cond_10
    return-void
.end method

.method public static setPlayerResponsePlaylistId(Ljava/lang/String;Z)V
    .registers 2
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 226
    sget-boolean p1, Lcom/gold/extension/youtube/patches/VideoInformation;->playerResponseVideoIdIsShort:Z

    if-nez p1, :cond_1a

    if-nez p0, :cond_8

    .line 228
    const-string p0, ""

    .line 230
    :cond_8
    sget-object p1, Lcom/gold/extension/youtube/patches/VideoInformation;->playerResponsePlaylistId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 232
    new-instance p1, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda27;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda27;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 233
    sput-object p0, Lcom/gold/extension/youtube/patches/VideoInformation;->playerResponsePlaylistId:Ljava/lang/String;

    :cond_1a
    return-void
.end method

.method public static setPlayerResponseVideoId(Ljava/lang/String;Z)V
    .registers 2
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 244
    sget-object p1, Lcom/gold/extension/youtube/patches/VideoInformation;->playerResponseVideoId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 245
    new-instance p1, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda15;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 246
    sput-object p0, Lcom/gold/extension/youtube/patches/VideoInformation;->playerResponseVideoId:Ljava/lang/String;

    :cond_12
    return-void
.end method

.method public static setVideoId(Ljava/lang/String;)V
    .registers 2
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 192
    sget-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->videoId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 193
    new-instance v0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda25;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 194
    sput-object p0, Lcom/gold/extension/youtube/patches/VideoInformation;->videoId:Ljava/lang/String;

    :cond_12
    return-void
.end method

.method public static setVideoLength(J)V
    .registers 4

    .line 277
    sget-wide v0, Lcom/gold/extension/youtube/patches/VideoInformation;->videoLength:J

    cmp-long v0, v0, p0

    if-eqz v0, :cond_10

    .line 278
    new-instance v0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda26;-><init>(J)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 279
    sput-wide p0, Lcom/gold/extension/youtube/patches/VideoInformation;->videoLength:J

    :cond_10
    return-void
.end method

.method public static setVideoQuality([Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityMenuInterface;I)I
    .registers 13

    .line 604
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 605
    sput-object p1, Lcom/gold/extension/youtube/patches/VideoInformation;->currentMenuInterface:Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityMenuInterface;

    .line 607
    sget-object p1, Lcom/gold/extension/youtube/patches/VideoInformation;->currentQualities:[Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_17

    .line 608
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_17

    :cond_12
    move p1, v1

    goto :goto_18

    :catch_14
    move-exception p0

    goto/16 :goto_7a

    :cond_17
    :goto_17
    move p1, v0

    :goto_18
    if-eqz p1, :cond_24

    .line 610
    sput-object p0, Lcom/gold/extension/youtube/patches/VideoInformation;->currentQualities:[Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

    .line 611
    new-instance v2, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda30;

    invoke-direct {v2}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda30;-><init>()V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 615
    :cond_24
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 617
    aget-object v2, p0, p2

    .line 618
    invoke-interface {v2}, Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;->patch_getResolution()I

    move-result v3

    const/4 v4, -0x2

    if-eq v3, v4, :cond_3a

    sget-object v3, Lcom/gold/extension/youtube/patches/VideoInformation;->currentQuality:Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

    if-eqz v3, :cond_37

    if-eq v3, v2, :cond_3a

    .line 620
    :cond_37
    invoke-static {v2}, Lcom/gold/extension/youtube/patches/VideoInformation;->setCurrentQuality(Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)V

    .line 623
    :cond_3a
    sget v3, Lcom/gold/extension/youtube/patches/VideoInformation;->desiredVideoResolution:I

    if-ne v3, v4, :cond_3f

    goto :goto_79

    .line 630
    :cond_3f
    sget-boolean v5, Lcom/gold/extension/youtube/patches/VideoInformation;->qualityNeedsUpdating:Z

    if-eqz v5, :cond_46

    .line 631
    sput-boolean v1, Lcom/gold/extension/youtube/patches/VideoInformation;->qualityNeedsUpdating:Z

    goto :goto_49

    :cond_46
    if-nez p1, :cond_49

    goto :goto_79

    .line 638
    :cond_49
    :goto_49
    array-length p1, p0

    sub-int/2addr p1, v0

    .line 639
    array-length v5, p0

    move v6, v1

    move v7, v6

    :goto_4e
    if-ge v6, v5, :cond_79

    aget-object v8, p0, v6

    .line 640
    invoke-interface {v8}, Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;->patch_getResolution()I

    move-result v9

    if-eq v9, v4, :cond_5a

    if-le v9, v3, :cond_5c

    :cond_5a
    if-ne v7, p1, :cond_74

    :cond_5c
    if-eq v7, p2, :cond_5f

    goto :goto_60

    :cond_5f
    move v0, v1

    .line 645
    :goto_60
    new-instance p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda31;

    invoke-direct {p0, v0, v2, v8}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda31;-><init>(ZLcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    if-nez v0, :cond_70

    .line 659
    invoke-static {}, Lcom/gold/extension/youtube/shared/ShortsPlayerState;->isOpen()Z

    move-result p0

    if-nez p0, :cond_79

    .line 660
    :cond_70
    invoke-static {v8}, Lcom/gold/extension/youtube/patches/VideoInformation;->changeQuality(Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_73} :catch_14

    return v7

    :cond_74
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    :cond_79
    :goto_79
    return p2

    .line 669
    :goto_7a
    new-instance p1, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda32;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda32;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return p2
.end method

.method public static userSelectedPlaybackSpeed(F)V
    .registers 2

    .line 267
    new-instance v0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda13;-><init>(F)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 268
    sput p0, Lcom/gold/extension/youtube/patches/VideoInformation;->playbackSpeed:F

    return-void
.end method

.method public static videoSpeedChanged(F)V
    .registers 2

    .line 254
    sget v0, Lcom/gold/extension/youtube/patches/VideoInformation;->playbackSpeed:F

    cmpl-float v0, v0, p0

    if-eqz v0, :cond_10

    .line 255
    new-instance v0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda29;-><init>(F)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 256
    sput p0, Lcom/gold/extension/youtube/patches/VideoInformation;->playbackSpeed:F

    :cond_10
    return-void
.end method
