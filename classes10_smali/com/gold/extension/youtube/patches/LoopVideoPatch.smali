.class public Lcom/gold/extension/youtube/patches/LoopVideoPatch;
.super Ljava/lang/Object;
.source "LoopVideoPatch.java"


# static fields
.field private static final END_SCREEN_BUFFER_MS:J = 0x5dcL

.field private static final SEEK_COOLDOWN_MS:J = 0x7d0L

.field private static volatile lastSeekTimeMs:J = 0x0L

.field public static volatile rangeEndIsVideoEnd:Z = false

.field public static volatile rangeEndMs:J = -0x1L

.field public static volatile rangeStartMs:J = -0x1L

.field public static volatile rangeVideoId:Ljava/lang/String; = ""


# direct methods
.method public static synthetic $r8$lambda$Fxuq0LCt3Q_Ssaq_ab01edHIvJI()Ljava/lang/String;
    .registers 1

    .line 95
    const-string v0, "shouldLoopVideo failure"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearRange()V
    .registers 2

    const-wide/16 v0, -0x1

    .line 49
    sput-wide v0, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->rangeStartMs:J

    .line 50
    sput-wide v0, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->rangeEndMs:J

    const/4 v0, 0x0

    .line 51
    sput-boolean v0, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->rangeEndIsVideoEnd:Z

    .line 52
    const-string v0, ""

    sput-object v0, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->rangeVideoId:Ljava/lang/String;

    return-void
.end method

.method public static isRangeActive()Z
    .registers 4

    .line 38
    sget-wide v0, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->rangeStartMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    sget-wide v0, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->rangeEndMs:J

    sget-wide v2, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->rangeStartMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static setRange(JJZ)V
    .registers 5

    .line 42
    sput-wide p0, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->rangeStartMs:J

    .line 43
    sput-wide p2, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->rangeEndMs:J

    .line 44
    sput-boolean p4, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->rangeEndIsVideoEnd:Z

    .line 45
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->rangeVideoId:Ljava/lang/String;

    return-void
.end method

.method public static shouldLoopVideo(Ljava/lang/Enum;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)Z"
        }
    .end annotation

    .line 85
    :try_start_0
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->LOOP_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_33

    if-eqz p0, :cond_33

    const-string v0, "ENDED"

    .line 86
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 88
    invoke-static {}, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->isRangeActive()Z

    move-result p0

    if-eqz p0, :cond_23

    .line 91
    sget-wide v0, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->rangeStartMs:J

    goto :goto_25

    :cond_23
    const-wide/16 v0, 0x0

    .line 88
    :goto_25
    invoke-static {v0, v1}, Lcom/gold/extension/youtube/patches/VideoInformation;->seekTo(J)Z

    move-result p0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    return p0

    :catch_2a
    move-exception p0

    .line 95
    new-instance v0, Lcom/gold/extension/youtube/patches/LoopVideoPatch$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/LoopVideoPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method public static videoTimeChanged(J)V
    .registers 6

    .line 59
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->LOOP_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-static {}, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->isRangeActive()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_5a

    .line 62
    :cond_13
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoId()Ljava/lang/String;

    move-result-object v1

    .line 63
    sget-object v2, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->rangeVideoId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33

    sget-object v2, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->rangeVideoId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 64
    invoke-static {}, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->clearRange()V

    .line 65
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->save(Ljava/lang/Object;)V

    .line 66
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->onRangeCleared()V

    return-void

    .line 70
    :cond_33
    sget-boolean v0, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->rangeEndIsVideoEnd:Z

    if-eqz v0, :cond_3d

    sget-wide v0, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->rangeEndMs:J

    const-wide/16 v2, 0x5dc

    sub-long/2addr v0, v2

    goto :goto_3f

    :cond_3d
    sget-wide v0, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->rangeEndMs:J

    :goto_3f
    cmp-long p0, p0, v0

    if-gez p0, :cond_44

    goto :goto_5a

    .line 73
    :cond_44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 74
    sget-wide v0, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->lastSeekTimeMs:J

    sub-long v0, p0, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_53

    goto :goto_5a

    .line 75
    :cond_53
    sput-wide p0, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->lastSeekTimeMs:J

    .line 77
    sget-wide p0, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->rangeStartMs:J

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/VideoInformation;->seekTo(J)Z

    :cond_5a
    :goto_5a
    return-void
.end method
