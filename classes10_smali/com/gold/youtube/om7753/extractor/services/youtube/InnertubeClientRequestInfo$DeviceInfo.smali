.class public final Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;
.super Ljava/lang/Object;
.source "InnertubeClientRequestInfo.java"


# instance fields
.field public androidSdkVersion:I

.field public deviceMake:Ljava/lang/String;

.field public deviceModel:Ljava/lang/String;

.field public osName:Ljava/lang/String;

.field public osVersion:Ljava/lang/String;

.field public platform:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->platform:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->deviceMake:Ljava/lang/String;

    iput-object p3, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->deviceModel:Ljava/lang/String;

    iput-object p4, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->osName:Ljava/lang/String;

    iput-object p5, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->osVersion:Ljava/lang/String;

    iput p6, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->androidSdkVersion:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
