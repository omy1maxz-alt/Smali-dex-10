.class public final Lcom/gold/extension/youtube/patches/components/InfoCardsFilter;
.super Lcom/gold/extension/shared/patches/components/Filter;
.source "InfoCardsFilter.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 11
    invoke-direct {p0}, Lcom/gold/extension/shared/patches/components/Filter;-><init>()V

    .line 12
    new-instance v0, Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->HIDE_INFO_CARDS:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "info_card_teaser_overlay.e"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    filled-new-array {v0}, [Lcom/gold/extension/shared/patches/components/StringFilterGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/patches/components/Filter;->addIdentifierCallbacks([Lcom/gold/extension/shared/patches/components/StringFilterGroup;)V

    return-void
.end method
