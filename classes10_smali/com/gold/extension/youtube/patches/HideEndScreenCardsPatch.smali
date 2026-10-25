.class public Lcom/gold/extension/youtube/patches/HideEndScreenCardsPatch;
.super Ljava/lang/Object;
.source "HideEndScreenCardsPatch.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideEndScreenCardView(Landroid/view/View;)V
    .registers 2

    .line 15
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_END_SCREEN_CARDS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Utils;->hideViewUnderCondition(Lcom/gold/extension/shared/settings/BooleanSetting;Landroid/view/View;)V

    return-void
.end method

.method public static hideEndScreenCards()Z
    .registers 1

    .line 22
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_END_SCREEN_CARDS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
