.class public Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference;
.super Landroid/preference/Preference;
.source "SpoofVideoStreamsSideEffectsPreference.java"


# instance fields
.field private currentClientType:Lcom/gold/extension/shared/spoof/ClientType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public static synthetic $r8$lambda$BBmrKWHRPL5ki3LynuYiZCD4oi4()Ljava/lang/String;
    .registers 1

    .line 90
    const-string v0, "Updating spoof stream side effects preference"

    return-object v0
.end method

.method public static synthetic $r8$lambda$cZ7-bldfblyTLdx4sZiOx8ZiB4o(Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference;->updateUI()V

    return-void
.end method

.method public static synthetic $r8$lambda$edhqbtzi0uFkuV2QrqbtHunX5DM(Lcom/gold/extension/shared/spoof/ClientType;)Ljava/lang/String;
    .registers 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown client: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hRrOjkkMQxX5vvb-HmfA2Yhv--c(Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference;->lambda$new$0(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance p1, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference;)V

    iput-object p1, p0, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance p1, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference;)V

    iput-object p1, p0, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance p1, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference;)V

    iput-object p1, p0, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    new-instance p1, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference;)V

    iput-object p1, p0, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method private addChangeListener()V
    .registers 2

    .line 63
    sget-object v0, Lcom/gold/extension/shared/settings/Setting;->preferences:Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    iget-object v0, v0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 43
    new-instance p1, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference$$ExternalSyntheticLambda3;-><init>(Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeChangeListener()V
    .registers 2

    .line 67
    sget-object v0, Lcom/gold/extension/shared/settings/Setting;->preferences:Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    iget-object v0, v0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method private updateUI()V
    .registers 7

    .line 84
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SPOOF_VIDEO_STREAMS_CLIENT_TYPE:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/shared/spoof/ClientType;

    .line 85
    iget-object v1, p0, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference;->currentClientType:Lcom/gold/extension/shared/spoof/ClientType;

    if-ne v1, v0, :cond_d

    return-void

    .line 88
    :cond_d
    iput-object v0, p0, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference;->currentClientType:Lcom/gold/extension/shared/spoof/ClientType;

    .line 90
    new-instance v1, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 91
    sget-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SPOOF_VIDEO_STREAMS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 95
    sget-object v1, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference$1;->$SwitchMap$app$morphe$extension$shared$spoof$ClientType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "youtube_spoof_video_streams_about_no_stable_volume"

    const-string v3, "youtube_spoof_video_streams_about_no_av1"

    const-string v4, "youtube_spoof_video_streams_about_no_audio_tracks"

    const/16 v5, 0xa

    packed-switch v1, :pswitch_data_f4

    .line 113
    new-instance v1, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference$$ExternalSyntheticLambda2;-><init>(Lcom/gold/extension/shared/spoof/ClientType;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const-string v1, ""

    goto/16 :goto_c3

    .line 110
    :pswitch_43  #0x7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "youtube_spoof_video_streams_about_experimental"

    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c3

    .line 108
    :pswitch_6a  #0x6
    const-string v1, "youtube_spoof_video_streams_about_js"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c3

    .line 105
    :pswitch_71  #0x4, 0x5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c3

    .line 102
    :pswitch_8c  #0x2, 0x3
    const-string v1, "youtube_spoof_video_streams_about_playback_failure"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c3

    .line 97
    :pswitch_93  #0x1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "youtube_spoof_video_streams_about_no_force_original_audio"

    .line 100
    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    :goto_c3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ANDROID_VR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_eb

    sget-object v2, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_REEL_AUTH:Lcom/gold/extension/shared/spoof/ClientType;

    if-eq v0, v2, :cond_eb

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "youtube_spoof_video_streams_about_no_immersive_mode"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    :cond_eb
    invoke-static {v1}, Lcom/gold/extension/shared/settings/preference/BulletPointPreference;->formatIntoBulletPoints(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_93  #00000001
        :pswitch_8c  #00000002
        :pswitch_8c  #00000003
        :pswitch_71  #00000004
        :pswitch_71  #00000005
        :pswitch_6a  #00000006
        :pswitch_43  #00000007
    .end packed-switch
.end method


# virtual methods
.method public onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .registers 2

    .line 72
    invoke-super {p0, p1}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 73
    invoke-direct {p0}, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference;->updateUI()V

    .line 74
    invoke-direct {p0}, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference;->addChangeListener()V

    return-void
.end method

.method public onPrepareForRemoval()V
    .registers 1

    .line 79
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 80
    invoke-direct {p0}, Lcom/gold/extension/youtube/settings/preference/SpoofVideoStreamsSideEffectsPreference;->removeChangeListener()V

    return-void
.end method
