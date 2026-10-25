.class public Lcom/gold/extension/youtube/patches/DisableFullscreenGesturesPatch;
.super Ljava/lang/Object;
.source "DisableFullscreenGesturesPatch.java"


# direct methods
.method public static synthetic $r8$lambda$UCDkGuYOML1tNXlHw73Ki3JnQDo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The next player gesture will be: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableFullscreenGestures(Ljava/lang/String;)Z
    .registers 2

    .line 23
    new-instance v0, Lcom/gold/extension/youtube/patches/DisableFullscreenGesturesPatch$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/DisableFullscreenGesturesPatch$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 24
    const-string v0, "MAXIMIZED_PULLED_UP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_FULLSCREEN_PULLED_UP_GESTURE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 25
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_44

    :cond_1c
    const-string v0, "MAXIMIZED_TO_FULLSCREEN_SLIDING"

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_FULLSCREEN_SLIDING_GESTURE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 27
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_44

    :cond_30
    const-string v0, "FULLSCREEN_DRAGGED_DOWN"

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_FULLSCREEN_DRAGGED_DOWN_GESTURE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 29
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_46

    :cond_44
    const/4 p0, 0x1

    return p0

    :cond_46
    const/4 p0, 0x0

    return p0
.end method
