.class public final Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton;
.super Ljava/lang/Object;
.source "VoiceOverTranslationButton.java"


# static fields
.field private static legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static overlayButtonRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5jcwMUmVnn6QBdzZq1W9ik6-yYM(Landroid/view/View;)Z
    .registers 1

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->show(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$ByRa649SrV6g0XQi4H71PEyHcOI()V
    .registers 0

    .line 0
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton;->refreshActivatedState()V

    return-void
.end method

.method public static synthetic $r8$lambda$L6RowDcINQD0tmnqnz8dAbmSHRA(Landroid/view/View;)V
    .registers 1

    .line 46
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->toggleTranslation()V

    .line 47
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton;->refreshActivatedState()V

    return-void
.end method

.method public static synthetic $r8$lambda$ODnJa3h2Qjh2L7aNxdnCOY9FY2w(Landroid/view/View;)V
    .registers 1

    .line 75
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->toggleTranslation()V

    .line 76
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton;->refreshActivatedState()V

    return-void
.end method

.method public static synthetic $r8$lambda$bIBhILJ2RRonHGs9KqCRmIQAGrs(Landroid/view/View;)Z
    .registers 1

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->show(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$dtZC636yZ-Tx3hPDQvozwtZZRUE()Ljava/lang/String;
    .registers 1

    .line 84
    const-string v0, "initializeLegacyButton failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$jcpCoTAmQXuJanwgTgCTgmlMXrY()Ljava/lang/String;
    .registers 1

    .line 56
    const-string v0, "initializeButton failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$kK3KYoboakxg9TCoCIbNWxUhkgQ()Ljava/lang/String;
    .registers 1

    .line 102
    const-string v0, "refreshActivatedState failure"

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeButton(Landroid/view/View;)V
    .registers 4

    .line 37
    :try_start_0
    sget-boolean v0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->RESTORE_OLD_PLAYER_BUTTONS:Z

    if-nez v0, :cond_37

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_37

    .line 39
    :cond_11
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->setOnTranslationStateChangeCallback(Ljava/lang/Runnable;)V

    .line 42
    const-string v0, "youtube_vot_bold"

    new-instance v1, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton$$ExternalSyntheticLambda5;-><init>()V

    new-instance v2, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p0, v0, v1, v2}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->addButton(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    sput-object v0, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton;->overlayButtonRef:Ljava/lang/ref/WeakReference;

    .line 54
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton;->refreshActivatedState()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    :cond_37
    :goto_37
    return-void

    :catch_38
    move-exception p0

    .line 56
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static initializeLegacyButton(Landroid/view/View;)V
    .registers 10

    .line 63
    :try_start_0
    sget-boolean v0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->RESTORE_OLD_PLAYER_BUTTONS:Z

    if-nez v0, :cond_5

    return-void

    .line 65
    :cond_5
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->setOnTranslationStateChangeCallback(Ljava/lang/Runnable;)V

    .line 68
    new-instance v1, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    const-string v3, "youtube_vot_button"

    const-string v5, "youtube_vot"

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 73
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;)V

    new-instance v7, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton$$ExternalSyntheticLambda2;-><init>()V

    new-instance v8, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton$$ExternalSyntheticLambda3;

    invoke-direct {v8}, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton$$ExternalSyntheticLambda3;-><init>()V

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    sput-object v1, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    .line 82
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton;->refreshActivatedState()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception v0

    move-object p0, v0

    .line 84
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static refreshActivatedState()V
    .registers 2

    .line 89
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 91
    :try_start_3
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->isSessionEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xff

    goto :goto_e

    :cond_c
    const/16 v0, 0x80

    .line 92
    :goto_e
    sget-object v1, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton;->overlayButtonRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_19

    .line 93
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    if-eqz v1, :cond_1f

    .line 95
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 97
    :cond_1f
    sget-object v1, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v1, :cond_26

    .line 99
    invoke-virtual {v1, v0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setImageAlpha(I)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_26} :catch_27

    :cond_26
    return-void

    :catch_27
    move-exception v0

    .line 102
    new-instance v1, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setVisibility(ZZ)V
    .registers 3

    .line 118
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0, p1}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibility(ZZ)V

    :cond_7
    return-void
.end method

.method public static setVisibilityImmediate(Z)V
    .registers 2

    .line 113
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibilityImmediate(Z)V

    :cond_7
    return-void
.end method

.method public static setVisibilityNegatedImmediate()V
    .registers 1

    .line 108
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/VoiceOverTranslationButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibilityNegatedImmediate()V

    :cond_7
    return-void
.end method
