.class public Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton;
.super Ljava/lang/Object;
.source "CopyVideoLinkButton.java"


# static fields
.field private static final COPY_VIDEO_LINK_WITH_TIMESTAMP_BUTTON:Z

.field private static legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5ygZNUl6Y4abZ6ounqppsDXmH-I()Ljava/lang/String;
    .registers 1

    .line 80
    const-string v0, "initializeButton failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$HaA8CiVZ3UizgtxeDYm5ter97P8()Ljava/lang/String;
    .registers 1

    .line 122
    const-string v0, "Failed to generate video link"

    return-object v0
.end method

.method public static synthetic $r8$lambda$L-S1IlgCb0EgTs8asFJj0nkxye4()Ljava/lang/String;
    .registers 1

    .line 51
    const-string v0, "initializeButton failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$SzidzdzhUDvHz5dv4onB5MX0yXE(Landroid/view/View;)Z
    .registers 2

    .line 46
    sget-boolean p0, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton;->COPY_VIDEO_LINK_WITH_TIMESTAMP_BUTTON:Z

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton;->copyLink(Z)V

    return v0
.end method

.method public static synthetic $r8$lambda$YTiJq04uvD5zu9bPOtYa89CvsQ4(Landroid/view/View;)V
    .registers 1

    .line 44
    sget-boolean p0, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton;->COPY_VIDEO_LINK_WITH_TIMESTAMP_BUTTON:Z

    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton;->copyLink(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$aNd_hFIfIwNO9iXDjHbvFERwVLI(Landroid/view/View;)Z
    .registers 2

    .line 75
    sget-boolean p0, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton;->COPY_VIDEO_LINK_WITH_TIMESTAMP_BUTTON:Z

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton;->copyLink(Z)V

    return v0
.end method

.method public static synthetic $r8$lambda$pVkYJzk7LbukrrjJsY-PWtdVVks(Landroid/view/View;)V
    .registers 1

    .line 73
    sget-boolean p0, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton;->COPY_VIDEO_LINK_WITH_TIMESTAMP_BUTTON:Z

    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton;->copyLink(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 28
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->COPY_VIDEO_LINK_WITH_TIMESTAMP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton;->COPY_VIDEO_LINK_WITH_TIMESTAMP_BUTTON:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendCurrentVideoTimeInSeconds(ZLjava/lang/StringBuilder;)J
    .registers 12

    .line 127
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    if-eqz p0, :cond_43

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_43

    const-wide/16 v4, 0xe10

    .line 129
    div-long v4, v0, v4

    const-wide/16 v6, 0x3c

    .line 130
    div-long v8, v0, v6

    rem-long/2addr v8, v6

    .line 131
    rem-long v6, v0, v6

    .line 132
    const-string p0, "?t="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p0, v4, v2

    if-lez p0, :cond_2b

    .line 134
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "h"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    cmp-long p0, v8, v2

    if-lez p0, :cond_37

    .line 137
    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "m"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    cmp-long p0, v6, v2

    if-lez p0, :cond_43

    .line 140
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "s"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    return-wide v0
.end method

.method public static copyLink(Z)V
    .registers 7

    .line 107
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://youtu.be/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-static {p0, v0}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton;->appendCurrentVideoTimeInSeconds(ZLjava/lang/StringBuilder;)J

    move-result-wide v1

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->setClipboard(Ljava/lang/CharSequence;)V

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x20

    const-wide/16 v4, 0x0

    if-le v0, v3, :cond_29

    if-eqz p0, :cond_28

    cmp-long v0, v1, v4

    if-lez v0, :cond_28

    goto :goto_29

    :cond_28
    return-void

    :cond_29
    :goto_29
    if-eqz p0, :cond_36

    cmp-long p0, v1, v4

    if-lez p0, :cond_36

    .line 118
    const-string p0, "youtube_share_copy_link_with_timestamp_button_success"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3c

    .line 119
    :cond_36
    const-string p0, "youtube_share_copy_link_button_success"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 117
    :goto_3c
    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception p0

    .line 122
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static initializeButton(Landroid/view/View;)V
    .registers 4

    .line 38
    :try_start_0
    sget-boolean v0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->RESTORE_OLD_PLAYER_BUTTONS:Z

    if-nez v0, :cond_27

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->COPY_VIDEO_LINK_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_27

    .line 43
    :cond_11
    sget-boolean v0, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton;->COPY_VIDEO_LINK_WITH_TIMESTAMP_BUTTON:Z

    if-eqz v0, :cond_18

    const-string v0, "youtube_copy_timestamp_bold"

    goto :goto_1a

    :cond_18
    const-string v0, "youtube_copy_bold"

    :goto_1a
    new-instance v1, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda5;-><init>()V

    new-instance v2, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda6;-><init>()V

    .line 42
    invoke-static {p0, v0, v1, v2}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->addButton(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)Landroid/widget/ImageView;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    :cond_27
    :goto_27
    return-void

    :catch_28
    move-exception p0

    .line 51
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static initializeLegacyButton(Landroid/view/View;)V
    .registers 10

    .line 61
    :try_start_0
    sget-boolean v0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->RESTORE_OLD_PLAYER_BUTTONS:Z

    if-nez v0, :cond_5

    return-void

    .line 65
    :cond_5
    new-instance v1, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    const-string v3, "youtube_copy_video_link_button"

    .line 69
    sget-boolean v0, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton;->COPY_VIDEO_LINK_WITH_TIMESTAMP_BUTTON:Z

    if-eqz v0, :cond_11

    .line 70
    const-string v0, "youtube_copy_timestamp"

    :goto_f
    move-object v5, v0

    goto :goto_14

    .line 71
    :cond_11
    const-string v0, "youtube_copy"

    goto :goto_f

    :goto_14
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->COPY_VIDEO_LINK_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 72
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;)V

    new-instance v7, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda2;-><init>()V

    new-instance v8, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda3;

    invoke-direct {v8}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda3;-><init>()V

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    sput-object v1, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception v0

    move-object p0, v0

    .line 80
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setVisibility(ZZ)V
    .registers 3

    .line 102
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0, p1}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibility(ZZ)V

    :cond_7
    return-void
.end method

.method public static setVisibilityImmediate(Z)V
    .registers 2

    .line 95
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibilityImmediate(Z)V

    :cond_7
    return-void
.end method

.method public static setVisibilityNegatedImmediate()V
    .registers 1

    .line 88
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibilityNegatedImmediate()V

    :cond_7
    return-void
.end method
