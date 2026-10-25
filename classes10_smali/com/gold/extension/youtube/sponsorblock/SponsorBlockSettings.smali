.class public Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings;
.super Ljava/lang/Object;
.source "SponsorBlockSettings.java"


# static fields
.field public static final SB_IMPORT_EXPORT_CALLBACK:Lcom/gold/extension/shared/settings/Setting$ImportExportCallback;

.field private static initialized:Z


# direct methods
.method public static synthetic $r8$lambda$8jJd7lUB_CRNTMBik_rtgnCfrWo()Ljava/lang/String;
    .registers 1

    .line 122
    const-string v0, "failed to import settings"

    return-object v0
.end method

.method public static synthetic $r8$lambda$ATNVaYkAPGKicZQlpYxR6Qmd71s()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$VBLNjYXyPewWMBlPIdmGPgUU770()V
    .registers 2

    .line 196
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_HIDE_EXPORT_WARNING:Lcom/gold/extension/shared/settings/BooleanSetting;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->save(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f4N02XjQBxf9DMGln-RKTBmNLE0()Ljava/lang/String;
    .registers 1

    .line 131
    const-string v0, "Creating SponsorBlock export settings string"

    return-object v0
.end method

.method public static synthetic $r8$lambda$pmweYpkgLj4NcSgRKopGgnYosnw()Ljava/lang/String;
    .registers 1

    .line 170
    const-string v0, "failed to export settings"

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smshowExportWarningIfNeeded(Landroid/app/Activity;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings;->showExportWarningIfNeeded(Landroid/app/Activity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings$1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings$1;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings;->SB_IMPORT_EXPORT_CALLBACK:Lcom/gold/extension/shared/settings/Setting$ImportExportCallback;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exportDesktopSettings()Ljava/lang/String;
    .registers 12
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 129
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 131
    :try_start_3
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 132
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 134
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 135
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 137
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->categoriesWithoutUnsubmitted()[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    move-result-object v3

    .line 138
    array-length v4, v3

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v4, :cond_5f

    aget-object v6, v3, v5

    .line 139
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 140
    iget-object v8, v6, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->keyValue:Ljava/lang/String;

    .line 142
    const-string v9, "color"

    invoke-virtual {v6}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->getColorStringWithoutOpacity()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v9, "opacity"

    invoke-virtual {v6}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->getOpacity()D

    move-result-wide v10

    invoke-virtual {v7, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 144
    invoke-virtual {v1, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    iget-object v7, v6, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->behaviour:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    sget-object v9, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->IGNORE:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    if-eq v7, v9, :cond_5c

    .line 147
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 148
    const-string v9, "name"

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v8, "option"

    iget-object v6, v6, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->behaviour:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    iget v6, v6, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->desktopKeyValue:I

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 153
    :cond_5f
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockHelpers;->userHasSBPrivateID()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 154
    const-string v3, "userID"

    sget-object v4, Lcom/gold/extension/youtube/settings/Settings;->SB_PRIVATE_USER_ID:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v4}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :cond_70
    const-string v3, "isVip"

    sget-object v4, Lcom/gold/extension/youtube/settings/Settings;->SB_USER_IS_VIP:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v4}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v3, "serverAddress"

    sget-object v4, Lcom/gold/extension/youtube/settings/Settings;->SB_API_URL:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v4}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v3, "dontShowNotice"

    sget-object v4, Lcom/gold/extension/youtube/settings/Settings;->SB_TOAST_ON_SKIP:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v4}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 159
    const-string v3, "showTimeWithSkips"

    sget-object v4, Lcom/gold/extension/youtube/settings/Settings;->SB_VIDEO_LENGTH_WITHOUT_SEGMENTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v4}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v3, "minDuration"

    sget-object v4, Lcom/gold/extension/youtube/settings/Settings;->SB_SEGMENT_MIN_DURATION:Lcom/gold/extension/shared/settings/FloatSetting;

    invoke-virtual {v4}, Lcom/gold/extension/shared/settings/FloatSetting;->get()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v3, "trackViewCount"

    sget-object v4, Lcom/gold/extension/youtube/settings/Settings;->SB_TRACK_SKIP_COUNT:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v4}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v3, "skipCount"

    sget-object v4, Lcom/gold/extension/youtube/settings/Settings;->SB_LOCAL_TIME_SAVED_NUMBER_SEGMENTS:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v4}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v3, "minutesSaved"

    sget-object v4, Lcom/gold/extension/youtube/settings/Settings;->SB_LOCAL_TIME_SAVED_MILLISECONDS:Lcom/gold/extension/shared/settings/LongSetting;

    invoke-virtual {v4}, Lcom/gold/extension/shared/settings/LongSetting;->get()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-float v4, v4

    const v5, 0x476a6000  # 60000.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 165
    const-string v3, "categorySelections"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v2, "barTypes"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    .line 168
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e7} :catch_e8

    return-object v0

    :catch_e8
    move-exception v0

    .line 170
    new-instance v1, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 171
    const-string v1, "youtube_sb_settings_export_failed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    .line 172
    const-string v0, ""

    return-object v0
.end method

.method public static importDesktopSettings(Ljava/lang/String;)V
    .registers 15
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    const-string v0, "minutesSaved"

    const-string v1, "skipCount"

    const-string v2, "userID"

    const-string v3, "opacity"

    const-string v4, "color"

    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 42
    :try_start_d
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    const-string p0, "barTypes"

    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 44
    const-string v6, "categorySelections"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 46
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->categoriesWithoutUnsubmitted()[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    move v10, v9

    :goto_25
    if-ge v10, v8, :cond_5b

    aget-object v11, v7, v10

    .line 48
    sget-object v12, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->IGNORE:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    invoke-virtual {v11, v12}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->setBehaviour(Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;)V

    .line 49
    iget-object v12, v11, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->keyValue:Ljava/lang/String;

    invoke-virtual {p0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_58

    .line 50
    iget-object v12, v11, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->keyValue:Ljava/lang/String;

    invoke-virtual {p0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 52
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_58

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_58

    .line 53
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->setColorWithOpacity(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-float v12, v12

    float-to-double v12, v12

    invoke-virtual {v11, v12, v13}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->setOpacity(D)V

    :cond_58
    add-int/lit8 v10, v10, 0x1

    goto :goto_25

    .line 59
    :cond_5b
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result p0

    :goto_5f
    if-ge v9, p0, :cond_c0

    .line 60
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 62
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-static {v4}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->byCategoryKey(Ljava/lang/String;)Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    move-result-object v7

    if-nez v7, :cond_72

    goto :goto_bd

    .line 68
    :cond_72
    const-string v8, "option"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 69
    invoke-static {v3}, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->byDesktopKeyValue(I)Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    move-result-object v3

    if-nez v3, :cond_96

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " unknown behavior key: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    goto :goto_bd

    .line 72
    :cond_96
    sget-object v4, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-ne v7, v4, :cond_ba

    sget-object v4, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->SKIP_AUTOMATICALLY_ONCE:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    if-ne v3, v4, :cond_ba

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip-once behavior not allowed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->keyValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    .line 74
    sget-object v3, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->SKIP_AUTOMATICALLY:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    invoke-virtual {v7, v3}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->setBehaviour(Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;)V

    goto :goto_bd

    .line 76
    :cond_ba
    invoke-virtual {v7, v3}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->setBehaviour(Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;)V

    :goto_bd
    add-int/lit8 v9, v9, 0x1

    goto :goto_5f

    .line 79
    :cond_c0
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->updateEnabledCategories()V

    .line 81
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d8

    .line 83
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 84
    invoke-static {p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockHelpers;->isValidSBUserID(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 85
    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->SB_PRIVATE_USER_ID:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v2, p0}, Lcom/gold/extension/shared/settings/StringSetting;->save(Ljava/lang/Object;)V

    .line 88
    :cond_d8
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_USER_IS_VIP:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "isVip"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/gold/extension/shared/settings/BooleanSetting;->save(Ljava/lang/Object;)V

    .line 89
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_TOAST_ON_SKIP:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "dontShowNotice"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/gold/extension/shared/settings/BooleanSetting;->save(Ljava/lang/Object;)V

    .line 90
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_TRACK_SKIP_COUNT:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "trackViewCount"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/gold/extension/shared/settings/BooleanSetting;->save(Ljava/lang/Object;)V

    .line 91
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_VIDEO_LENGTH_WITHOUT_SEGMENTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v2, "showTimeWithSkips"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/gold/extension/shared/settings/BooleanSetting;->save(Ljava/lang/Object;)V

    .line 93
    const-string p0, "serverAddress"

    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-static {p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockHelpers;->isValidSBServerAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_127

    .line 95
    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->SB_API_URL:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v2, p0}, Lcom/gold/extension/shared/settings/StringSetting;->save(Ljava/lang/Object;)V

    .line 98
    :cond_127
    const-string p0, "minDuration"

    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float p0, v2

    const/4 v2, 0x0

    cmpg-float v2, p0, v2

    if-ltz v2, :cond_1ae

    .line 102
    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->SB_SEGMENT_MIN_DURATION:Lcom/gold/extension/shared/settings/FloatSetting;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/gold/extension/shared/settings/FloatSetting;->save(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_169

    .line 105
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_152

    .line 109
    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->SB_LOCAL_TIME_SAVED_NUMBER_SEGMENTS:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/gold/extension/shared/settings/IntegerSetting;->save(Ljava/lang/Object;)V

    goto :goto_169

    .line 107
    :cond_152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid skipCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_169
    :goto_169
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a4

    .line 113
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p0, v0, v2

    if-ltz p0, :cond_18d

    .line 117
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_LOCAL_TIME_SAVED_MILLISECONDS:Lcom/gold/extension/shared/settings/LongSetting;

    const-wide/high16 v2, 0x404e000000000000L  # 60.0

    mul-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L  # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/settings/LongSetting;->save(Ljava/lang/Object;)V

    goto :goto_1a4

    .line 115
    :cond_18d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid minutesSaved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 120
    :cond_1a4
    :goto_1a4
    const-string p0, "youtube_sb_settings_import_successful"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    return-void

    .line 100
    :cond_1ae
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid minDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1c5} :catch_1c5

    :catch_1c5
    move-exception p0

    .line 122
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 123
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "youtube_sb_settings_import_failed"

    invoke-static {v0, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    return-void
.end method

.method public static initialize()V
    .registers 1

    .line 207
    sget-boolean v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings;->initialized:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 210
    sput-boolean v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings;->initialized:Z

    .line 212
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->updateEnabledCategories()V

    return-void
.end method

.method private static showExportWarningIfNeeded(Landroid/app/Activity;)V
    .registers 12
    .param p0  # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 180
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 181
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings;->initialize()V

    if-eqz p0, :cond_42

    .line 184
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockHelpers;->userHasSBPrivateID()Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_HIDE_EXPORT_WARNING:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 185
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_42

    .line 187
    const-string v0, "youtube_sb_settings_youtube_export_user_id_warning"

    .line 190
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings$$ExternalSyntheticLambda0;-><init>()V

    const-string v0, "youtube_sb_settings_youtube_export_user_id_warning_dismiss"

    .line 195
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings$$ExternalSyntheticLambda1;

    invoke-direct {v9}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockSettings$$ExternalSyntheticLambda1;-><init>()V

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    .line 187
    invoke-static/range {v1 .. v10}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    .line 200
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-static {v1, p0, v0, v2}, Lcom/gold/extension/shared/Utils;->showDialog(Landroid/app/Activity;Landroid/app/Dialog;ZLcom/gold/extension/shared/Utils$DialogFragmentOnStartAction;)V

    :cond_42
    return-void
.end method
