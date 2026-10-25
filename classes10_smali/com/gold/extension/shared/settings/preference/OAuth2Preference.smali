.class public abstract Lcom/gold/extension/shared/settings/preference/OAuth2Preference;
.super Landroid/preference/Preference;
.source "OAuth2Preference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final GET_REFRESH_TOKENS_MAX_ATTEMPTS:I = 0x5


# instance fields
.field private final ACTIVITY_LIFECYCLE_CALLBACKS:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private getTokenAttemptScheduled:Z

.field private getTokenAttemptsLeft:I

.field private getTokenIntervalCheckMilliseconds:I

.field private lastGetTokenAttemptTime:J


# direct methods
.method public static synthetic $r8$lambda$14_B2k53YxdTMGiKQdiD-bMi7l8(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;ZLandroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->lambda$getRefreshToken$9(ZLandroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3tIti7QL3K2iV9YbF-qFXGkxhOc(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->lambda$showActivationCodeDialog$3(Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6pT1GYlfr1LW2_fZS3Kb8vxr9k4(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;Lcom/gold/extension/shared/oauth2/object/AccessTokenData;ZLandroid/content/Context;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->lambda$getRefreshToken$8(Lcom/gold/extension/shared/oauth2/object/AccessTokenData;ZLandroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ECFJQ4JZa5m305fveglnvEXMv4c()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$S8PM4WNZk7BrbQlyOKVXhDpZsj0(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->lambda$showActivationCodeDialog$2(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dySLw7QD1zYsE3K57wkahzLqxbo(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->showActivationCodeDialog()V

    return-void
.end method

.method public static synthetic $r8$lambda$en2BEYJ39rUzs3Q70NB8vgn9W7w()Ljava/lang/String;
    .registers 1

    .line 287
    const-string v0, "No refresh token found"

    return-object v0
.end method

.method public static synthetic $r8$lambda$i1bolQLFQmAD6urNs4UU5WBmP3o()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$lrqlieTY4KBPvw7IWhh5dSc0AuE()Ljava/lang/String;
    .registers 1

    .line 295
    const-string v0, "No refresh token found"

    return-object v0
.end method

.method public static synthetic $r8$lambda$v8gr6UrTeOwO3CkiOrDKMJKbfGY(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->lambda$onPreferenceClick$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$xmdov97MuF08PrDBzzihhjjidJA(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->lambda$showActivationCodeDialog$4(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetgetTokenAttemptScheduled(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->getTokenAttemptScheduled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetgetTokenIntervalCheckMilliseconds(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->getTokenIntervalCheckMilliseconds:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetlastGetTokenAttemptTime(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->lastGetTokenAttemptTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fputgetTokenAttemptScheduled(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->getTokenAttemptScheduled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputlastGetTokenAttemptTime(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->lastGetTokenAttemptTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetRefreshToken(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->getRefreshToken()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 165
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 64
    new-instance p1, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$1;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$1;-><init>(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;)V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->ACTIVITY_LIFECYCLE_CALLBACKS:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 166
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->updateUI()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 160
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-virtual {p0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 64
    new-instance p1, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$1;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$1;-><init>(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;)V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->ACTIVITY_LIFECYCLE_CALLBACKS:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 161
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->updateUI()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 155
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-virtual {p0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 64
    new-instance p1, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$1;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$1;-><init>(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;)V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->ACTIVITY_LIFECYCLE_CALLBACKS:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 156
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->updateUI()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 150
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    invoke-virtual {p0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 64
    new-instance p1, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$1;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$1;-><init>(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;)V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->ACTIVITY_LIFECYCLE_CALLBACKS:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 151
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->updateUI()V

    return-void
.end method

.method private getRefreshToken()V
    .registers 4

    .line 275
    iget v0, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->getTokenAttemptsLeft:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->getTokenAttemptsLeft:I

    if-gtz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_f

    .line 277
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->unregisterApplicationOnResumeCallback()V

    .line 280
    :cond_f
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 282
    new-instance v2, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1, v0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda2;-><init>(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;ZLandroid/content/Context;)V

    invoke-static {v2}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getRefreshToken$8(Lcom/gold/extension/shared/oauth2/object/AccessTokenData;ZLandroid/content/Context;)V
    .registers 14

    if-nez p1, :cond_16

    .line 287
    new-instance p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    if-eqz p2, :cond_15

    .line 289
    const-string p0, "youtube_spoof_video_streams_sign_in_android_vr_toast_get_authorization_code_failed"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    :cond_15
    return-void

    .line 293
    :cond_16
    iget-object p2, p1, Lcom/gold/extension/shared/oauth2/object/AccessTokenData;->refreshToken:Ljava/lang/String;

    if-eqz p2, :cond_58

    .line 294
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_58

    .line 299
    :cond_21
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->unregisterApplicationOnResumeCallback()V

    .line 301
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->OAUTH2_REFRESH_TOKEN:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0, p2}, Lcom/gold/extension/shared/settings/Setting;->save(Ljava/lang/Object;)V

    .line 302
    invoke-static {p1}, Lcom/gold/extension/shared/oauth2/requests/OAuth2Requester;->setAuthorization(Lcom/gold/extension/shared/oauth2/object/AccessTokenData;)V

    const/4 p1, 0x1

    .line 304
    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->updateUI(Z)V

    .line 306
    const-string p0, "youtube_spoof_video_streams_sign_in_android_vr_success_dialog_title"

    .line 309
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "youtube_spoof_video_streams_sign_in_android_vr_success_dialog_message"

    .line 312
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 311
    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/BulletPointPreference;->formatIntoBulletPoints(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v5, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda6;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    .line 306
    invoke-static/range {v0 .. v9}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    .line 329
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    .line 295
    :cond_58
    :goto_58
    new-instance p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda5;

    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void
.end method

.method private synthetic lambda$getRefreshToken$9(ZLandroid/content/Context;)V
    .registers 5

    .line 283
    invoke-static {p1}, Lcom/gold/extension/shared/oauth2/requests/OAuth2Requester;->getRefreshTokenData(Z)Lcom/gold/extension/shared/oauth2/object/AccessTokenData;

    move-result-object v0

    .line 285
    new-instance v1, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda7;-><init>(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;Lcom/gold/extension/shared/oauth2/object/AccessTokenData;ZLandroid/content/Context;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onPreferenceClick$0()V
    .registers 3

    .line 186
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->OAUTH2_REFRESH_TOKEN:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/extension/shared/oauth2/requests/OAuth2Requester;->revokeToken(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/Setting;->resetToDefault()Ljava/lang/Object;

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->updateUI(Z)V

    return-void
.end method

.method private synthetic lambda$showActivationCodeDialog$2(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 254
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->registerApplicationOnResumeCallback()V

    .line 256
    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->setClipboard(Ljava/lang/CharSequence;)V

    .line 257
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.intent.action.VIEW"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/OverrideYouTubeMusicButtonsPatch;->overrideSetData(Landroid/content/Intent;Landroid/net/Uri;)Landroid/content/Intent;

    .line 259
    invoke-virtual {p3, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$showActivationCodeDialog$3(Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;Landroid/content/Context;)V
    .registers 15

    .line 237
    iget-object v0, p1, Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;->userCode:Ljava/lang/String;

    .line 238
    iget-object v1, p1, Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;->verificationUrl:Ljava/lang/String;

    .line 239
    iget p1, p1, Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;->interval:I

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->getTokenIntervalCheckMilliseconds:I

    .line 241
    const-string p1, "youtube_spoof_video_streams_sign_in_android_vr_activation_code_dialog_title"

    .line 244
    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "youtube_spoof_video_streams_sign_in_android_vr_activation_code_dialog_message"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    .line 246
    invoke-static {p1, v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string p1, "youtube_spoof_video_streams_sign_in_android_vr_activation_code_dialog_open_website"

    .line 250
    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0, v0, v1, p2}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda3;-><init>(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p2

    .line 241
    invoke-static/range {v2 .. v11}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    .line 269
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic lambda$showActivationCodeDialog$4(Landroid/content/Context;)V
    .registers 4

    .line 230
    invoke-static {}, Lcom/gold/extension/shared/oauth2/requests/OAuth2Requester;->getActivationCodeData()Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;

    move-result-object v0

    if-nez v0, :cond_10

    .line 232
    const-string p0, "youtube_spoof_video_streams_sign_in_android_vr_toast_get_activation_code_failed"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    return-void

    .line 236
    :cond_10
    new-instance v1, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerApplicationOnResumeCallback()V
    .registers 2

    .line 108
    invoke-static {}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->ACTIVITY_LIFECYCLE_CALLBACKS:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private showActivationCodeDialog()V
    .registers 3

    const/4 v0, 0x5

    .line 226
    iput v0, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->getTokenAttemptsLeft:I

    .line 227
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private unregisterApplicationOnResumeCallback()V
    .registers 2

    .line 114
    invoke-static {}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->ACTIVITY_LIFECYCLE_CALLBACKS:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public isRefreshTokenSaved()Z
    .registers 1

    .line 127
    sget-object p0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->OAUTH2_REFRESH_TOKEN:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public abstract isSettingEnabled()Z
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 15

    .line 181
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->isRefreshTokenSaved()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 185
    new-instance p1, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda8;-><init>(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;)V

    const-string v0, "youtube_spoof_video_streams_sign_in_android_vr_about_summary_signed_in"

    const-string v1, "youtube_spoof_video_streams_sign_in_android_vr_success_dialog_message"

    const-string v2, "youtube_spoof_video_streams_sign_in_android_vr_dialog_reset"

    :goto_11
    move-object v8, p1

    goto :goto_1f

    .line 195
    :cond_13
    new-instance p1, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda9;-><init>(Lcom/gold/extension/shared/settings/preference/OAuth2Preference;)V

    const-string v0, "youtube_spoof_video_streams_sign_in_android_vr_dialog_title"

    const-string v1, "youtube_spoof_video_streams_sign_in_android_vr_dialog_not_signed_in_message"

    const-string v2, "youtube_spoof_video_streams_sign_in_android_vr_dialog_continue"

    goto :goto_11

    .line 199
    :goto_1f
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 201
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/BulletPointPreference;->formatIntoBulletPoints(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 207
    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda10;

    invoke-direct {v9}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference$$ExternalSyntheticLambda10;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 198
    invoke-static/range {v3 .. v12}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    .line 220
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPrepareForRemoval()V
    .registers 1

    .line 121
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 123
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->unregisterApplicationOnResumeCallback()V

    return-void
.end method

.method public updateUI()V
    .registers 2

    .line 146
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->isRefreshTokenSaved()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->updateUI(Z)V

    return-void
.end method

.method public updateUI(Z)V
    .registers 3

    .line 131
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/OAuth2Preference;->isSettingEnabled()Z

    move-result v0

    .line 132
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    if-eqz v0, :cond_11

    if-eqz p1, :cond_e

    .line 137
    const-string p1, "youtube_spoof_video_streams_sign_in_android_vr_about_summary_signed_in"

    goto :goto_13

    .line 138
    :cond_e
    const-string p1, "youtube_spoof_video_streams_sign_in_android_vr_about_summary"

    goto :goto_13

    .line 140
    :cond_11
    const-string p1, "youtube_spoof_video_streams_sign_in_android_vr_about_summary_disabled"

    .line 142
    :goto_13
    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
