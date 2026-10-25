.class public final Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;
.super Ljava/lang/Object;
.source "InnertubeClientRequestInfo.java"


# instance fields
.field public clientId:Ljava/lang/String;

.field public clientName:Ljava/lang/String;

.field public clientScreen:Ljava/lang/String;

.field public clientVersion:Ljava/lang/String;

.field public visitorData:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->clientName:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->clientVersion:Ljava/lang/String;

    iput-object p3, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->clientId:Ljava/lang/String;

    iput-object p4, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->clientScreen:Ljava/lang/String;

    iput-object p5, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->visitorData:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
