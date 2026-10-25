.class public Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton;
.super Ljava/lang/Object;
.source "PlaybackSpeedDialogButton.java"


# static fields
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

.field private static final speedDecimalFormatter:Ljava/text/DecimalFormat;


# direct methods
.method public static synthetic $r8$lambda$6rGACStuyHQAXWDrxntfUAJmrVM(Landroid/view/View;)V
    .registers 2

    .line 108
    :try_start_0
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->RESTORE_OLD_SPEED_MENU:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 109
    invoke-static {}, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch;->showOldPlaybackSpeedMenu()V

    return-void

    .line 111
    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch;->showModernCustomPlaybackSpeedDialog(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p0

    .line 114
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EHA5OsEF9y83KHfupKSz-cIYbj8(Landroid/view/View;)Z
    .registers 2

    .line 92
    :try_start_0
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->PLAYBACK_SPEED_DEFAULT:Lcom/gold/extension/shared/settings/FloatSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/FloatSetting;->get()Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 93
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->REMEMBER_PLAYBACK_SPEED_LAST_SELECTED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 94
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getPlaybackSpeed()F

    move-result v0

    cmpl-float v0, v0, p0

    if-nez v0, :cond_20

    :cond_1e
    const/high16 p0, 0x3f800000  # 1.0f

    .line 97
    :cond_20
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/VideoInformation;->overridePlaybackSpeed(F)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_2d

    :catch_24
    move-exception p0

    .line 99
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :goto_2d
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$M3iNNdAWwqGYeBwZdpedPfXEuis(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Updated playback speed button text to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$R8fmSWkRszXEMMTN5pCbi0WgaAU()Ljava/lang/String;
    .registers 1

    .line 99
    const-string v0, "speed button long click failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$TrnBzNPoSrONwbeqGbJoUZzaU1Y()Ljava/lang/String;
    .registers 1

    .line 171
    const-string v0, "updateButtonAppearance failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$nUMw-EWvrtLOePO28TR_jCMyx7A()Ljava/lang/String;
    .registers 1

    .line 85
    const-string v0, "initializeButton failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$p3y28yx_IWXKuLqjl0R-5HIaEps()Ljava/lang/String;
    .registers 1

    .line 114
    const-string v0, "speed button onClick failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$z18CGqqddqLfrWhmrsOcTXV8l_E()Ljava/lang/String;
    .registers 1

    .line 61
    const-string v0, "initializeButton failure"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton;->overlayTextRef:Ljava/lang/ref/WeakReference;

    .line 37
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton;->speedDecimalFormatter:Ljava/text/DecimalFormat;

    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    const/4 v1, 0x2

    .line 40
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOnClickListener()Landroid/view/View$OnClickListener;
    .registers 1

    .line 106
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method private static getOnLongClickListener()Landroid/view/View$OnLongClickListener;
    .registers 1

    .line 90
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method public static initializeButton(Landroid/view/View;)V
    .registers 4

    .line 48
    :try_start_0
    sget-boolean v0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->RESTORE_OLD_PLAYER_BUTTONS:Z

    if-nez v0, :cond_27

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->PLAYBACK_SPEED_DIALOG_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_27

    .line 52
    :cond_11
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 54
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 55
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    .line 52
    invoke-static {p0, v1, v2}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->addButtonWithTextOverlay(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)Landroid/widget/TextView;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton;->overlayTextRef:Ljava/lang/ref/WeakReference;

    .line 59
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton;->updateButtonAppearance()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    :cond_27
    :goto_27
    return-void

    :catch_28
    move-exception p0

    .line 61
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static initializeLegacyButton(Landroid/view/View;)V
    .registers 11

    .line 67
    :try_start_0
    sget-boolean v0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->RESTORE_OLD_PLAYER_BUTTONS:Z

    if-nez v0, :cond_5

    return-void

    .line 71
    :cond_5
    new-instance v1, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    const-string v3, "youtube_playback_speed_dialog_button_container"

    const-string v4, "youtube_playback_speed_dialog_button"

    const-string v5, "youtube_playback_speed_dialog_button_text"

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->PLAYBACK_SPEED_DIALOG_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 77
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;)V

    .line 78
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v8

    .line 79
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v9

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    sput-object v1, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    .line 83
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton;->updateButtonAppearance()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception v0

    move-object p0, v0

    .line 85
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setVisibility(ZZ)V
    .registers 3

    .line 141
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    .line 142
    invoke-virtual {v0, p0, p1}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibility(ZZ)V

    :cond_7
    return-void
.end method

.method public static setVisibilityImmediate(Z)V
    .registers 2

    .line 132
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    .line 133
    invoke-virtual {v0, p0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibilityImmediate(Z)V

    :cond_7
    return-void
.end method

.method public static setVisibilityNegatedImmediate()V
    .registers 1

    .line 123
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    .line 124
    invoke-virtual {v0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibilityNegatedImmediate()V

    :cond_7
    return-void
.end method

.method private static updateButtonAppearance()V
    .registers 3

    .line 158
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 160
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton;->speedDecimalFormatter:Ljava/text/DecimalFormat;

    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getPlaybackSpeed()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 161
    sget-object v1, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v1, :cond_15

    .line 162
    invoke-virtual {v1, v0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setTextOverlay(Ljava/lang/CharSequence;)V

    .line 165
    :cond_15
    sget-object v1, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton;->overlayTextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_22

    .line 167
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_22
    new-instance v1, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    move-exception v0

    .line 171
    new-instance v1, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static videoSpeedChanged(F)V
    .registers 1

    .line 150
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/PlaybackSpeedDialogButton;->updateButtonAppearance()V

    return-void
.end method
