.class final Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;
.super Lcom/android/tools/r8/RecordTag;
.source "TtsPrefetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NextFetch"
.end annotation


# instance fields
.field private final distance:I

.field private final index:I

.field private final seg:Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;


# direct methods
.method public static bridge synthetic -$$Nest$fgetindex(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->index:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetseg(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;)Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->seg:Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    return-object p0
.end method

.method private constructor <init>(IILcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "distance",
            "seg"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->index:I

    iput p2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->distance:I

    iput-object p3, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->seg:Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    return-void
.end method

.method public synthetic constructor <init>(IILcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;-><init>(IILcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;)V

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;

    if-eqz v0, :cond_1e

    check-cast p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;

    iget v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->index:I

    iget v1, p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->index:I

    if-ne v0, v1, :cond_1e

    iget v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->distance:I

    iget v1, p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->distance:I

    if-ne v0, v1, :cond_1e

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->seg:Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    iget-object p1, p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->seg:Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 5

    .line 0
    iget v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->distance:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->seg:Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    return-object v2
.end method

.method public distance()I
    .registers 1

    .line 64
    iget p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->distance:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 64
    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 3

    .line 64
    iget v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->index:I

    iget v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->distance:I

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->seg:Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    invoke-static {v0, v1, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch$$ExternalSyntheticRecord1;->m(IILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public index()I
    .registers 1

    .line 64
    iget p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->index:I

    return p0
.end method

.method public seg()Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->seg:Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 64
    invoke-virtual {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;

    const-string v1, "index;distance;seg"

    invoke-static {p0, v0, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
