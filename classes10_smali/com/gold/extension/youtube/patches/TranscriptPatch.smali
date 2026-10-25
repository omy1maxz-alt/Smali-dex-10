.class public Lcom/gold/extension/youtube/patches/TranscriptPatch;
.super Ljava/lang/Object;
.source "TranscriptPatch.java"


# static fields
.field private static final OVERRIDE_TRANSCRIPT_APP_VERSION:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->FIX_TRANSCRIPT:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "20.05.00"

    .line 9
    invoke-static {v0}, Lcom/gold/extension/youtube/patches/spoof/SpoofAppVersionPatch;->isSpoofingToLessThan(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    sput-boolean v0, Lcom/gold/extension/youtube/patches/TranscriptPatch;->OVERRIDE_TRANSCRIPT_APP_VERSION:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTranscriptAppVersionOverride(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 15
    sget-boolean v0, Lcom/gold/extension/youtube/patches/TranscriptPatch;->OVERRIDE_TRANSCRIPT_APP_VERSION:Z

    if-eqz v0, :cond_6

    .line 16
    const-string p0, "20.05.46"

    :cond_6
    return-object p0
.end method
