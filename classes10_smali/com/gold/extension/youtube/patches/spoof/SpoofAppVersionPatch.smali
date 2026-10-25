.class public Lcom/gold/extension/youtube/patches/spoof/SpoofAppVersionPatch;
.super Ljava/lang/Object;
.source "SpoofAppVersionPatch.java"


# static fields
.field private static final DISABLE_BOLD_ICONS:Z

.field private static final SPOOF_APP_VERSION_ENABLED:Z

.field private static final SPOOF_APP_VERSION_TARGET:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SPOOF_APP_VERSION:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/spoof/SpoofAppVersionPatch;->SPOOF_APP_VERSION_ENABLED:Z

    .line 9
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SPOOF_APP_VERSION_TARGET:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/spoof/SpoofAppVersionPatch;->SPOOF_APP_VERSION_TARGET:Ljava/lang/String;

    .line 11
    const-string v0, "20.30.00"

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/spoof/SpoofAppVersionPatch;->isSpoofingToLessThan(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/spoof/SpoofAppVersionPatch;->DISABLE_BOLD_ICONS:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableShortsBoldIcons(Z)Z
    .registers 2

    .line 34
    sget-boolean v0, Lcom/gold/extension/youtube/patches/spoof/SpoofAppVersionPatch;->DISABLE_BOLD_ICONS:Z

    if-nez v0, :cond_8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static getShortsAppVersionOverride(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 45
    sget-boolean v0, Lcom/gold/extension/youtube/patches/spoof/SpoofAppVersionPatch;->DISABLE_BOLD_ICONS:Z

    if-eqz v0, :cond_6

    .line 46
    const-string p0, "20.30.40"

    :cond_6
    return-object p0
.end method

.method public static getUniversalAppVersionOverride(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 20
    sget-boolean v0, Lcom/gold/extension/youtube/patches/spoof/SpoofAppVersionPatch;->SPOOF_APP_VERSION_ENABLED:Z

    if-eqz v0, :cond_6

    .line 21
    sget-object p0, Lcom/gold/extension/youtube/patches/spoof/SpoofAppVersionPatch;->SPOOF_APP_VERSION_TARGET:Ljava/lang/String;

    :cond_6
    return-object p0
.end method

.method public static isSpoofingToLessThan(Ljava/lang/String;)Z
    .registers 2

    .line 26
    sget-boolean v0, Lcom/gold/extension/youtube/patches/spoof/SpoofAppVersionPatch;->SPOOF_APP_VERSION_ENABLED:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/gold/extension/youtube/patches/spoof/SpoofAppVersionPatch;->SPOOF_APP_VERSION_TARGET:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method
