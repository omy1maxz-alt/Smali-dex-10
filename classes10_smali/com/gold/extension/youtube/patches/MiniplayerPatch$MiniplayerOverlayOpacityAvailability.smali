.class public final Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerOverlayOpacityAvailability;
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
    name = "MiniplayerOverlayOpacityAvailability"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParentSettings()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/settings/Setting<",
            "*>;>;"
        }
    .end annotation

    .line 242
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_TYPE:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/ChangeFormFactorPatch$TabletLayoutInPlayerAvailability$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .registers 2

    .line 236
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->MINIPLAYER_TYPE:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    .line 237
    sget-object v0, Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;->MODERN_1:Lcom/gold/extension/youtube/patches/MiniplayerPatch$MiniplayerType;

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method
