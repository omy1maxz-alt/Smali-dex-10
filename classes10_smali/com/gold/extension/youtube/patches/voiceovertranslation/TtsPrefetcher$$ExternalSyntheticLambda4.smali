.class public final synthetic Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;IIJLcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda4;->f$1:I

    iput p3, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda4;->f$2:I

    iput-wide p4, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda4;->f$3:J

    iput-object p6, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda4;->f$4:Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda4;->f$1:I

    iget v2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda4;->f$2:I

    iget-wide v3, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda4;->f$3:J

    iget-object v5, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda4;->f$4:Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    invoke-static/range {v0 .. v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->$r8$lambda$HlPdjaMCFvu8HhsJgtQOiKozdXs(Ljava/lang/String;IIJLcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
