.class public Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist;
.super Ljava/lang/Object;
.source "SponsorBlockChannelWhitelist.java"


# direct methods
.method public static synthetic $r8$lambda$4WLkmUTPsu2w5vqp1FUnmgyuXRw()Ljava/lang/String;
    .registers 1

    .line 38
    const-string v0, "isChannelWhitelisted failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$8k6lS9gAi3fqN0sxIbO53e8Qjzg()Ljava/lang/String;
    .registers 1

    .line 91
    const-string v0, "getWhitelistedChannels failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$apat1FqSr6xjla8chABWBRIPHm8()Ljava/lang/String;
    .registers 1

    .line 56
    const-string v0, "addChannel failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$jFDH8qkjdVx-0xfdRJBOaa3pr6w()Ljava/lang/String;
    .registers 1

    .line 72
    const-string v0, "removeChannel failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$pNncGu-eU_4n_ojmDV0QXnTUAWo()Ljava/lang/String;
    .registers 1

    .line 102
    const-string v0, "Whitelist JSON parse error, resetting"

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChannel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 45
    :try_start_0
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist;->getWhitelistJson()Lorg/json/JSONArray;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_40

    const/4 v2, 0x0

    :goto_9
    const-string v3, "id"

    if-ge v2, v1, :cond_21

    .line 47
    :try_start_d
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 48
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    return-void

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 50
    :cond_21
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 51
    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string p0, "name"

    if-eqz p1, :cond_2e

    goto :goto_30

    :cond_2e
    const-string p1, ""

    :goto_30
    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 54
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CHANNEL_WHITELIST:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/StringSetting;->save(Ljava/lang/Object;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception p0

    .line 56
    new-instance p1, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static getWhitelistJson()Lorg/json/JSONArray;
    .registers 2

    .line 98
    :try_start_0
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_CHANNEL_WHITELIST:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    return-object v0

    .line 100
    :cond_12
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_17} :catch_18

    return-object v1

    :catch_18
    move-exception v0

    .line 102
    new-instance v1, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 103
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    return-object v0
.end method

.method public static getWhitelistedChannels()Ljava/util/LinkedHashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 80
    :try_start_5
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist;->getWhitelistJson()Lorg/json/JSONArray;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_31

    .line 82
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2e

    .line 84
    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2e

    .line 86
    const-string v6, "name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_2c

    goto :goto_2e

    :catch_2c
    move-exception v1

    goto :goto_32

    :cond_2e
    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_31
    return-object v0

    .line 91
    :goto_32
    new-instance v2, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v2, v1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static isChannelWhitelisted(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    .line 30
    :try_start_1
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist;->getWhitelistJson()Lorg/json/JSONArray;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v3, v0

    :goto_a
    if-ge v3, v2, :cond_2d

    .line 32
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 33
    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_20

    if-eqz v4, :cond_22

    const/4 p0, 0x1

    return p0

    :catch_20
    move-exception p0

    goto :goto_25

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 38
    :goto_25
    new-instance v1, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_2d
    return v0
.end method

.method public static isCurrentChannelWhitelisted()Z
    .registers 2

    .line 23
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    return v0

    .line 25
    :cond_c
    invoke-static {v0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist;->isChannelWhitelisted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static removeChannel(Ljava/lang/String;)V
    .registers 7

    .line 62
    :try_start_0
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist;->getWhitelistJson()Lorg/json/JSONArray;

    move-result-object v0

    .line 63
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 64
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_28

    .line 65
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_25

    .line 66
    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 67
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 70
    :cond_28
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->SB_CHANNEL_WHITELIST:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/settings/StringSetting;->save(Ljava/lang/Object;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception p0

    .line 72
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method
