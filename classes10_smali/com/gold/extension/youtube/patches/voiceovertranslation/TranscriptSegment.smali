.class public final Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;
.super Ljava/lang/Object;
.source "TranscriptSegment.java"


# instance fields
.field public volatile durationMs:J

.field public final endMs:J

.field public final lang:Ljava/lang/String;

.field public volatile playbackEndMs:J

.field public volatile playbackStartMs:J

.field public final startMs:J

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->startMs:J

    .line 39
    iput-wide p3, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->endMs:J

    .line 40
    iput-object p5, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->lang:Ljava/lang/String;

    .line 42
    iput-wide p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->playbackStartMs:J

    .line 43
    iput-wide p3, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->playbackEndMs:J

    const-wide/16 p1, -0x1

    .line 44
    iput-wide p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->durationMs:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_37

    .line 50
    const-class v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_37

    .line 51
    :cond_10
    check-cast p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    .line 52
    iget-wide v2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->startMs:J

    iget-wide v4, p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->startMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_37

    iget-wide v2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->endMs:J

    iget-wide v4, p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->endMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_37

    iget-object v2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    .line 53
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->lang:Ljava/lang/String;

    iget-object p1, p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->lang:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    return v0

    :cond_37
    :goto_37
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 58
    iget-wide v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->startMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->endMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->lang:Ljava/lang/String;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 64
    iget-wide v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->durationMs:J

    .line 65
    iget-wide v2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->playbackEndMs:J

    .line 66
    iget-wide v4, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->playbackStartMs:J

    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TranscriptSegment{lang="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->lang:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", startMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->startMs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", endMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->endMs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", playbackStartMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", playbackEndMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", durationMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", playbackRate="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-lez v7, :cond_4e

    long-to-float v0, v0

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v0, v1

    goto :goto_4f

    :cond_4e
    const/4 v0, 0x0

    .line 74
    :goto_4f
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", text=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
