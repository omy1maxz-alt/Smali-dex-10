.class public final Lcom/gold/youtube/om7753/util/Localization;
.super Ljava/lang/Object;
.source "Localization.java"


# static fields
.field private static prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;


# direct methods
.method public static assureCorrectAppLanguage(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/Localization;->getAppLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/gold/youtube/om7753/util/Localization;->changeAppLanguage(Ljava/util/Locale;Landroid/content/res/Resources;)V

    return-void
.end method

.method public static audioTrackName(Landroid/content/Context;Lcom/gold/youtube/om7753/extractor/stream/AudioStream;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->getAudioLocale()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->getAudioLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/Localization;->getAppLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_13
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->getAudioTrackName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->getAudioTrackName()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1e
    const-string v0, "Unknown"

    :goto_20
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->getAudioTrackType()Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    move-result-object v1

    if-eqz v1, :cond_44

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->getAudioTrackType()Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/util/Localization;->audioTrackType(Landroid/content/Context;Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_44

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string p1, "audio_track_name"

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringStr(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_44
    return-object v0
.end method

.method private static audioTrackType(Landroid/content/Context;Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/gold/youtube/om7753/util/Localization$1;->$SwitchMap$com$gold$youtube$om7753$extractor$stream$AudioTrackType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    const/4 p0, 0x0

    return-object p0

    :cond_13
    const-string p0, "descriptive"

    return-object p0

    :cond_16
    const-string p0, "dubbed"

    return-object p0

    :cond_19
    const-string p0, "original"

    return-object p0
.end method

.method private static changeAppLanguage(Ljava/util/Locale;Landroid/content/res/Resources;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public static concatenateStrings(Ljava/util/List;)Ljava/lang/String;
    .registers 4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_19
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    const-string v2, " • "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatenateStrings([Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/Localization;->concatenateStrings(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static containsCaseInsensitive(Ljava/util/List;Ljava/lang/String;)Z
    .registers 3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static deletedDownloadCount(Landroid/content/Context;I)Ljava/lang/String;
    .registers 8

    int-to-long v3, p1

    invoke-static {p0, v3, v4}, Lcom/gold/youtube/om7753/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    const-string v1, "deleted_downloads_toast"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getPluralByName(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/gold/youtube/om7753/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static downloadCount(Landroid/content/Context;I)Ljava/lang/String;
    .registers 8

    int-to-long v3, p1

    invoke-static {p0, v3, v4}, Lcom/gold/youtube/om7753/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    const-string v1, "download_finished_notification"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getPluralByName(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/gold/youtube/om7753/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(Ljj$/time/OffsetDateTime;Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Ljj$/time/format/FormatStyle;->MEDIUM:Ljj$/time/format/FormatStyle;

    invoke-static {v0}, Ljj$/time/format/DateTimeFormatter;->ofLocalizedDate(Ljj$/time/format/FormatStyle;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/Localization;->getAppLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljj$/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljj$/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-static {}, Ljj$/time/ZoneId;->systemDefault()Ljj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/OffsetDateTime;->atZoneSameInstant(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljj$/time/format/DateTimeFormatter;->format(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppLocale(Landroid/content/Context;)Ljava/util/Locale;
    .registers 4

    invoke-static {p0}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "app_language_key"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string p0, "system"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    goto :goto_39

    :cond_19
    const-string p0, ".*-.*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_34

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    goto :goto_39

    :cond_34
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :goto_39
    return-object p0
.end method

.method public static getDurationString(J)Ljava/lang/String;
    .registers 15

    const-wide/32 v0, 0x15180

    div-long v2, p0, v0

    rem-long v0, p0, v0

    const-wide/16 v4, 0xe10

    div-long v6, v0, v4

    rem-long/2addr v0, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    rem-long v4, p0, v4

    const-wide/16 v8, 0x0

    cmp-long v10, p0, v8

    if-gez v10, :cond_1a

    const-string p0, "0:00"

    goto :goto_7d

    :cond_1a
    const/4 p0, 0x3

    const/4 p1, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    cmp-long v12, v2, v8

    if-lez v12, :cond_46

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v9, p0

    const-string p0, "%d:%02d:%02d:%02d"

    invoke-static {v8, p0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7d

    :cond_46
    cmp-long v2, v6, v8

    if-lez v2, :cond_67

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p0, v11

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p0, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p0, p1

    const-string p1, "%d:%02d:%02d"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7d

    :cond_67
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v10

    const-string v0, "%d:%02d"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_7d
    return-object p0
.end method

.method public static getPreferredContentCountry(Landroid/content/Context;)Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;
    .registers 5

    invoke-static {p0}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "content_country"

    const-string v3, "system"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string p0, "system"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    new-instance p0, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_22
    new-instance p0, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getPreferredLocale(Landroid/content/Context;)Ljava/util/Locale;
    .registers 5

    const-string v0, "_"

    invoke-static {p0}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "content_language_key"

    const-string p0, "system"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1b
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_33} :catch_34

    return-object v1

    :catch_34
    :cond_34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static getPreferredLocalization(Landroid/content/Context;)Lcom/gold/youtube/om7753/extractor/localization/Localization;
    .registers 5

    invoke-static {p0}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "content_language_key"

    const-string v3, "system"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string p0, "system"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->fromLocale(Ljava/util/Locale;)Lcom/gold/youtube/om7753/extractor/localization/Localization;

    move-result-object p0

    return-object p0

    :cond_1d
    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->fromLocalizationCode(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/localization/Localization;

    move-result-object p0

    return-object p0
.end method

.method private static getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_b

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-wide/32 v0, 0x7fffffff

    cmp-long p2, p3, v0

    if-lez p2, :cond_16

    const p2, 0x7fffffff

    goto :goto_21

    :cond_16
    const-wide/32 v0, -0x80000000

    cmp-long p2, p3, v0

    if-gez p2, :cond_20

    const/high16 p2, -0x80000000

    goto :goto_21

    :cond_20
    long-to-int p2, p3

    :goto_21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p5, p3, p4

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initPrettyTime(Lorg/ocpsoft/prettytime/PrettyTime;)V
    .registers 2

    sput-object p0, Lcom/gold/youtube/om7753/util/Localization;->prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;

    const-class v0, Lorg/ocpsoft/prettytime/units/Decade;

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->removeUnit(Ljava/lang/Class;)Lorg/ocpsoft/prettytime/TimeFormat;

    return-void
.end method

.method public static localizeNumber(Landroid/content/Context;D)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/Localization;->getAppLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static localizeNumber(Landroid/content/Context;J)Ljava/lang/String;
    .registers 3

    long-to-double p1, p1

    invoke-static {p0, p1, p2}, Lcom/gold/youtube/om7753/util/Localization;->localizeNumber(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static resolvePrettyTime(Landroid/content/Context;)Lorg/ocpsoft/prettytime/PrettyTime;
    .registers 2

    new-instance v0, Lorg/ocpsoft/prettytime/PrettyTime;

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/Localization;->getAppLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private static round(DI)D
    .registers 4

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, p2, p0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static shortCount(Landroid/content/Context;J)Ljava/lang/String;
    .registers 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_15

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/Localization;->getAppLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    sget-object v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-static {p0, v0}, Landroid/icu/text/CompactDecimalFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)Landroid/icu/text/CompactDecimalFormat;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/CompactDecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    long-to-double v0, p1

    const-wide/32 v2, 0x3b9aca00

    const/4 v4, 0x1

    cmp-long v5, p1, v2

    if-ltz v5, :cond_41

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, 0x41cdcd6500000000L  # 1.0E9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1, v4}, Lcom/gold/youtube/om7753/util/Localization;->round(DI)D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/gold/youtube/om7753/util/Localization;->localizeNumber(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "B"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_41
    const-wide/32 v2, 0xf4240

    cmp-long v5, p1, v2

    if-ltz v5, :cond_6b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, 0x412e848000000000L  # 1000000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1, v4}, Lcom/gold/youtube/om7753/util/Localization;->round(DI)D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/gold/youtube/om7753/util/Localization;->localizeNumber(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "M"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6b
    const-wide/16 v2, 0x3e8

    cmp-long v5, p1, v2

    if-ltz v5, :cond_94

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, 0x408f400000000000L  # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1, v4}, Lcom/gold/youtube/om7753/util/Localization;->round(DI)D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/gold/youtube/om7753/util/Localization;->localizeNumber(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "k"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_94
    invoke-static {p0, v0, v1}, Lcom/gold/youtube/om7753/util/Localization;->localizeNumber(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
