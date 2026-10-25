.class public Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;
.super Ljava/lang/Object;
.source "WebMReader.java"


# instance fields
.field public absoluteTimeCodeNs:J

.field public data:Ljava/io/InputStream;

.field public dataSize:I

.field public flags:B

.field private final ref:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

.field public relativeTimeCode:S

.field public trackNumber:J


# direct methods
.method constructor <init>(Lcom/gold/youtube/om7753/streams/WebMReader$Element;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->ref:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    return-void
.end method

.method static synthetic access$800(Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;)Lcom/gold/youtube/om7753/streams/WebMReader$Element;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/streams/WebMReader$SimpleBlock;->ref:Lcom/gold/youtube/om7753/streams/WebMReader$Element;

    return-object p0
.end method
