.class public final Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerHideOverlayButtonsAvailability;
.super Ljava/lang/Object;
.source "MiniplayerPatch.java"

# interfaces
.implements Lcom/gold/extension/shared/settings/Setting$Availability;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/MiniplayerPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MiniplayerHideOverlayButtonsAvailability"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParentSettings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/settings/Setting<",
            "*>;>;"
        }
    .end annotation

    .line 213
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_TYPE:Lcom/gold/extension/shared/settings/EnumSetting;

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_DISABLE_DRAG_AND_DROP:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-static {p0, v0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .registers 2

    .line 207
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_TYPE:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    .line 208
    sget-object v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->MODERN_4:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    if-eq p0, v0, :cond_13

    sget-object v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->MODERN_3:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method
