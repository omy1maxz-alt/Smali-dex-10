.class public final Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch;
.super Ljava/lang/Object;
.source "HidePlayerOverlayButtonsPatch.java"


# static fields
.field public static final FULLSCREEN_HIDDEN_Y_OFFSET:I = 0x186a0

.field private static final HIDE_AUTOPLAY_BUTTON_ENABLED:Z

.field private static final HIDE_FULLSCREEN_BUTTON_ENABLED:Ljava/lang/Boolean;

.field private static final HIDE_PLAYER_PREVIOUS_NEXT_BUTTONS_ENABLED:Z

.field private static final PLAYER_CONTROL_NEXT_BUTTON_TOUCH_AREA_ID:I

.field private static final PLAYER_CONTROL_PREVIOUS_BUTTON_TOUCH_AREA_ID:I

.field private static final PLAYER_OVERFLOW_BUTTON_ID:I


# direct methods
.method public static synthetic $r8$lambda$2Rj1F-19JZXQsiiBm0ubZMigP2s()Ljava/lang/String;
    .registers 1

    .line 172
    const-string v0, "Could not find player previous/next button"

    return-object v0
.end method

.method public static synthetic $r8$lambda$ECPMcQ_dVfq0kZNH3Rkjt0l7qx4(Landroid/view/View;)V
    .registers 2

    .line 111
    sget v0, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch;->PLAYER_CONTROL_PREVIOUS_BUTTON_TOUCH_AREA_ID:I

    invoke-static {p0, v0}, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch;->hideView(Landroid/view/View;I)V

    .line 112
    sget v0, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch;->PLAYER_CONTROL_NEXT_BUTTON_TOUCH_AREA_ID:I

    invoke-static {p0, v0}, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch;->hideView(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GZj_qn_NrTqYT8Kn1_E9EHF7akM()Ljava/lang/String;
    .registers 1

    .line 176
    const-string v0, "Hiding previous/next button"

    return-object v0
.end method

.method public static synthetic $r8$lambda$KHtZ7ocsmepiFR4O2fQJSGJ_Wu4()Ljava/lang/String;
    .registers 1

    .line 162
    const-string v0, "removePlayerControlButtonsBackground failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$LTTagDDWM9I_KBHXoF5gPQwaYww(Landroid/view/ViewGroup$LayoutParams;)Ljava/lang/String;
    .registers 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown collapse button layout params: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gFiCiDTQmU0-rqsdhFy3CbnirwA(Landroid/view/ViewGroup$LayoutParams;)Ljava/lang/String;
    .registers 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown title anchor layout params: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rzYFFVd7LUaOzrLIQym0BcpLdEY(Landroid/view/View;)V
    .registers 2

    .line 127
    sget v0, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch;->PLAYER_OVERFLOW_BUTTON_ID:I

    invoke-static {p0, v0}, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch;->hideView(Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 19
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_AUTOPLAY_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch;->HIDE_AUTOPLAY_BUTTON_ENABLED:Z

    .line 20
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FULLSCREEN_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch;->HIDE_FULLSCREEN_BUTTON_ENABLED:Ljava/lang/Boolean;

    .line 91
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_PREVIOUS_NEXT_BUTTONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 92
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch;->HIDE_PLAYER_PREVIOUS_NEXT_BUTTONS_ENABLED:Z

    .line 94
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->ID:Lcom/gold/extension/shared/ResourceType;

    const-string v1, "player_control_previous_button_touch_area"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch;->PLAYER_CONTROL_PREVIOUS_BUTTON_TOUCH_AREA_ID:I

    .line 97
    const-string v1, "player_control_next_button_touch_area"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch;->PLAYER_CONTROL_NEXT_BUTTON_TOUCH_AREA_ID:I

    .line 117
    const-string v1, "player_overflow_button"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch;->PLAYER_OVERFLOW_BUTTON_ID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCastButtonOverride(Z)Z
    .registers 2

    .line 40
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CAST_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p0, 0x0

    :cond_d
    return p0
.end method

.method public static hideAutoplayButton()Z
    .registers 1

    .line 26
    sget-boolean v0, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch;->HIDE_AUTOPLAY_BUTTON_ENABLED:Z

    return v0
.end method

.method public static hideCaptionsButton(Landroid/widget/ImageView;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 53
    :cond_3
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CAPTIONS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x8

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static hideCastButton(I)I
    .registers 2

    .line 33
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_CAST_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 p0, 0x8

    :cond_e
    return p0
.end method

.method public static hideCollapseButton(Landroid/widget/ImageView;)V
    .registers 4

    .line 60
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COLLAPSE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const v0, 0x106000d

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 65
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 69
    instance-of v2, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_2b

    .line 70
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 71
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 73
    :cond_2b
    new-instance p0, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch$$ExternalSyntheticLambda2;

    invoke-direct {p0, v1}, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch$$ExternalSyntheticLambda2;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void
.end method

.method public static hideFullscreenButton(Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 3

    .line 134
    sget-object v0, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch;->HIDE_FULLSCREEN_BUTTON_ENABLED:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    return-object p0

    .line 138
    :cond_9
    sget-boolean v0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->RESTORE_OLD_PLAYER_BUTTONS:Z

    if-eqz v0, :cond_14

    const/16 v0, 0x8

    .line 139
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p0, 0x0

    return-object p0

    .line 146
    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    const v1, 0x47c35000  # 100000.0f

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setY(F)V

    return-object p0
.end method

.method public static hidePlayerControlButtonsBackground(Landroid/view/View;)Landroid/view/View;
    .registers 3

    .line 155
    :try_start_0
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_PLAYER_CONTROL_BUTTONS_BACKGROUND:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    return-object p0

    .line 160
    :cond_d
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch;->removeImageViewsBackgroundRecursive(Landroid/view/View;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception v0

    .line 162
    new-instance v1, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static hidePreviousNextButtons(Landroid/view/View;)V
    .registers 2

    .line 104
    sget-boolean v0, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch;->HIDE_PLAYER_PREVIOUS_NEXT_BUTTONS_ENABLED:Z

    if-nez v0, :cond_5

    return-void

    .line 110
    :cond_5
    new-instance v0, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch$$ExternalSyntheticLambda5;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static hideSettingsButton(Landroid/view/View;)V
    .registers 2

    .line 123
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_SETTINGS_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 127
    :cond_d
    new-instance v0, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch$$ExternalSyntheticLambda6;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static hideView(Landroid/view/View;I)V
    .registers 2

    .line 169
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_f

    .line 172
    new-instance p0, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 176
    :cond_f
    new-instance p1, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 p1, 0x1

    .line 177
    invoke-static {p1, p0}, Lcom/gold/extension/shared/Utils;->hideViewByRemovingFromParentUnderCondition(ZLandroid/view/View;)Z

    return-void
.end method

.method private static removeImageViewsBackgroundRecursive(Landroid/view/View;)V
    .registers 3

    .line 181
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    move-object v0, p0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 185
    :cond_b
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_22

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 186
    :goto_12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 187
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch;->removeImageViewsBackgroundRecursive(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_22
    return-void
.end method

.method public static setTitleAnchorStartMargin(Landroid/view/View;)V
    .registers 2

    .line 81
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_COLLAPSE_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 83
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 84
    instance-of v0, p0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1c

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    return-void

    .line 87
    :cond_1c
    new-instance v0, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/HidePlayerOverlayButtonsPatch$$ExternalSyntheticLambda3;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void
.end method
