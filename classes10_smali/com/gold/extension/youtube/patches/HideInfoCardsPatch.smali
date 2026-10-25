.class public Lcom/gold/extension/youtube/patches/HideInfoCardsPatch;
.super Ljava/lang/Object;
.source "HideInfoCardsPatch.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideInfoCardsIncognito(Landroid/view/View;)V
    .registers 2

    .line 10
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_INFO_CARDS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const/16 v0, 0x8

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static hideInfoCardsMethodCall()Z
    .registers 1

    .line 15
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_INFO_CARDS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
