.class public Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo;
.super Ljava/lang/Object;
.source "StreamingService.java"


# instance fields
.field private final mediaCapabilities:Ljava/util/Set;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo;->mediaCapabilities:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getMediaCapabilities()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo;->mediaCapabilities:Ljava/util/Set;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo;->name:Ljava/lang/String;

    return-object v0
.end method
