.class public Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;
.super Ljava/lang/Object;
.source "VideoQualityDialogButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter;
    }
.end annotation


# static fields
.field private static currentOverlayText:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static overlayTextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3pH8I-VKOy2iuVEfkRe5zQBqfLc(Landroid/text/SpannableStringBuilder;)Ljava/lang/String;
    .registers 3

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring stale button text update of: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7_UV8fX6blUPWt06TvtLC_5A-VI()Ljava/lang/String;
    .registers 1

    .line 350
    const-string v0, "showVideoQualityDialog failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$9lSay3d8k6U5UOVCMOwDXkpooM0()Ljava/lang/String;
    .registers 1

    .line 142
    const-string v0, "Cannot reset quality, videoQualities is null"

    return-object v0
.end method

.method public static synthetic $r8$lambda$BeuQMCbpwn5XTiM--252f8piGjU([Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    add-int/lit8 p4, p4, 0x1

    .line 335
    :try_start_2
    aget-object p0, p0, p4

    .line 336
    invoke-interface {p0}, Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;->patch_getResolution()I

    move-result p2

    invoke-static {p2}, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch;->userChangedQuality(I)V

    .line 337
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/VideoInformation;->changeQuality(Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)V

    .line 339
    invoke-virtual {p1}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->dismiss()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p0

    .line 341
    new-instance p1, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E05MZebYreYRrfGZxdJnbi3lWLY()Ljava/lang/String;
    .registers 1

    .line 341
    const-string v0, "Video quality selection failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$E1E3IR2C-aOQmXS_ZJudrIndPoc()Ljava/lang/String;
    .registers 1

    .line 162
    const-string v0, "Video quality button reset failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$FTdPsNedaW8Ao415fg3I8VXxISU()Ljava/lang/String;
    .registers 1

    .line 249
    const-string v0, "Cannot show qualities dialog, videoQualities is null"

    return-object v0
.end method

.method public static synthetic $r8$lambda$IcrCvVCW5DS96SkZdQDUtfE9f8s()Ljava/lang/String;
    .registers 1

    .line 237
    const-string v0, "updateButtonText failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$JwD_9zgtAZA1bVLscTVZpkgVyh0(Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)Lkotlin/Unit;
    .registers 1

    .line 72
    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->updateButtonText(Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)V

    .line 73
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic $r8$lambda$Q1HTG3RIp4u-aB7agzAX93FTc9E(Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)Ljava/lang/String;
    .registers 3

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Resetting quality to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WnfPdTw5dMQYBuUIxqx2qWS7qTU()Ljava/lang/String;
    .registers 1

    .line 132
    const-string v0, "Video quality button onClick failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$ZUYAe6BKjKqT6LXXqBPUdOzkiTc()Ljava/lang/String;
    .registers 1

    .line 254
    const-string v0, "Cannot show qualities dialog, no qualities available"

    return-object v0
.end method

.method public static synthetic $r8$lambda$ZzgnaSCv7yHyTeuBVRzO3yR-E4o()Ljava/lang/String;
    .registers 1

    .line 95
    const-string v0, "initializeButton failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$eXN6JqpRb4edyNmAoCHsLZy_mV8(Landroid/view/View;)V
    .registers 2

    .line 130
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->showVideoQualityDialog(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 132
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fzKpkf87vp4csIhH_vyfJYPUFbw()Ljava/lang/String;
    .registers 1

    .line 122
    const-string v0, "initializeButton failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$s1Tfaehy5MVSLMhiFZb05pMU4dw(Landroid/text/SpannableStringBuilder;Landroid/widget/TextView;)V
    .registers 3

    .line 229
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->currentOverlayText:Ljava/lang/CharSequence;

    if-eq v0, p0, :cond_d

    .line 230
    new-instance p1, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda3;-><init>(Landroid/text/SpannableStringBuilder;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    :cond_d
    if-eqz p1, :cond_12

    .line 233
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :cond_12
    sget-object p1, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz p1, :cond_19

    invoke-virtual {p1, p0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setTextOverlay(Ljava/lang/CharSequence;)V

    :cond_19
    return-void
.end method

.method public static synthetic $r8$lambda$tp50OZGXa1ZG5jMLdqTzzotpjTI(Landroid/view/View;)Z
    .registers 10

    const/4 v0, 0x0

    .line 140
    :try_start_1
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getCurrentQualities()[Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_13

    .line 142
    new-instance p0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda7;

    invoke-direct {p0}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return v2

    :catch_11
    move-exception p0

    goto :goto_3d

    .line 147
    :cond_13
    invoke-static {}, Lcom/gold/extension/youtube/patches/playback/quality/RememberVideoQualityPatch;->getDefaultQualityResolution()I

    move-result v3

    .line 148
    array-length v4, v1

    move v5, v0

    :goto_19
    if-ge v5, v4, :cond_35

    aget-object v6, v1, v5

    .line 149
    invoke-interface {v6}, Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;->patch_getResolution()I

    move-result v7

    const/4 v8, -0x2

    if-eq v7, v8, :cond_32

    if-gt v7, v3, :cond_32

    .line 151
    new-instance p0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda8;

    invoke-direct {p0, v6}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda8;-><init>(Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 152
    invoke-static {v6}, Lcom/gold/extension/youtube/patches/VideoInformation;->changeQuality(Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)V

    return v2

    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 159
    :cond_35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->showVideoQualityDialog(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3c} :catch_11

    return v2

    .line 162
    :goto_3d
    new-instance v1, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->overlayTextRef:Ljava/lang/ref/WeakReference;

    .line 71
    sget-object v0, Lcom/gold/extension/youtube/patches/VideoInformation;->onQualityChange:Lcom/gold/extension/youtube/shared/Event;

    new-instance v1, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gold/extension/youtube/shared/Event;->addObserver(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOnClickListener()Landroid/view/View$OnClickListener;
    .registers 1

    .line 128
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda15;-><init>()V

    return-object v0
.end method

.method private static getOnLongClickListener()Landroid/view/View$OnLongClickListener;
    .registers 1

    .line 138
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda14;-><init>()V

    return-object v0
.end method

.method private static getTextView(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/widget/TextView;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 356
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 357
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p0, 0x41800000  # 16.0f

    .line 358
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 360
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p1, -0x2

    invoke-direct {p0, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 363
    sget p1, Lcom/gold/extension/shared/ui/Dim;->dp12:I

    sget v1, Lcom/gold/extension/shared/ui/Dim;->dp16:I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 364
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static initializeButton(Landroid/view/View;)V
    .registers 4

    .line 82
    :try_start_0
    sget-boolean v0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->RESTORE_OLD_PLAYER_BUTTONS:Z

    if-nez v0, :cond_2b

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VIDEO_QUALITY_DIALOG_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2b

    .line 86
    :cond_11
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 88
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 89
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    .line 86
    invoke-static {p0, v1, v2}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->addButtonWithTextOverlay(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)Landroid/widget/TextView;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->overlayTextRef:Ljava/lang/ref/WeakReference;

    .line 93
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getCurrentQuality()Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->updateButtonText(Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    :cond_2b
    :goto_2b
    return-void

    :catch_2c
    move-exception p0

    .line 95
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda16;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static initializeLegacyButton(Landroid/view/View;)V
    .registers 11

    .line 104
    :try_start_0
    sget-boolean v0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->RESTORE_OLD_PLAYER_BUTTONS:Z

    if-nez v0, :cond_5

    return-void

    .line 108
    :cond_5
    new-instance v1, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    const-string v3, "youtube_video_quality_dialog_button_container"

    const-string v4, "youtube_video_quality_dialog_button"

    const-string v5, "youtube_video_quality_dialog_button_text"

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VIDEO_QUALITY_DIALOG_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 114
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;)V

    .line 115
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v8

    .line 116
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v9

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    sput-object v1, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    .line 120
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getCurrentQuality()Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->updateButtonText(Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    return-void

    :catch_2e
    move-exception v0

    move-object p0, v0

    .line 122
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setVisibility(ZZ)V
    .registers 3

    .line 190
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    .line 191
    invoke-virtual {v0, p0, p1}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibility(ZZ)V

    :cond_7
    return-void
.end method

.method public static setVisibilityImmediate(Z)V
    .registers 2

    .line 181
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    .line 182
    invoke-virtual {v0, p0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibilityImmediate(Z)V

    :cond_7
    return-void
.end method

.method public static setVisibilityNegatedImmediate()V
    .registers 1

    .line 172
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    .line 173
    invoke-virtual {v0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibilityNegatedImmediate()V

    :cond_7
    return-void
.end method

.method private static showVideoQualityDialog(Landroid/content/Context;)V
    .registers 14

    .line 246
    const-string v0, "   "

    :try_start_2
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getCurrentQualities()[Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

    move-result-object v1

    .line 247
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getCurrentQuality()Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

    move-result-object v2

    if-eqz v1, :cond_10d

    if-nez v2, :cond_10

    goto/16 :goto_10d

    .line 252
    :cond_10
    array-length v3, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1d

    .line 254
    new-instance p0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda11;

    invoke-direct {p0}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 260
    :cond_1d
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move v6, v4

    :goto_21
    if-ge v6, v3, :cond_39

    aget-object v7, v1, v6

    .line 261
    invoke-interface {v7}, Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;->patch_getQualityName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;->patch_getQualityName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    goto :goto_39

    :cond_34
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 267
    :cond_39
    :goto_39
    new-instance v3, Ljava/util/ArrayList;

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 268
    array-length v6, v1

    move v7, v4

    :goto_43
    if-ge v7, v6, :cond_58

    aget-object v8, v1, v7

    .line 269
    invoke-interface {v8}, Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;->patch_getResolution()I

    move-result v9

    const/4 v10, -0x2

    if-eq v9, v10, :cond_55

    .line 270
    invoke-interface {v8}, Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;->patch_getQualityName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_55
    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    .line 276
    :cond_58
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->getDialogBackgroundColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/gold/extension/shared/ui/SheetBottomDialog;->createMainLayout(Landroid/content/Context;Ljava/lang/Integer;)Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;

    move-result-object v6

    .line 279
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 280
    const-string v8, "video_quality_quick_menu_title"

    invoke-static {v8}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 281
    const-string v9, "video_quality_title_seperator"

    invoke-static {v9}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 284
    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 285
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    .line 286
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 288
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v11, 0x21

    .line 285
    invoke-virtual {v7, v10, v4, v8, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 291
    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 294
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 295
    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 297
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result v8

    const v10, 0x3fcccccd  # 1.6f

    const v12, 0x3f19999a  # 0.6f

    .line 296
    invoke-static {v8, v10, v12}, Lcom/gold/extension/shared/Utils;->adjustColorBrightness(IFF)I

    move-result v8

    .line 298
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v10, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 301
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v4

    .line 298
    invoke-virtual {v7, v10, v4, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 304
    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 307
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 308
    invoke-interface {v2}, Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;->patch_getQualityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 309
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 312
    invoke-interface {v2}, Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;->patch_getQualityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    .line 309
    invoke-virtual {v7, v4, v0, v2, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 317
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_FLYOUT_QUALITY_HEADER:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e1

    .line 318
    invoke-static {p0, v7}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->getTextView(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/widget/TextView;

    move-result-object v0

    .line 319
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 323
    :cond_e1
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 324
    new-instance v2, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter;

    invoke-direct {v2, p0, v3}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 325
    invoke-static {v2, v5}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter;->-$$Nest$msetSelectedPosition(Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$CustomQualityAdapter;I)V

    .line 326
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v2, 0x0

    .line 327
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 330
    sget v2, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->fadeInDuration:I

    invoke-static {p0, v6, v2}, Lcom/gold/extension/shared/ui/SheetBottomDialog;->createSlideDialog(Landroid/content/Context;Landroid/view/View;I)Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    move-result-object p0

    .line 332
    new-instance v2, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda12;

    invoke-direct {v2, v1, p0}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda12;-><init>([Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 345
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 347
    invoke-static {p0}, Lcom/gold/extension/youtube/shared/PipDismissHelper;->dismissOnPip(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    .line 348
    invoke-virtual {p0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->show()V

    return-void

    .line 249
    :cond_10d
    :goto_10d
    new-instance p0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda10;

    invoke-direct {p0}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_115} :catch_116

    return-void

    :catch_116
    move-exception p0

    .line 350
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static updateButtonText(Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)V
    .registers 6
    .param p0  # Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 200
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 202
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->overlayTextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_12

    .line 203
    sget-object v1, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-nez v1, :cond_12

    return-void

    :cond_12
    const/4 v1, -0x2

    if-nez p0, :cond_17

    move v2, v1

    goto :goto_1b

    .line 207
    :cond_17
    invoke-interface {p0}, Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;->patch_getResolution()I

    move-result v2

    .line 209
    :goto_1b
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eq v2, v1, :cond_57

    const/16 v1, 0x90

    if-eq v2, v1, :cond_54

    const/16 v1, 0xf0

    if-eq v2, v1, :cond_54

    const/16 v1, 0x168

    if-eq v2, v1, :cond_54

    const/16 v1, 0x1e0

    if-eq v2, v1, :cond_51

    const/16 v1, 0x2d0

    if-eq v2, v1, :cond_4e

    const/16 v1, 0x438

    if-eq v2, v1, :cond_4b

    const/16 v1, 0x5a0

    if-eq v2, v1, :cond_48

    const/16 v1, 0x870

    if-eq v2, v1, :cond_45

    .line 218
    const-string v1, "?"

    goto :goto_59

    .line 217
    :cond_45
    const-string v1, "4K"

    goto :goto_59

    .line 216
    :cond_48
    const-string v1, "QHD"

    goto :goto_59

    .line 215
    :cond_4b
    const-string v1, "FHD"

    goto :goto_59

    .line 214
    :cond_4e
    const-string v1, "HD"

    goto :goto_59

    .line 213
    :cond_51
    const-string v1, "SD"

    goto :goto_59

    .line 212
    :cond_54
    const-string v1, "LD"

    goto :goto_59

    .line 211
    :cond_57
    const-string v1, ""

    .line 220
    :goto_59
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz p0, :cond_73

    .line 222
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/VideoInformation;->isPremiumVideoQuality(Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)Z

    move-result p0

    if-eqz p0, :cond_73

    .line 224
    new-instance p0, Landroid/text/style/UnderlineSpan;

    invoke-direct {p0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x21

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 227
    :cond_73
    sput-object v3, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->currentOverlayText:Ljava/lang/CharSequence;

    .line 228
    new-instance p0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda5;

    invoke-direct {p0, v3, v0}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda5;-><init>(Landroid/text/SpannableStringBuilder;Landroid/widget/TextView;)V

    const-wide/16 v0, 0x64

    invoke-static {p0, v0, v1}, Lcom/gold/extension/shared/Utils;->runOnMainThreadDelayed(Ljava/lang/Runnable;J)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7f} :catch_80

    return-void

    :catch_80
    move-exception p0

    .line 237
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method
