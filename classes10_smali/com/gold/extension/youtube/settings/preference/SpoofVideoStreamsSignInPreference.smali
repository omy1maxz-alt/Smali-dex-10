.class public final Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSignInPreference;
.super Lcom/gold/extension/shared/settings/preference/OAuth2Preference;
.source "SpoofVideoStreamsSignInPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public isSettingEnabled()Z
    .registers 1

    .line 30
    sget-object p0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SPOOF_VIDEO_STREAMS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1a

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SPOOF_VIDEO_STREAMS_CLIENT_TYPE:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 31
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/spoof/ClientType;

    iget-boolean p0, p0, Lcom/gold/extension/shared/spoof/ClientType;->supportsOAuth2:Z

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method
