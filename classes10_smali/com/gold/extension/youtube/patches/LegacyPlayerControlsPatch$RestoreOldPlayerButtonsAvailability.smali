.class public final Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch$RestoreOldPlayerButtonsAvailability;
.super Ljava/lang/Object;
.source "LegacyPlayerControlsPatch.java"

# interfaces
.implements Lcom/gold/extension/shared/settings/Setting$Availability;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RestoreOldPlayerButtonsAvailability"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .registers 1

    .line 22
    sget-boolean p0, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->IS_20_31_OR_GREATER:Z

    if-eqz p0, :cond_e

    const-string p0, "20.31.00"

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/spoof/SpoofAppVersionPatch;->isSpoofingToLessThan(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method
