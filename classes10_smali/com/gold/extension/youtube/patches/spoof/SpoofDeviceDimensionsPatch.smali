.class public Lcom/gold/extension/youtube/patches/spoof/SpoofDeviceDimensionsPatch;
.super Ljava/lang/Object;
.source "SpoofDeviceDimensionsPatch.java"


# static fields
.field private static final SPOOF:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SPOOF_DEVICE_DIMENSIONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/spoof/SpoofDeviceDimensionsPatch;->SPOOF:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxHeightOrWidth(I)I
    .registers 2

    .line 15
    sget-boolean v0, Lcom/gold/extension/youtube/patches/spoof/SpoofDeviceDimensionsPatch;->SPOOF:Z

    if-eqz v0, :cond_6

    const/16 p0, 0x1000

    :cond_6
    return p0
.end method

.method public static getMinHeightOrWidth(I)I
    .registers 2

    .line 11
    sget-boolean v0, Lcom/gold/extension/youtube/patches/spoof/SpoofDeviceDimensionsPatch;->SPOOF:Z

    if-eqz v0, :cond_6

    const/16 p0, 0x40

    :cond_6
    return p0
.end method
