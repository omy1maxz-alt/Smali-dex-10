.class public Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;
.super Ljava/lang/Object;
.source "WebMReader.java"


# instance fields
.field public bMetadata:[B

.field public codecDelay:J

.field public codecId:Ljava/lang/String;

.field public codecPrivate:[B

.field public defaultDuration:J

.field public kind:Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

.field public seekPreRoll:J

.field public trackNumber:J

.field protected trackType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->defaultDuration:J

    iput-wide v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->codecDelay:J

    iput-wide v0, p0, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->seekPreRoll:J

    return-void
.end method
