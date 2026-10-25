.class Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;
.super Ljava/lang/Object;
.source "AboutRoutes.java"


# static fields
.field private static final API_ROUTE_ABOUT:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

.field private static final API_URL:Ljava/lang/String; = "https://api.morphe.software/v2"

.field private static final GITHUB_ROUTE_PATCHES:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

.field private static final GITHUB_URL:Ljava/lang/String; = "https://raw.githubusercontent.com"

.field private static final NO_CONNECTION_STATIC_LINKS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile aboutLogoUrl:Ljava/lang/String; = "https://morphe.software/favicon.svg"

.field private static volatile fetchedLinks:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile latestPatchesVersion:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static volatile latestPatchesVersionLastCheckedTime:J


# direct methods
.method public static synthetic $r8$lambda$3unSBsEzc3YbKrs17PocUyYEFAQ()Ljava/lang/String;
    .registers 1

    .line 90
    const-string v0, "Could not parse about information"

    return-object v0
.end method

.method public static synthetic $r8$lambda$AbW8ruNrmckKe6OM5ZfPIWhCYds(I)Ljava/lang/String;
    .registers 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to get about information. Response code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$E-hP9mT4SMpUnzIKHf6GP6JFUNI(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetching latest patches version links from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GSRilg2VkgA6rfToZIjMQnnZ7UU()Ljava/lang/String;
    .registers 1

    .line 92
    const-string v0, "Failed to get patches version"

    return-object v0
.end method

.method public static synthetic $r8$lambda$SpQ6v5Ev_Yic8yF5R_tcpn4DxMA()Ljava/lang/String;
    .registers 1

    .line 158
    const-string v0, "Failed to get about information"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Vv90S9cu68DYeK0aht4vZ8QQGHQ()Ljava/lang/String;
    .registers 1

    .line 88
    const-string v0, "Could not fetch patches version"

    return-object v0
.end method

.method public static synthetic $r8$lambda$_aN0rbMkI3iGHDIzLRvUk1kiQlw(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetching social links from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cLvZu4Ts80Xr76O6AqJfMMUnhZ8()Ljava/lang/String;
    .registers 1

    .line 156
    const-string v0, "Could not parse about information"

    return-object v0
.end method

.method public static synthetic $r8$lambda$qiFvXQG5X69aZKgY1DxuO3rvV58()Ljava/lang/String;
    .registers 1

    .line 154
    const-string v0, "Could not fetch about information"

    return-object v0
.end method

.method public static synthetic $r8$lambda$wmWI-2dQ4qfMCodEPmx2oEM8Nho(Ljava/util/List;)Ljava/lang/String;
    .registers 3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "links: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yjG18oqKKvLnEHS49oapCCKFDeg(I)Ljava/lang/String;
    .registers 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to get patches bundle. Response code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 31
    new-instance v0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

    const/4 v1, 0x0

    const-string v2, "https://morphe.software"

    const/4 v3, 0x1

    const-string v4, "Website"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;->CREDITS_LINK:Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

    invoke-static {v0, v1}, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->NO_CONNECTION_STATIC_LINKS:Ljava/util/List;

    .line 37
    new-instance v0, Lcom/gold/extension/shared/requests/Route;

    sget-object v1, Lcom/gold/extension/shared/requests/Route$Method;->GET:Lcom/gold/extension/shared/requests/Route$Method;

    const-string v2, "/about"

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/requests/Route;-><init>(Lcom/gold/extension/shared/requests/Route$Method;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/gold/extension/shared/requests/Route;->compile([Ljava/lang/String;)Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->API_ROUTE_ABOUT:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    .line 40
    new-instance v0, Lcom/gold/extension/shared/requests/Route;

    .line 41
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isPreReleasePatches()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 42
    const-string v3, "/MorpheApp/morphe-patches/refs/heads/dev/patches-bundle.json"

    goto :goto_32

    .line 43
    :cond_30
    const-string v3, "/MorpheApp/morphe-patches/refs/heads/main/patches-bundle.json"

    :goto_32
    invoke-direct {v0, v1, v3}, Lcom/gold/extension/shared/requests/Route;-><init>(Lcom/gold/extension/shared/requests/Route$Method;Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/requests/Route;->compile([Ljava/lang/String;)Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->GITHUB_ROUTE_PATCHES:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchAboutLinks()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;",
            ">;"
        }
    .end annotation

    .line 107
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->hasFetchedLinks()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->fetchedLinks:Ljava/util/List;

    return-object v0

    .line 110
    :cond_9
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->NO_CONNECTION_STATIC_LINKS:Ljava/util/List;

    return-object v0

    .line 112
    :cond_12
    const-string v0, "https://api.morphe.software/v2"

    sget-object v1, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->API_ROUTE_ABOUT:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    invoke-static {v0, v1}, Lcom/gold/extension/shared/requests/Requester;->getConnectionFromCompiledRoute(Ljava/lang/String;Lcom/gold/extension/shared/requests/Route$CompiledRoute;)Ljava/net/HttpURLConnection;

    move-result-object v0

    const/16 v1, 0x1388

    .line 113
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 114
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 115
    new-instance v1, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda7;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 119
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3d

    .line 121
    new-instance v0, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda8;

    invoke-direct {v0, v1}, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 122
    sget-object v0, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->NO_CONNECTION_STATIC_LINKS:Ljava/util/List;

    return-object v0

    .line 125
    :cond_3d
    invoke-static {v0}, Lcom/gold/extension/shared/requests/Requester;->parseJSONObjectAndDisconnect(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v0

    .line 127
    const-string v1, "branding"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "logo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->aboutLogoUrl:Ljava/lang/String;

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    const-string v2, "donations"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "links"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_66
    if-ge v5, v3, :cond_7b

    .line 133
    new-instance v6, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;-><init>(Lorg/json/JSONObject;)V

    .line 134
    iget-boolean v7, v6, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;->preferred:Z

    if-eqz v7, :cond_78

    .line 135
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_78
    add-int/lit8 v5, v5, 0x1

    goto :goto_66

    .line 139
    :cond_7b
    const-string v2, "socials"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_85
    if-ge v4, v2, :cond_96

    .line 141
    new-instance v3, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;-><init>(Lorg/json/JSONObject;)V

    .line 143
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_85

    .line 147
    :cond_96
    sget-object v0, Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference;->CREDITS_LINK:Lcom/gold/extension/shared/settings/preference/about/MorpheAboutPreference$WebLink;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v0, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda9;

    invoke-direct {v0, v1}, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda9;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 151
    sput-object v1, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->fetchedLinks:Ljava/util/List;
    :try_end_a5
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_a5} :catch_ba
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_a5} :catch_b0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a5} :catch_a6

    return-object v1

    :catch_a6
    move-exception v0

    .line 158
    new-instance v1, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    goto :goto_c3

    :catch_b0
    move-exception v0

    .line 156
    new-instance v1, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    goto :goto_c3

    :catch_ba
    move-exception v0

    .line 154
    new-instance v1, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 161
    :goto_c3
    sget-object v0, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->NO_CONNECTION_STATIC_LINKS:Ljava/util/List;

    return-object v0
.end method

.method public static getLatestPatchesVersion()Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 59
    sget-object v0, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->latestPatchesVersion:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 62
    :cond_5
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isNetworkConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    .line 65
    :cond_d
    :try_start_d
    const-string v0, "https://raw.githubusercontent.com"

    sget-object v2, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->GITHUB_ROUTE_PATCHES:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    invoke-static {v0, v2}, Lcom/gold/extension/shared/requests/Requester;->getConnectionFromCompiledRoute(Ljava/lang/String;Lcom/gold/extension/shared/requests/Route$CompiledRoute;)Ljava/net/HttpURLConnection;

    move-result-object v0

    const/16 v2, 0x1388

    .line 67
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 68
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 69
    new-instance v2, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda2;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 72
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_3c

    .line 74
    new-instance v0, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda3;

    invoke-direct {v0, v2}, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object v1

    :catch_36
    move-exception v0

    goto :goto_5c

    :catch_38
    move-exception v0

    goto :goto_65

    :catch_3a
    move-exception v0

    goto :goto_6e

    .line 78
    :cond_3c
    invoke-static {v0}, Lcom/gold/extension/shared/requests/Requester;->parseJSONObjectAndDisconnect(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v0

    .line 79
    const-string v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v2, "v"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    const/4 v2, 0x1

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_53
    sput-object v0, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->latestPatchesVersion:Ljava/lang/String;

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->latestPatchesVersionLastCheckedTime:J
    :try_end_5b
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_5b} :catch_3a
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_5b} :catch_38
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_5b} :catch_36

    return-object v0

    .line 92
    :goto_5c
    new-instance v2, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v2, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    goto :goto_76

    .line 90
    :goto_65
    new-instance v2, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v2, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    goto :goto_76

    .line 88
    :goto_6e
    new-instance v2, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v2, v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    :goto_76
    return-object v1
.end method

.method public static hasFetchedLinks()Z
    .registers 1

    .line 102
    sget-object v0, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->fetchedLinks:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public static hasFetchedPatchersVersion()Z
    .registers 4

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 54
    sget-object v2, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->latestPatchesVersion:Ljava/lang/String;

    if-eqz v2, :cond_14

    sget-wide v2, Lcom/gold/extension/shared/settings/preference/about/AboutRoutes;->latestPatchesVersionLastCheckedTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method
