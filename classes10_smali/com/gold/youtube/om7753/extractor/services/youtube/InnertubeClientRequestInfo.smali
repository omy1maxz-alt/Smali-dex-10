.class public final Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;
.super Ljava/lang/Object;
.source "InnertubeClientRequestInfo.java"


# instance fields
.field public clientInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

.field public deviceInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;


# direct methods
.method private constructor <init>(Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->deviceInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    return-void
.end method

.method public static ofAndroidClient()Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;
    .registers 10

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "ANDROID"

    const-string v3, "21.03.36"

    const-string v4, "3"

    const-string v5, "WATCH"

    invoke-direct/range {v1 .. v7}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    const/16 v8, 0x24

    const/4 v9, 0x0

    const-string v3, "MOBILE"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "Android"

    const-string v7, "16"

    invoke-direct/range {v2 .. v9}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;-><init>(Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;)V

    return-object v0
.end method

.method public static ofIosClient()Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;
    .registers 10

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "IOS"

    const-string v3, "21.03.2"

    const-string v4, "5"

    const-string v5, "WATCH"

    invoke-direct/range {v1 .. v7}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const-string v3, "MOBILE"

    const-string v4, "Apple"

    const-string v5, "iPhone16,2"

    const-string v6, "iOS"

    const-string v7, "18.7.2.22H124"

    invoke-direct/range {v2 .. v9}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;-><init>(Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;)V

    return-object v0
.end method

.method public static ofVisionOsClient()Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;
    .registers 10

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "VISIONOS"

    const-string v3, "1.02"

    const-string v4, "101"

    const-string v5, "WATCH"

    invoke-direct/range {v1 .. v7}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const-string v3, "MOBILE"

    const-string v4, "Apple"

    const-string v5, "RealityDevice14,1"

    const-string v6, "visionOS"

    const-string v7, "25.6.0.23O471"

    invoke-direct/range {v2 .. v9}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;-><init>(Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;)V

    return-object v0
.end method

.method public static ofWebClient()Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;
    .registers 10

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "WEB"

    const-string v3, "2.20260120.01.00"

    const-string v4, "1"

    const-string v5, "WATCH"

    invoke-direct/range {v1 .. v7}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const-string v3, "DESKTOP"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;-><init>(Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;)V

    return-object v0
.end method

.method public static ofWebEmbeddedPlayerClient()Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;
    .registers 10

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "WEB_EMBEDDED_PLAYER"

    const-string v3, "1.20260122.01.00"

    const-string v4, "56"

    const-string v5, "EMBED"

    invoke-direct/range {v1 .. v7}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const-string v3, "DESKTOP"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;-><init>(Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;)V

    return-object v0
.end method

.method public static ofWebMusicAnalyticsChartsClient()Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;
    .registers 10

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "WEB_MUSIC_ANALYTICS"

    const-string v3, "2.0"

    const-string v4, "31"

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;-><init>(Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;)V

    return-object v0
.end method
