.class public Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;
.super Ljava/lang/Object;
.source "SegmentPlaybackController.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$SponsorBlockDuration;
    }
.end annotation


# static fields
.field private static final HIGHLIGHT_SEGMENT_DRAW_BAR_WIDTH:I

.field private static volatile adProgressTextVisibility:I

.field private static currentVideoId:Ljava/lang/String;

.field private static final hiddenSkipSegmentsForCurrentVideoTime:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;",
            ">;"
        }
    .end annotation
.end field

.field private static highlightSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

.field private static highlightSegmentInitialShowEndTime:J

.field private static lastSegmentSkipped:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

.field private static lastSegmentSkippedTime:J

.field private static scheduledHideSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

.field private static scheduledUpcomingSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

.field private static seekbarAbsoluteBottom:I

.field private static seekbarAbsoluteLeft:I

.field private static seekbarAbsoluteRight:I

.field private static seekbarAbsoluteTop:I

.field private static seekbarThickness:I

.field private static segmentCurrentlyPlaying:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

.field private static segments:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

.field private static skipSegmentButtonEndTime:J

.field private static timeWithoutSegments:Ljava/lang/String;

.field private static toastDialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private static toastNumberOfSegmentsSkipped:I

.field private static toastSegmentSkipped:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

.field private static undoAutoSkipRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static undoAutoSkipRangeToast:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$04iIHE1bNVdb-_KhFL3frT01HBs(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "New video ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1bjkBh3TIVZHjPGwu0uvew8p2GA(Ljava/lang/String;[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
    .registers 9

    .line 420
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->currentVideoId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 422
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda25;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda25;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 425
    :cond_11
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object p0

    invoke-interface {p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->channelWhitelist()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$ChannelWhitelistAdapter;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 426
    invoke-interface {p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$ChannelWhitelistAdapter;->isCurrentChannelWhitelisted()Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 427
    new-instance p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda26;

    invoke-direct {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda26;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 428
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->maybeShowWhitelistToast()V

    return-void

    .line 431
    :cond_2d
    invoke-static {p1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->setSegments([Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    .line 433
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->video()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;->getVideoTime()J

    move-result-wide p0

    .line 434
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->highlightSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-eqz v0, :cond_6c

    .line 436
    iget-wide v1, v0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    sub-long/2addr v1, p0

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_6c

    .line 438
    invoke-virtual {v0}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->shouldAutoSkip()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 439
    sget-object p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->highlightSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->skipSegment(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Z)V

    return-void

    .line 442
    :cond_52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-float v0, v1

    .line 443
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->video()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;->getPlaybackSpeed()F

    move-result v1

    div-float/2addr v0, v1

    float-to-long v0, v0

    .line 444
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->getSkipButtonDuration()J

    move-result-wide v5

    .line 442
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v3, v0

    sput-wide v3, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->highlightSegmentInitialShowEndTime:J

    .line 449
    :cond_6c
    invoke-static {p0, p1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->setVideoTime(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$1cMgpr5KE3iJLpYz2kSX5v_Np8I()Ljava/lang/String;
    .registers 1

    .line 896
    const-string v0, "Not showing autoskip toast as playback is PiP"

    return-object v0
.end method

.method public static synthetic $r8$lambda$1dlfoheatr2bYe0j3i3Ig5LRb0k()Ljava/lang/String;
    .registers 1

    .line 702
    const-string v0, "setVideoTime failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$2PuiaoUyVV-I14N8pjaIWIEGssk(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;F)Ljava/lang/String;
    .registers 4

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scheduling segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " playbackSpeed: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2Z7fX4lBtmeAJQmPPoTz-06c08g()Ljava/lang/String;
    .registers 1

    .line 1011
    const-string v0, "Dismissed previous skip toast that was still on screen"

    return-object v0
.end method

.method public static synthetic $r8$lambda$2dQNb4ZH06lGomxXdJ0ECHPIOeY(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;J)V
    .registers 5

    .line 668
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->scheduledUpcomingSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-eq v0, p0, :cond_d

    .line 669
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda63;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda63;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    :cond_d
    const/4 v0, 0x0

    .line 672
    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->scheduledUpcomingSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 673
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->playerState()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_23

    .line 674
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda64;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda64;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 678
    :cond_23
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->video()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;->getVideoTime()J

    move-result-wide v0

    .line 679
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->startIsNear(JJ)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 681
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda65;

    invoke-direct {p1, p0, v0, v1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda65;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;J)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 685
    :cond_3a
    invoke-static {p0, v0, v1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->shouldAutoSkipAndUndoSkipNotActive(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;J)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 686
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda66;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda66;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 p1, 0x0

    .line 687
    invoke-static {p0, p1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->skipSegment(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Z)V

    return-void

    .line 689
    :cond_4d
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda67;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda67;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 690
    invoke-static {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->setSegmentCurrentlyPlaying(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2h6aRdRBvJkPeCQo7ag6WQna8hU(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring segments for prior video: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4FH3dE3i-DnrxM02sCuve80jqCc()Ljava/lang/String;
    .registers 1

    .line 1040
    const-string v0, "onSkipSegmentClicked failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$4JmoPRXl5vXmk70dPWDYuKAyapw(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;J)Ljava/lang/String;
    .registers 5

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring outdated scheduled segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " videoInformation time: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5Rs4dXMY9EpmSaoz4s4CLfmjq9w(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Ljava/lang/String;
    .registers 3

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring skip segment request (already skipped as close as possible): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5u3xWy-k0Zas2U3htpcaGhdE4aE()Ljava/lang/String;
    .registers 1

    .line 200
    const-string v0, "Dismissed undo toast as playback is PiP"

    return-object v0
.end method

.method public static synthetic $r8$lambda$5zVGhpQl7nmEOChZxQRlgSDYiTQ()Ljava/lang/String;
    .registers 1

    .line 902
    const-string v0, "Ignoring old scheduled show toast"

    return-object v0
.end method

.method public static synthetic $r8$lambda$6O9hcHjIAnE1j1wwhKQkg6SjE1Y(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    const/16 v0, 0x8

    if-eq p0, v0, :cond_c

    .line 466
    const-string p0, "UNKNOWN"

    goto :goto_14

    .line 464
    :cond_c
    const-string p0, "GONE"

    goto :goto_14

    .line 465
    :cond_f
    const-string p0, "INVISIBLE"

    goto :goto_14

    .line 463
    :cond_12
    const-string p0, "VISIBLE"

    .line 468
    :goto_14
    const-string v0, "AdProgressText visibility changed to: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6wA1NzclQOdCG4sKRMr-LS_g_88(Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$ChannelWhitelistAdapter;Ljava/lang/String;)V
    .registers 3

    .line 212
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->currentVideoId:Ljava/lang/String;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segments:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-eqz v0, :cond_19

    .line 213
    invoke-interface {p0, p1}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$ChannelWhitelistAdapter;->isChannelWhitelisted(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 214
    new-instance p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda36;

    invoke-direct {p0, p1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda36;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 215
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->discardSegmentsForWhitelistedChannel()V

    :cond_19
    return-void
.end method

.method public static synthetic $r8$lambda$7tHR5K2Bt1h4zfttCBtCecETi0E(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Ljava/lang/String;
    .registers 3

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Running scheduled show segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AhPd1PR_-BoAnGJNuKuVTLZ02Bw()Ljava/lang/String;
    .registers 1

    .line 384
    const-string v0, "Network not connected, ignoring video"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Aijq333hTVUL-CkkQAGGc_J4PfM()V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 890
    :try_start_2
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->playerState()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 891
    new-instance v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda56;

    invoke-direct {v2}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda56;-><init>()V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_19

    .line 915
    :goto_14
    sput v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->toastNumberOfSegmentsSkipped:I

    .line 916
    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->toastSegmentSkipped:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    return-void

    :catchall_19
    move-exception v2

    goto :goto_64

    .line 895
    :cond_1b
    :try_start_1b
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->playerState()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;->isPictureInPicture()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 896
    new-instance v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda57;

    invoke-direct {v2}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda57;-><init>()V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_14

    .line 900
    :cond_2e
    sget-object v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->toastSegmentSkipped:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-eqz v2, :cond_5b

    sget-object v3, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->undoAutoSkipRangeToast:Landroid/util/Range;

    if-nez v3, :cond_37

    goto :goto_5b

    .line 905
    :cond_37
    sget v3, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->toastNumberOfSegmentsSkipped:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_41

    .line 906
    invoke-virtual {v2}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->getSkippedToastText()Ljava/lang/String;

    move-result-object v2

    goto :goto_47

    .line 907
    :cond_41
    const-string v2, "youtube_sb_skipped_multiple_segments"

    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 909
    :goto_47
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object v3

    invoke-interface {v3}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->undoToastEnabled()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 910
    sget-object v3, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->undoAutoSkipRangeToast:Landroid/util/Range;

    invoke-static {v2, v3}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->showAutoSkipToast(Ljava/lang/String;Landroid/util/Range;)V

    goto :goto_14

    .line 912
    :cond_57
    invoke-static {v2}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    goto :goto_14

    .line 902
    :cond_5b
    :goto_5b
    new-instance v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda58;

    invoke-direct {v2}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda58;-><init>()V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_63
    .catchall {:try_start_1b .. :try_end_63} :catchall_19

    goto :goto_14

    .line 915
    :goto_64
    sput v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->toastNumberOfSegmentsSkipped:I

    .line 916
    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->toastSegmentSkipped:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 917
    throw v2
.end method

.method public static synthetic $r8$lambda$ENRIbnYnJuIuh9BCoL4i8YJCYaQ(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Ljava/lang/String;
    .registers 3

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring scheduled hide segment as video is paused: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EXS_tMv7VXxkPjIDy0eBuxPE7Is(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Channel is whitelisted, discarding loaded segments: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ed-wUNqWgvGJIxboC_6_LukoOio()Ljava/lang/String;
    .registers 1

    .line 427
    const-string v0, "Skipping SponsorBlock for whitelisted channel"

    return-object v0
.end method

.method public static synthetic $r8$lambda$EnS1Tb0OnFUorOfIe-x1uojM_iE()Ljava/lang/String;
    .registers 1

    .line 891
    const-string v0, "Ignoring scheduled toast as video state is paused"

    return-object v0
.end method

.method public static synthetic $r8$lambda$FbogXWEyfjKr-z3mgeqeFplAf8s()Ljava/lang/String;
    .registers 1

    .line 1084
    const-string v0, "appendTimeWithoutSegments failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$FdQGqV1ZluktmMZcLL5qyqm2hzo()Ljava/lang/String;
    .registers 2

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Clearing undo range as current time is now outside range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->undoAutoSkipRange:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$FgDrkqtidUbMDxP-X_mJTPFUfMk()Ljava/lang/String;
    .registers 1

    .line 406
    const-string v0, "setCurrentVideoId failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$JRbkgchwjGSu4eXtY4Gz2qF2DeQ()Ljava/lang/String;
    .registers 1

    .line 353
    const-string v0, "Initialized SponsorBlock"

    return-object v0
.end method

.method public static synthetic $r8$lambda$JmT2tKZMpcrJsvHL6oyfTQki1d4(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Ljava/lang/String;
    .registers 3

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring segment that ends very soon: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LFEpK-o9o3Aqew-Hk5fOaAPwNrA(II)Ljava/lang/String;
    .registers 4

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSeekbarRectangle left: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " right: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$M3E9j-GRd_vYvvutkbwH5utuOxQ(Ljava/lang/String;)V
    .registers 2

    .line 400
    :try_start_0
    invoke-static {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->executeDownloadSegments(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 402
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda59;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NG2rFMjDZfcmCFoFzb4RRAzVHv8(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;J)V
    .registers 6

    .line 629
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->scheduledHideSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-eq v0, p0, :cond_d

    .line 630
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda48;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda48;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    :cond_d
    const/4 v0, 0x0

    .line 633
    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->scheduledHideSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 634
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->playerState()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_23

    .line 635
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda49;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda49;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 639
    :cond_23
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->video()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;->getVideoTime()J

    move-result-wide v1

    .line 640
    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->endIsNear(JJ)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 642
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda50;

    invoke-direct {p1, p0, v1, v2}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda50;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;J)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 646
    :cond_3a
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda51;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda51;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 651
    invoke-static {v0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->setSegmentCurrentlyPlaying(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    .line 652
    iget-wide p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->end:J

    invoke-static {p0, p1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->setVideoTime(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$NQzAZLH1oXGwxcAG3u1-L6HJUCQ(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Ljava/lang/String;
    .registers 3

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring old scheduled segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NtMtWWmQAXaDdiwW8WVgRHnMMck(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Ljava/lang/String;
    .registers 3

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Running scheduled hide segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NzBu0XAQEnxJDRhkoRk5M77GlM4()Ljava/lang/String;
    .registers 2

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Clearing scheduled segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->scheduledUpcomingSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$O575eurEQwTTXLKdoe2vYax2s7Q()Ljava/lang/String;
    .registers 1

    .line 928
    const-string v0, "Not showing undo toast for feed playback"

    return-object v0
.end method

.method public static synthetic $r8$lambda$QCnnR9ABhwVC34I73pTfgbTRuNM()Ljava/lang/String;
    .registers 1

    .line 355
    const-string v0, "initialize failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$QLAL7WURwy28o2xBop9MDKWQ53s(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Ljava/lang/String;
    .registers 3

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not skip segment (seek unsuccessful): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RtKX6ZIRhtqt2ciENQsDU2TFHks(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Ljava/lang/String;
    .registers 3

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring old scheduled hide segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SHzHvZHQmGKGIJUIxvNuosF8Nyk(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Ljava/lang/String;
    .registers 3

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Running scheduled skip segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SjZf7YqoW1VCSxISbaoLSOGY_Vc(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;F)Ljava/lang/String;
    .registers 4

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scheduling hide segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " playbackSpeed: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$T2FJnyxuEy82eaH2ku1w6W6sTL4()Ljava/lang/String;
    .registers 1

    .line 402
    const-string v0, "Failed to download segments"

    return-object v0
.end method

.method public static synthetic $r8$lambda$UawZgxnDScujfar5wRfY9COihFo()Ljava/lang/String;
    .registers 1

    .line 994
    const-string v0, "showToastShortWithTapAction setOnClickListener failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$VFiNq16-sEiI2urrLmuz8ZE-fK0(Landroid/app/Dialog;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;)V
    .registers 3

    .line 1020
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1021
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_9
    return-void
.end method

.method public static synthetic $r8$lambda$Y6225W3T0l-9sUnGtqfVQKvdaM4()Ljava/lang/String;
    .registers 2

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Auto hiding skip button for segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segmentCurrentlyPlaying:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$YIpfJjwL5-r__3AxyAxIFM0345s(JLcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Z
    .registers 3

    .line 711
    invoke-virtual {p2, p0, p1}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->containsTime(J)Z

    move-result p0

    if-nez p0, :cond_10

    .line 712
    new-instance p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda0;

    invoke-direct {p0, p2}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$ZTkW_PISxfrE0XeFto6KX7Po498(Landroid/util/Range;)Ljava/lang/String;
    .registers 3

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extending undo range from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->undoAutoSkipRange:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aMbBZqFccV9_4NuFPVJM6enPtp4(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Showing toast: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aazXsBnb0PFwXkXTqmod40g4qL4(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Ljava/lang/String;
    .registers 3

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring previously auto-hidden segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bqsUcGOdzbKsKX9zr2zaZmVj-Fo(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Ljava/lang/String;
    .registers 3

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Resetting hide skip button: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$d5VozdEZo-q2LxL2svYtSI4IUKg(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Ljava/lang/String;
    .registers 3

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not scheduling segment (start time is near end of current segment): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dP_g7TcajllKxmHEtaLzgk8Fc1U(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;J)Ljava/lang/String;
    .registers 5

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring outdated scheduled hide: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " videoInformation time: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dnfe0xoITL2DN73_ln-2VwOBGxA()Ljava/lang/String;
    .registers 2

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hiding segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segmentCurrentlyPlaying:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$dy-APCwa2ZQqusA1QhhbfqPj9k0(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
    .registers 1

    .line 848
    invoke-static {p0}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->sendSegmentSkippedViewedRequest(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ih58bupwHEeK7gDSgbpU3j9Heww()Ljava/lang/String;
    .registers 2

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Clearing scheduled hide: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->scheduledHideSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$jjVCn-FT29Vduqzz_-1mB24MPjI()Ljava/lang/String;
    .registers 1

    .line 393
    const-string v0, "Skipping SponsorBlock request for whitelisted channel"

    return-object v0
.end method

.method public static synthetic $r8$lambda$kjbDoCsj_MHYSVgJZ8VUHWIZ_0I(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Ljava/lang/String;
    .registers 3

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring scheduled hide segment as video is paused: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kuzGt3NzbbKCNgPd-c7Y8V5qcGE()Ljava/lang/String;
    .registers 1

    .line 380
    const-string v0, "Ignoring Short"

    return-object v0
.end method

.method public static synthetic $r8$lambda$lKwG0fkOA0fp_lSE2C6wsqTp_tU(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot show toast (context is null): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lqeFHkQxkrFB6FBswoZZVlHccas()Ljava/lang/String;
    .registers 1

    .line 852
    const-string v0, "skipSegment failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$nEwTu_S8upVnaL2iG1FVcqHvq3A()Ljava/lang/String;
    .registers 1

    .line 1163
    const-string v0, "drawSponsorTimeBars failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$nRna4sEKpAvihxC854AX8pVXWzc()Ljava/lang/String;
    .registers 1

    .line 1199
    const-string v0, "drawSegmentTimeBars (centered) failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$nWbU6xbyBHy7e4Vvx-OW0JuaRx8()Ljava/lang/String;
    .registers 1

    .line 1033
    const-string v0, "error: segment not available to skip"

    return-object v0
.end method

.method public static synthetic $r8$lambda$q4dFt5XowP4KEpoKmSI0i4X4-kw(Landroid/util/Range;)Ljava/lang/String;
    .registers 3

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Undoing autoskip using range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tLazeaH3KQPdZJts8esWeczTwkE(J)Ljava/lang/String;
    .registers 4

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setVideoTime: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uzuAIgfvhzckfGmBx8eZg0207Nc(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Ljava/lang/String;
    .registers 3

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skipping segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " isPlaying: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->playerState()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;->isPlaying()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vPej66yWdqwB0qSGHM7xSTBqUNQ(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Ljava/lang/String;
    .registers 3

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Showing segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v_T2vdzZDbGkKsEQxmyXCrM5PWg(Landroid/util/Range;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/app/Dialog;Landroid/view/View;)V
    .registers 7

    .line 987
    :try_start_0
    new-instance p4, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda53;

    invoke-direct {p4, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda53;-><init>(Landroid/util/Range;)V

    invoke-static {p4}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 989
    sput-object p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->undoAutoSkipRange:Landroid/util/Range;

    .line 990
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->video()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;

    move-result-object p4

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p4, v0, v1}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;->seekTo(J)Z

    .line 992
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    .line 994
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda54;

    invoke-direct {p1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda54;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    .line 995
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$wiciqDkX4f9OX9s0myZvleIqOTs()Ljava/lang/String;
    .registers 1

    .line 365
    const-string v0, "Ignoring blank videoId"

    return-object v0
.end method

.method public static synthetic $r8$lambda$y1NMfB7dY31n1mevmzt6eIDG3G8(Landroid/util/Range;)Ljava/lang/String;
    .registers 3

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting new undo range to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 96
    sget v0, Lcom/gold/extension/shared/ui/Dim;->dp7:I

    sput v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->HIGHLIGHT_SEGMENT_DRAW_BAR_WIDTH:I

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->hiddenSkipSegmentsForCurrentVideoTime:Ljava/util/List;

    .line 181
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->toastDialogRef:Ljava/lang/ref/WeakReference;

    const/4 v0, -0x1

    .line 186
    sput v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->adProgressTextVisibility:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addUnsubmittedSegment(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
    .registers 4

    .line 271
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segments:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 273
    new-array v0, v1, [Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segments:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    goto :goto_17

    .line 275
    :cond_d
    array-length v2, v0

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segments:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 277
    :goto_17
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segments:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    array-length v2, v0

    sub-int/2addr v2, v1

    aput-object p0, v0, v2

    .line 278
    invoke-static {v0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->setSegments([Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    return-void
.end method

.method public static appendTimeWithoutSegments(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1076
    const-string v0, "\u202d"

    :try_start_2
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;->videoLengthWithoutSegments()Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 1077
    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1078
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;->sbEnabled()Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1079
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->timeWithoutSegments:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->timeWithoutSegments:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_47} :catch_48

    return-object p0

    :catch_48
    move-exception v0

    goto :goto_4b

    :cond_4a
    return-object p0

    .line 1084
    :goto_4b
    new-instance v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda38;

    invoke-direct {v1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda38;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static autoHideIsEnabledAndPlayerOverlayIsActive()Z
    .registers 1

    .line 484
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;->autoHideSkipButton()Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 485
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 486
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->playerState()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;->playerControlsVisible()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    return v0

    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method private static calculateTimeWithoutSegments()V
    .registers 15

    .line 1091
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->video()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;->getVideoLength()J

    move-result-wide v0

    .line 1092
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;->videoLengthWithoutSegments()Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a8

    .line 1093
    invoke-virtual {v2}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a8

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-lez v2, :cond_a8

    sget-object v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segments:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-eqz v2, :cond_a8

    array-length v6, v2

    if-nez v6, :cond_2c

    goto/16 :goto_a8

    .line 1102
    :cond_2c
    array-length v2, v2

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_30
    if-ge v7, v2, :cond_5c

    .line 1103
    sget-object v9, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segments:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    aget-object v9, v9, v7

    .line 1104
    iget-object v10, v9, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-object v11, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-ne v10, v11, :cond_3d

    goto :goto_59

    .line 1109
    :cond_3d
    iget-wide v10, v9, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    .line 1110
    iget-wide v8, v9, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->end:J

    move v12, v6

    :goto_42
    if-ge v12, v7, :cond_51

    .line 1114
    sget-object v13, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segments:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    aget-object v13, v13, v12

    iget-wide v13, v13, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->end:J

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    add-int/lit8 v12, v12, 0x1

    goto :goto_42

    :cond_51
    cmp-long v12, v10, v8

    const/4 v13, 0x1

    if-gez v12, :cond_58

    sub-long/2addr v8, v10

    sub-long/2addr v0, v8

    :cond_58
    move v8, v13

    :goto_59
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    :cond_5c
    if-nez v8, :cond_61

    .line 1122
    sput-object v3, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->timeWithoutSegments:Ljava/lang/String;

    return-void

    :cond_61
    const-wide/32 v2, 0x36ee80

    .line 1126
    div-long v2, v0, v2

    const-wide/32 v6, 0xea60

    .line 1127
    div-long v6, v0, v6

    const-wide/16 v8, 0x3c

    rem-long/2addr v6, v8

    const-wide/16 v10, 0x3e8

    .line 1128
    div-long/2addr v0, v10

    rem-long/2addr v0, v8

    cmp-long v4, v2, v4

    if-lez v4, :cond_91

    .line 1130
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v2, v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u2009(%d:%02d:%02d)"

    invoke-static {v4, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->timeWithoutSegments:Ljava/lang/String;

    return-void

    .line 1132
    :cond_91
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u2009(%d:%02d)"

    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->timeWithoutSegments:Ljava/lang/String;

    return-void

    .line 1095
    :cond_a8
    :goto_a8
    sput-object v3, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->timeWithoutSegments:Ljava/lang/String;

    return-void
.end method

.method private static clearData()V
    .registers 3

    const/4 v0, 0x0

    .line 305
    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->currentVideoId:Ljava/lang/String;

    .line 306
    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segments:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 307
    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->highlightSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    const-wide/16 v1, 0x0

    .line 308
    sput-wide v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->highlightSegmentInitialShowEndTime:J

    .line 309
    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->timeWithoutSegments:Ljava/lang/String;

    .line 310
    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segmentCurrentlyPlaying:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 311
    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->scheduledUpcomingSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 312
    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->scheduledHideSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 313
    sput-wide v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->skipSegmentButtonEndTime:J

    .line 314
    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->toastSegmentSkipped:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    const/4 v1, 0x0

    .line 315
    sput v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->toastNumberOfSegmentsSkipped:I

    .line 316
    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->undoAutoSkipRange:Landroid/util/Range;

    .line 317
    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->undoAutoSkipRangeToast:Landroid/util/Range;

    .line 318
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->hiddenSkipSegmentsForCurrentVideoTime:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;
    .registers 1

    .line 188
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public static currentlyInsideSkippableSegment()Z
    .registers 1

    .line 865
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segmentCurrentlyPlaying:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-nez v0, :cond_f

    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->hiddenSkipSegmentsForCurrentVideoTime:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method private static discardSegmentsForWhitelistedChannel()V
    .registers 1

    .line 332
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->currentVideoId:Ljava/lang/String;

    .line 333
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->clearData()V

    .line 334
    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->currentVideoId:Ljava/lang/String;

    .line 335
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->ui()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;->hideAll()V

    .line 336
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->maybeShowWhitelistToast()V

    return-void
.end method

.method private static dismissUndoToast()Z
    .registers 2

    .line 224
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->toastDialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    if-eqz v0, :cond_15

    .line 225
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 226
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public static drawSegmentTimeBars(Landroid/graphics/Canvas;)V
    .registers 17

    .line 1174
    :try_start_0
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segments:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-eqz v0, :cond_86

    .line 1175
    array-length v1, v0

    if-nez v1, :cond_9

    goto/16 :goto_86

    .line 1177
    :cond_9
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->video()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;->getVideoLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_19

    goto/16 :goto_86

    .line 1180
    :cond_19
    sget v3, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->seekbarAbsoluteRight:I

    sget v4, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->seekbarAbsoluteLeft:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_25

    goto :goto_86

    .line 1183
    :cond_25
    sget v4, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->seekbarAbsoluteBottom:I

    sget v5, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->seekbarAbsoluteTop:I

    sub-int/2addr v4, v5

    .line 1184
    sget v5, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->seekbarThickness:I

    if-lez v5, :cond_2f

    move v4, v5

    :cond_2f
    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1185
    sget v5, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->seekbarAbsoluteTop:I

    sget v6, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->seekbarAbsoluteBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000  # 2.0f

    div-float v9, v5, v6

    .line 1187
    array-length v5, v0

    const/4 v7, 0x0

    move v13, v7

    :goto_41
    if-ge v13, v5, :cond_86

    aget-object v7, v0, v13

    .line 1188
    iget-object v8, v7, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    iget-object v8, v8, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->behaviour:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    sget-object v10, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->IGNORE:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    if-ne v8, v10, :cond_4e

    goto :goto_83

    .line 1190
    :cond_4e
    sget v8, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->seekbarAbsoluteLeft:I

    int-to-float v10, v8

    iget-wide v11, v7, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    long-to-float v11, v11

    long-to-float v12, v1

    div-float/2addr v11, v12

    mul-float/2addr v11, v3

    add-float/2addr v10, v11

    int-to-float v8, v8

    .line 1191
    iget-wide v14, v7, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->end:J

    long-to-float v11, v14

    div-float/2addr v11, v12

    mul-float/2addr v11, v3

    add-float/2addr v8, v11

    add-float v11, v10, v6

    .line 1192
    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1194
    iget-object v11, v7, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    iget-object v11, v11, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->paint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1195
    iget-object v11, v7, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    iget-object v11, v11, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->paint:Landroid/graphics/Paint;

    int-to-float v12, v4

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1196
    iget-object v7, v7, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    iget-object v12, v7, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->paint:Landroid/graphics/Paint;

    move v11, v9

    move v7, v10

    move v10, v8

    move v8, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_83} :catch_87

    :goto_83
    add-int/lit8 v13, v13, 0x1

    goto :goto_41

    :cond_86
    :goto_86
    return-void

    :catch_87
    move-exception v0

    .line 1199
    new-instance v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda52;

    invoke-direct {v1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda52;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static drawSegmentTimeBars(Landroid/graphics/Canvas;F)V
    .registers 13

    .line 1142
    :try_start_0
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segments:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-eqz v0, :cond_59

    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->isAdProgressTextVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_59

    .line 1143
    :cond_b
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->video()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;->getVideoLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1a

    goto :goto_59

    .line 1146
    :cond_1a
    sget v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->seekbarThickness:I

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float v6, p1, v2

    int-to-float v2, v3

    add-float v8, p1, v2

    const/high16 p1, 0x3f800000  # 1.0f

    long-to-float v0, v0

    div-float/2addr p1, v0

    .line 1149
    sget v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->seekbarAbsoluteRight:I

    sget v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->seekbarAbsoluteLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    int-to-float v0, v1

    .line 1152
    sget-object v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segments:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_35
    if-ge v3, v2, :cond_59

    aget-object v4, v1, v3

    .line 1153
    iget-wide v9, v4, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    long-to-float v5, v9

    mul-float/2addr v5, p1

    add-float/2addr v5, v0

    .line 1155
    iget-object v7, v4, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-object v9, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-ne v7, v9, :cond_49

    .line 1156
    sget v4, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->HIGHLIGHT_SEGMENT_DRAW_BAR_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v5

    goto :goto_4e

    .line 1158
    :cond_49
    iget-wide v9, v4, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->end:J

    long-to-float v4, v9

    mul-float/2addr v4, p1

    add-float/2addr v4, v0

    .line 1160
    :goto_4e
    iget-object v9, v7, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->paint:Landroid/graphics/Paint;

    move v7, v4

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_55} :catch_5a

    add-int/lit8 v3, v3, 0x1

    move-object p0, v4

    goto :goto_35

    :cond_59
    :goto_59
    return-void

    :catch_5a
    move-exception v0

    move-object p0, v0

    .line 1163
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda55;

    invoke-direct {p1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda55;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static executeDownloadSegments(Ljava/lang/String;)V
    .registers 3

    .line 414
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 417
    invoke-static {p0}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->getSegments(Ljava/lang/String;)[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    move-result-object v0

    .line 419
    new-instance v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getSegments()[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;
    .registers 1

    .line 249
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segments:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    return-object v0
.end method

.method private static getSkipButtonDuration()J
    .registers 2

    .line 237
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;->autoHideSkipButtonDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getToastDuration()J
    .registers 2

    .line 244
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;->toastOnSkipDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static initialize()V
    .registers 2

    .line 345
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 349
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->loadAllCategoriesFromSettings()V

    .line 350
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->clearData()V

    .line 351
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->ui()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;->hideAll()V

    .line 352
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->ui()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;->clearUnsubmittedSegmentTimes()V

    .line 353
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda34;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception v0

    .line 355
    new-instance v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda35;

    invoke-direct {v1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda35;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static isAdProgressTextVisible()Z
    .registers 1

    .line 479
    sget v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->adProgressTextVisibility:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private static maybeShowWhitelistToast()V
    .registers 1

    .line 322
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;->toastOnWhitelistedChannel()Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 323
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 324
    const-string v0, "youtube_sb_channel_whitelisted_toast"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public static onChannelIdChange(Ljava/lang/String;)V
    .registers 3

    .line 209
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->channelWhitelist()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$ChannelWhitelistAdapter;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 211
    :cond_b
    new-instance v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda40;

    invoke-direct {v1, v0, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda40;-><init>(Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$ChannelWhitelistAdapter;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onPlayerTypeChanged()V
    .registers 1

    .line 198
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->undoToastEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_23

    .line 199
    :cond_b
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->playerState()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;->isPictureInPicture()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->dismissUndoToast()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 200
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda47;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public static onSkipSegmentClicked(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
    .registers 2

    .line 1031
    :try_start_0
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->highlightSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-eq p0, v0, :cond_27

    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segmentCurrentlyPlaying:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-eq p0, v0, :cond_27

    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->hiddenSkipSegmentsForCurrentVideoTime:Ljava/util/List;

    .line 1032
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1033
    new-instance p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda60;

    invoke-direct {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda60;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 1034
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->ui()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;->hideSkipSegmentButton()V

    .line 1035
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->ui()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;->hideSkipHighlightButton()V

    return-void

    :cond_27
    const/4 v0, 0x1

    .line 1038
    invoke-static {p0, v0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->skipSegment(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Z)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p0

    .line 1040
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda61;

    invoke-direct {v0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda61;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static playerState()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;
    .registers 1

    .line 191
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->playerState()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static removeUnsubmittedSegments()V
    .registers 8

    .line 282
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segments:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-eqz v0, :cond_36

    array-length v0, v0

    if-nez v0, :cond_8

    goto :goto_36

    .line 286
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    sget-object v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segments:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_22

    aget-object v5, v1, v4

    .line 288
    iget-object v6, v5, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-object v7, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->UNSUBMITTED:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-eq v6, v7, :cond_1f

    .line 289
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 292
    :cond_22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segments:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    array-length v2, v2

    if-eq v1, v2, :cond_36

    .line 293
    new-array v1, v3, [Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    invoke-static {v0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->setSegments([Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    :cond_36
    :goto_36
    return-void
.end method

.method public static setAdProgressTextVisibility(I)V
    .registers 2

    .line 458
    sget v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->adProgressTextVisibility:I

    if-eq v0, p0, :cond_e

    .line 459
    sput p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->adProgressTextVisibility:I

    .line 461
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda24;-><init>(I)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_e
    return-void
.end method

.method public static setCurrentVideoId(Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_79

    .line 364
    :try_start_2
    invoke-static {p0}, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_79

    .line 369
    :cond_9
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->currentVideoId:Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_27

    .line 372
    :cond_12
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->clearData()V

    .line 373
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;->sbEnabled()Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_28

    :goto_27
    return-void

    .line 379
    :cond_28
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->playerState()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;->isShortsOpen()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 380
    new-instance p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda28;

    invoke-direct {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda28;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 383
    :cond_3b
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 384
    new-instance p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda29;

    invoke-direct {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda29;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 388
    :cond_4a
    sput-object p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->currentVideoId:Ljava/lang/String;

    .line 389
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda30;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 391
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->channelWhitelist()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$ChannelWhitelistAdapter;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 392
    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$ChannelWhitelistAdapter;->isCurrentChannelWhitelisted()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 393
    new-instance p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda31;

    invoke-direct {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda31;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 394
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->maybeShowWhitelistToast()V

    return-void

    .line 398
    :cond_70
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda32;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void

    .line 365
    :cond_79
    :goto_79
    new-instance p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda27;

    invoke-direct {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda27;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_81} :catch_82

    return-void

    :catch_82
    move-exception p0

    .line 406
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda33;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setSeekbarRectangle(Landroid/graphics/Rect;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 1051
    :cond_3
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 1052
    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 1053
    sget v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->seekbarAbsoluteLeft:I

    if-ne v2, v0, :cond_f

    sget v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->seekbarAbsoluteRight:I

    if-eq v2, v1, :cond_1b

    .line 1054
    :cond_f
    new-instance v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda62;

    invoke-direct {v2, v0, v1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda62;-><init>(II)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 1055
    sput v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->seekbarAbsoluteLeft:I

    .line 1056
    sput v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->seekbarAbsoluteRight:I

    .line 1058
    :cond_1b
    iget v0, p0, Landroid/graphics/Rect;->top:I

    sput v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->seekbarAbsoluteTop:I

    .line 1059
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sput p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->seekbarAbsoluteBottom:I

    return-void
.end method

.method public static setSeekbarThickness(I)V
    .registers 1

    .line 1067
    sput p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->seekbarThickness:I

    return-void
.end method

.method private static setSegmentCurrentlyPlaying(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
    .registers 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_1d

    .line 721
    sget-object p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segmentCurrentlyPlaying:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-eqz p0, :cond_10

    .line 722
    new-instance p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_10
    const/4 p0, 0x0

    .line 724
    sput-object p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segmentCurrentlyPlaying:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 725
    sput-wide v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->skipSegmentButtonEndTime:J

    .line 726
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->ui()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;->hideSkipSegmentButton()V

    return-void

    .line 730
    :cond_1d
    sput-object p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segmentCurrentlyPlaying:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 731
    sput-wide v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->skipSegmentButtonEndTime:J

    .line 733
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;->autoHideSkipButton()Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 734
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 735
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->hiddenSkipSegmentsForCurrentVideoTime:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 737
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda3;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 739
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->ui()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;->setSkipSegment(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    .line 741
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->autoHideIsEnabledAndPlayerOverlayIsActive()Z

    move-result p0

    if-nez p0, :cond_59

    .line 742
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->ui()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;->hideSkipSegmentButton()V

    :cond_59
    return-void

    .line 746
    :cond_5a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->getSkipButtonDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    sput-wide v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->skipSegmentButtonEndTime:J

    .line 748
    :cond_65
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda4;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 749
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->ui()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;->showSkipSegmentButton(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    return-void
.end method

.method private static setSegments([Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
    .registers 6

    .line 253
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 254
    sput-object p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segments:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 255
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->calculateTimeWithoutSegments()V

    .line 257
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->includesHighlight()Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    iget-object v1, v0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->behaviour:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    sget-object v2, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->SKIP_AUTOMATICALLY:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    if-eq v1, v2, :cond_20

    iget-object v0, v0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->behaviour:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->MANUAL_SKIP:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    if-ne v0, v1, :cond_32

    .line 260
    :cond_20
    array-length v0, p0

    const/4 v1, 0x0

    :goto_22
    if-ge v1, v0, :cond_32

    aget-object v2, p0, v1

    .line 261
    iget-object v3, v2, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-object v4, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-ne v3, v4, :cond_2f

    .line 262
    sput-object v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->highlightSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    return-void

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_32
    const/4 p0, 0x0

    .line 267
    sput-object p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->highlightSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    return-void
.end method

.method public static setVideoTime(J)V
    .registers 21

    move-wide/from16 v0, p0

    .line 496
    :try_start_2
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;->sbEnabled()Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1bc

    .line 497
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->playerState()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;->isPlayerTypeNoneOrHidden()Z

    move-result v2

    if-nez v2, :cond_1bc

    sget-object v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segments:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-eqz v2, :cond_1bc

    array-length v2, v2

    if-eqz v2, :cond_1bc

    .line 499
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->isAdProgressTextVisible()Z

    move-result v2

    if-eqz v2, :cond_2d

    goto/16 :goto_1bc

    .line 502
    :cond_2d
    new-instance v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, v1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda5;-><init>(J)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 504
    invoke-static {v0, v1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->updateHiddenSegments(J)V

    .line 506
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->video()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;->getPlaybackSpeed()F

    move-result v2

    const/high16 v3, 0x44960000  # 1200.0f

    mul-float/2addr v3, v2

    float-to-long v3, v3

    add-long v5, v0, v3

    .line 521
    sget-object v7, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segments:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    array-length v8, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4c
    if-ge v11, v8, :cond_df

    aget-object v14, v7, v11

    .line 522
    iget-object v15, v14, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    iget-object v15, v15, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->behaviour:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    const/16 v16, 0x0

    sget-object v10, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->SHOW_IN_SEEKBAR:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    if-eq v15, v10, :cond_68

    iget-object v10, v14, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    iget-object v10, v10, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->behaviour:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    sget-object v15, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->IGNORE:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    if-eq v10, v15, :cond_68

    iget-object v10, v14, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-object v15, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-ne v10, v15, :cond_6d

    :cond_68
    :goto_68
    move-wide/from16 v17, v5

    const/4 v15, 0x0

    goto/16 :goto_d9

    .line 527
    :cond_6d
    iget-wide v9, v14, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->end:J

    cmp-long v9, v9, v0

    if-gtz v9, :cond_74

    goto :goto_68

    .line 531
    :cond_74
    invoke-static {v14, v0, v1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->shouldAutoSkipAndUndoSkipNotActive(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;J)Z

    move-result v9

    move-wide/from16 v17, v5

    .line 533
    iget-wide v5, v14, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    cmp-long v10, v5, v0

    if-gtz v10, :cond_a8

    if-eqz v9, :cond_87

    const/4 v15, 0x0

    .line 536
    invoke-static {v14, v15}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->skipSegment(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Z)V

    return-void

    :cond_87
    const/4 v15, 0x0

    if-eqz v12, :cond_90

    .line 541
    invoke-virtual {v12, v14}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->containsSegment(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Z

    move-result v5

    if-eqz v5, :cond_d9

    .line 546
    :cond_90
    sget-object v5, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segmentCurrentlyPlaying:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-eq v5, v14, :cond_a6

    const-wide/16 v5, 0x320

    .line 547
    invoke-virtual {v14, v0, v1, v5, v6}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->endIsNear(JJ)Z

    move-result v5

    if-nez v5, :cond_9d

    goto :goto_a6

    .line 550
    :cond_9d
    new-instance v5, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda8;

    invoke-direct {v5, v14}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda8;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    invoke-static {v5}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_d9

    :cond_a6
    :goto_a6
    move-object v12, v14

    goto :goto_d9

    :cond_a8
    const/4 v15, 0x0

    cmp-long v5, v17, v5

    if-gez v5, :cond_ae

    goto :goto_e1

    :cond_ae
    if-eqz v9, :cond_b2

    move-object v13, v14

    goto :goto_e1

    :cond_b2
    if-eqz v12, :cond_ba

    .line 572
    invoke-virtual {v12, v14}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->containsSegment(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Z

    move-result v5

    if-eqz v5, :cond_d9

    :cond_ba
    if-eqz v13, :cond_c2

    .line 574
    invoke-virtual {v13, v14}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->containsSegment(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Z

    move-result v5

    if-eqz v5, :cond_d9

    :cond_c2
    if-eqz v12, :cond_d8

    .line 580
    iget-wide v5, v14, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    const-wide/16 v9, 0x3e8

    .line 581
    invoke-virtual {v12, v5, v6, v9, v10}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->endIsNear(JJ)Z

    move-result v5

    if-nez v5, :cond_cf

    goto :goto_d8

    .line 584
    :cond_cf
    new-instance v5, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda9;

    invoke-direct {v5, v14}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda9;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    invoke-static {v5}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_d9

    :cond_d8
    :goto_d8
    move-object v13, v14

    :cond_d9
    :goto_d9
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v5, v17

    goto/16 :goto_4c

    :cond_df
    const/16 v16, 0x0

    .line 589
    :goto_e1
    sget-object v5, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->highlightSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_113

    .line 590
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->getSkipButtonDuration()J

    move-result-wide v8

    cmp-long v5, v0, v8

    if-ltz v5, :cond_10a

    sget-wide v8, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->highlightSegmentInitialShowEndTime:J

    cmp-long v5, v8, v6

    if-eqz v5, :cond_100

    .line 591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->highlightSegmentInitialShowEndTime:J

    cmp-long v5, v8, v10

    if-gez v5, :cond_100

    goto :goto_10a

    .line 594
    :cond_100
    sput-wide v6, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->highlightSegmentInitialShowEndTime:J

    .line 595
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->ui()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

    move-result-object v5

    invoke-interface {v5}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;->hideSkipHighlightButton()V

    goto :goto_113

    .line 592
    :cond_10a
    :goto_10a
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->ui()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

    move-result-object v5

    sget-object v8, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->highlightSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    invoke-interface {v5, v8}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;->showSkipHighlightButton(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    .line 599
    :cond_113
    :goto_113
    sget-object v5, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segmentCurrentlyPlaying:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-eq v5, v12, :cond_11b

    .line 600
    invoke-static {v12}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->setSegmentCurrentlyPlaying(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    goto :goto_147

    :cond_11b
    if-eqz v12, :cond_147

    .line 601
    sget-wide v8, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->skipSegmentButtonEndTime:J

    cmp-long v5, v8, v6

    if-eqz v5, :cond_147

    .line 603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-gtz v5, :cond_147

    .line 604
    new-instance v5, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda10;

    invoke-direct {v5}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v5}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 605
    sput-wide v6, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->skipSegmentButtonEndTime:J

    .line 606
    sget-object v5, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->hiddenSkipSegmentsForCurrentVideoTime:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->autoHideIsEnabledAndPlayerOverlayIsActive()Z

    move-result v5

    if-nez v5, :cond_147

    .line 610
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->ui()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

    move-result-object v5

    invoke-interface {v5}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;->hideSkipSegmentButton()V

    :cond_147
    :goto_147
    if-eqz v12, :cond_150

    .line 616
    invoke-virtual {v12, v0, v1, v3, v4}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->endIsNear(JJ)Z

    move-result v5

    if-eqz v5, :cond_150

    goto :goto_152

    :cond_150
    move-object/from16 v12, v16

    .line 620
    :goto_152
    sget-object v5, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->scheduledHideSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-eq v5, v12, :cond_17b

    if-nez v12, :cond_163

    .line 622
    new-instance v5, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda11;

    invoke-direct {v5}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {v5}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 623
    sput-object v16, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->scheduledHideSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    goto :goto_17b

    .line 625
    :cond_163
    sput-object v12, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->scheduledHideSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 626
    new-instance v5, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda12;

    invoke-direct {v5, v12, v2}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda12;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;F)V

    invoke-static {v5}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 627
    iget-wide v5, v12, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->end:J

    sub-long/2addr v5, v0

    long-to-float v5, v5

    div-float/2addr v5, v2

    float-to-long v5, v5

    .line 628
    new-instance v7, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda13;

    invoke-direct {v7, v12, v3, v4}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda13;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;J)V

    invoke-static {v7, v5, v6}, Lcom/gold/extension/shared/Utils;->runOnMainThreadDelayed(Ljava/lang/Runnable;J)V

    .line 657
    :cond_17b
    :goto_17b
    sget-object v5, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->scheduledUpcomingSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-eq v5, v13, :cond_1a4

    if-nez v13, :cond_18c

    .line 659
    new-instance v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda14;-><init>()V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 660
    sput-object v16, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->scheduledUpcomingSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    goto :goto_1a4

    .line 662
    :cond_18c
    sput-object v13, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->scheduledUpcomingSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 665
    new-instance v5, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda15;

    invoke-direct {v5, v13, v2}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda15;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;F)V

    invoke-static {v5}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 666
    iget-wide v5, v13, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    sub-long/2addr v5, v0

    long-to-float v5, v5

    div-float/2addr v5, v2

    float-to-long v5, v5

    .line 667
    new-instance v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda16;

    invoke-direct {v2, v13, v3, v4}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda16;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;J)V

    invoke-static {v2, v5, v6}, Lcom/gold/extension/shared/Utils;->runOnMainThreadDelayed(Ljava/lang/Runnable;J)V

    .line 697
    :cond_1a4
    :goto_1a4
    sget-object v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->undoAutoSkipRange:Landroid/util/Range;

    if-eqz v2, :cond_1bc

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_1bc

    .line 698
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 699
    sput-object v16, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->undoAutoSkipRange:Landroid/util/Range;
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1bc} :catch_1bd

    :cond_1bc
    :goto_1bc
    return-void

    :catch_1bd
    move-exception v0

    .line 702
    new-instance v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;
    .registers 1

    .line 189
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object v0

    return-object v0
.end method

.method private static shouldAutoSkipAndUndoSkipNotActive(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;J)Z
    .registers 3

    .line 860
    invoke-virtual {p0}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->shouldAutoSkip()Z

    move-result p0

    if-eqz p0, :cond_16

    sget-object p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->undoAutoSkipRange:Landroid/util/Range;

    if-eqz p0, :cond_14

    .line 861
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    if-nez p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldNotFadeOutPlayerOverlaySkipButton()Z
    .registers 5

    .line 870
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;->autoHideSkipButton()Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object v0

    .line 871
    sget-wide v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->skipSegmentButtonEndTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1f

    if-eqz v0, :cond_1f

    .line 872
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    return v0

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    return v0
.end method

.method private static showAutoSkipToast(Ljava/lang/String;Landroid/util/Range;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 922
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 925
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->playerState()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;->isInlineMinimal()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 928
    new-instance p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda41;

    invoke-direct {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda41;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 932
    :cond_19
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->ui()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;->overlayContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 934
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda42;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda42;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 938
    :cond_2c
    new-instance v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda43;

    invoke-direct {v1, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda43;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 940
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 941
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 v3, 0x0

    .line 943
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 945
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 946
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 947
    sget v5, Lcom/gold/extension/shared/ui/Dim;->dp16:I

    sget v6, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    invoke-virtual {v4, v5, v6, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    const/16 v5, 0x11

    .line 948
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 949
    sget v6, Lcom/gold/extension/shared/ui/Dim;->dp48:I

    invoke-virtual {v4, v6}, Landroid/view/View;->setMinimumHeight(I)V

    .line 951
    new-instance v6, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v7, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/high16 v8, 0x41a00000  # 20.0f

    .line 952
    invoke-static {v8}, Lcom/gold/extension/shared/ui/Dim;->roundedCorners(F)[F

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9, v9}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 953
    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-static {}, Lcom/gold/extension/shared/Utils;->getDialogBackgroundColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 954
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 956
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 957
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p0, 0x41600000  # 14.0f

    .line 958
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 959
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result p0

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 960
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 961
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 965
    iput v5, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 966
    invoke-virtual {v6, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 967
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p0, 0x3f4ccccd  # 0.8f

    .line 968
    invoke-virtual {v4, p0}, Landroid/view/View;->setAlpha(F)V

    .line 970
    const-string p0, "fade_duration_fast"

    invoke-static {p0}, Lcom/gold/extension/shared/ResourceUtils;->getInteger(Ljava/lang/String;)I

    move-result p0

    .line 971
    const-string v0, "fade_in"

    invoke-static {v0}, Lcom/gold/extension/shared/ResourceUtils;->getAnimation(Ljava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 972
    const-string v5, "fade_out"

    invoke-static {v5}, Lcom/gold/extension/shared/ResourceUtils;->getAnimation(Ljava/lang/String;)Landroid/view/animation/Animation;

    move-result-object v5

    int-to-long v6, p0

    .line 973
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 974
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 975
    new-instance p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$1;

    invoke-direct {p0, v1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v5, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 985
    new-instance p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda44;

    invoke-direct {p0, p1, v4, v5, v1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda44;-><init>(Landroid/util/Range;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/app/Dialog;)V

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 998
    invoke-virtual {v4, v2}, Landroid/view/View;->setClickable(Z)V

    .line 999
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1001
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_ef

    .line 1003
    invoke-virtual {p0, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    const/16 p1, 0x20

    .line 1004
    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    const/high16 p1, 0x40000

    .line 1005
    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    const/16 p1, 0x48

    const/16 v3, 0x3c

    const/16 v6, 0x50

    .line 1007
    invoke-static {p0, v6, p1, v3, v2}, Lcom/gold/extension/shared/Utils;->setDialogWindowParameters(Landroid/view/Window;IIIZ)V

    .line 1010
    :cond_ef
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->dismissUndoToast()Z

    move-result p0

    if-eqz p0, :cond_fd

    .line 1011
    new-instance p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda45;

    invoke-direct {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda45;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 1013
    :cond_fd
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->toastDialogRef:Ljava/lang/ref/WeakReference;

    .line 1015
    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1016
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1019
    new-instance p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda46;

    invoke-direct {p0, v1, v4, v5}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda46;-><init>(Landroid/app/Dialog;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;)V

    .line 1023
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->getToastDuration()J

    move-result-wide v0

    .line 1019
    invoke-static {p0, v0, v1}, Lcom/gold/extension/shared/Utils;->runOnMainThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static showSkippedSegmentToast(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
    .registers 3

    .line 876
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 877
    sput-object p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->toastSegmentSkipped:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 878
    sget p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->toastNumberOfSegmentsSkipped:I

    add-int/lit8 v0, p0, 0x1

    sput v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->toastNumberOfSegmentsSkipped:I

    if-lez p0, :cond_e

    return-void

    .line 884
    :cond_e
    new-instance p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda37;

    invoke-direct {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda37;-><init>()V

    const-wide/16 v0, 0xfa

    invoke-static {p0, v0, v1}, Lcom/gold/extension/shared/Utils;->runOnMainThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static skipSegment(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Z)V
    .registers 11

    .line 754
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->ui()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;->hideSkipHighlightButton()V

    .line 755
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->ui()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;->hideSkipSegmentButton()V

    .line 757
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 758
    sget-object v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->lastSegmentSkipped:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-ne v2, p0, :cond_39

    .line 764
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->video()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;->getPlaybackSpeed()F

    move-result v2

    const/high16 v3, 0x43fa0000  # 500.0f

    div-float/2addr v3, v2

    float-to-long v2, v3

    const-wide/16 v4, 0x1f4

    .line 763
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 765
    sget-wide v4, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->lastSegmentSkippedTime:J

    sub-long v4, v0, v4

    cmp-long v2, v4, v2

    if-gez v2, :cond_39

    .line 766
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda17;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 771
    :cond_39
    new-instance v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda18;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 772
    sput-object p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->lastSegmentSkipped:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 773
    sput-wide v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->lastSegmentSkippedTime:J

    const/4 v0, 0x0

    .line 774
    invoke-static {v0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->setSegmentCurrentlyPlaying(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    .line 775
    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->scheduledHideSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 776
    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->scheduledUpcomingSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 777
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->highlightSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-ne p0, v0, :cond_55

    const-wide/16 v0, 0x0

    .line 778
    sput-wide v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->highlightSegmentInitialShowEndTime:J

    .line 782
    :cond_55
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->undoAutoSkipRange:Landroid/util/Range;

    .line 783
    sget-object v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->undoAutoSkipRangeToast:Landroid/util/Range;

    .line 784
    invoke-virtual {p0}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->getUndoRange()Landroid/util/Range;

    move-result-object v2

    .line 785
    sget-object v3, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->undoAutoSkipRange:Landroid/util/Range;

    if-nez v3, :cond_6c

    .line 786
    new-instance v3, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda19;

    invoke-direct {v3, v2}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda19;-><init>(Landroid/util/Range;)V

    invoke-static {v3}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 787
    sput-object v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->undoAutoSkipRange:Landroid/util/Range;

    goto :goto_7a

    .line 789
    :cond_6c
    invoke-virtual {v3, v2}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    .line 790
    new-instance v3, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda20;

    invoke-direct {v3, v2}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda20;-><init>(Landroid/util/Range;)V

    invoke-static {v3}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 792
    sput-object v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->undoAutoSkipRange:Landroid/util/Range;

    .line 794
    :goto_7a
    sget-object v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->undoAutoSkipRange:Landroid/util/Range;

    sput-object v2, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->undoAutoSkipRangeToast:Landroid/util/Range;

    .line 797
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->video()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;

    move-result-object v2

    iget-wide v3, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->end:J

    invoke-interface {v2, v3, v4}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;->seekTo(J)Z

    move-result v2

    if-nez v2, :cond_97

    .line 800
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda21;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda21;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 803
    sput-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->undoAutoSkipRange:Landroid/util/Range;

    .line 804
    sput-object v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->undoAutoSkipRangeToast:Landroid/util/Range;

    return-void

    :cond_97
    const/4 v0, 0x1

    if-nez p1, :cond_e1

    .line 810
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;->toastOnSkip()Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 811
    sget-object v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segments:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, [Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b3
    if-ge v3, v2, :cond_e1

    aget-object v4, v1, v3

    .line 812
    iget-wide v5, v4, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->end:J

    iget-wide v7, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_c0

    goto :goto_de

    .line 819
    :cond_c0
    iget-wide v5, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->end:J

    iget-wide v7, v4, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_c9

    goto :goto_e1

    :cond_c9
    if-eq v4, p0, :cond_d7

    .line 823
    iget-object v5, v4, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-object v6, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-eq v5, v6, :cond_de

    .line 824
    invoke-virtual {p0, v4}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->containsSegment(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Z

    move-result v5

    if-eqz v5, :cond_de

    .line 825
    :cond_d7
    iput-boolean v0, v4, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->didAutoSkipped:Z

    if-eqz p1, :cond_de

    .line 827
    invoke-static {v4}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->showSkippedSegmentToast(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    :cond_de
    :goto_de
    add-int/lit8 v3, v3, 0x1

    goto :goto_b3

    .line 833
    :cond_e1
    :goto_e1
    iget-object p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->UNSUBMITTED:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-ne p1, v1, :cond_f2

    .line 834
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->removeUnsubmittedSegments()V

    .line 835
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->ui()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;->notifyNewSegmentPreviewed()V

    return-void

    .line 836
    :cond_f2
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object p1

    invoke-interface {p1}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->viewTrackingEnabled()Z

    move-result p1

    if-eqz p1, :cond_160

    .line 837
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->playerState()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;->isPaused()Z

    move-result p1

    if-nez p1, :cond_160

    iget-boolean p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->recordedAsSkipped:Z

    if-nez p1, :cond_160

    .line 839
    iput-boolean v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->recordedAsSkipped:Z

    .line 841
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;->localTimeSavedMilliseconds()Lcom/gold/extension/shared/settings/LongSetting;

    move-result-object p1

    if-eqz p1, :cond_12a

    .line 842
    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/LongSetting;->get()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/gold/extension/shared/settings/Setting;->save(Ljava/lang/Object;)V

    .line 843
    :cond_12a
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;->localTimeSavedNumberSegments()Lcom/gold/extension/shared/settings/IntegerSetting;

    move-result-object p1

    if-eqz p1, :cond_144

    .line 844
    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gold/extension/shared/settings/Setting;->save(Ljava/lang/Object;)V

    .line 846
    :cond_144
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;->trackSkipCount()Lcom/gold/extension/shared/settings/BooleanSetting;

    move-result-object p1

    if-eqz p1, :cond_158

    .line 847
    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_160

    .line 848
    :cond_158
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda22;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda22;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_160} :catch_161

    :cond_160
    return-void

    :catch_161
    move-exception p0

    .line 852
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda23;

    invoke-direct {p1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda23;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static ui()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;
    .registers 1

    .line 192
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->ui()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;

    move-result-object v0

    return-object v0
.end method

.method private static updateHiddenSegments(J)V
    .registers 4

    .line 710
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->hiddenSkipSegmentsForCurrentVideoTime:Ljava/util/List;

    new-instance v1, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0, p1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda39;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private static video()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;
    .registers 1

    .line 190
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->video()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static videoHasSegments()Z
    .registers 1

    .line 298
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->segments:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-eqz v0, :cond_9

    array-length v0, v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method
