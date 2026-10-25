.class public final Lcom/gold/extension/shared/sponsorblock/SponsorBlockHelpers;
.super Ljava/lang/Object;
.source "SponsorBlockHelpers.java"


# static fields
.field private static final SB_PRIVATE_USER_ID_MINIMUM_LENGTH:I = 0x1e


# direct methods
.method public static synthetic $r8$lambda$sqXXYEw0PTxgm7nTV6SSNK9mL_w(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Migrating old color string with default opacity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrGenerateSBPrivateUserID()Ljava/lang/String;
    .registers 4

    .line 46
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;->privateUserId()Lcom/gold/extension/shared/settings/StringSetting;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 50
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    .line 55
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/settings/Setting;->save(Ljava/lang/Object;)V

    :cond_4d
    return-object v1

    .line 48
    :cond_4e
    const-string v0, "Host app does not provide privateUserId setting"

    invoke-static {v0}, Lcom/google/protobuf/FieldSet$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static isValidSBServerAddress(Ljava/lang/String;)Z
    .registers 3

    .line 69
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    :cond_e
    const/16 v0, 0x2e

    .line 74
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_24

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    return v1
.end method

.method public static isValidSBUserID(Ljava/lang/String;)Z
    .registers 2

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static migrateOldColorString(Ljava/lang/String;F)Ljava/lang/String;
    .registers 5

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_9

    return-object p0

    .line 87
    :cond_9
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    .line 88
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 91
    :cond_16
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/high16 v2, 0x437f0000  # 255.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "%02X"

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 93
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/SponsorBlockHelpers$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockHelpers$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object p0
.end method

.method public static userHasSBPrivateID()Z
    .registers 1

    .line 36
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;->privateUserId()Lcom/gold/extension/shared/settings/StringSetting;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 37
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method
