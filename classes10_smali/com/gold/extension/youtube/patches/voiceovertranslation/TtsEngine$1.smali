.class Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$1;
.super Landroid/media/MediaDataSource;
.source "TtsEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->playMp3([BFFJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

.field final synthetic val$mp3:[B


# direct methods
.method public constructor <init>(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 729
    iput-object p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$1;->this$0:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$1;->val$mp3:[B

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 0
    return-void
.end method

.method public getSize()J
    .registers 3

    .line 741
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$1;->val$mp3:[B

    array-length p0, p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public readAt(J[BII)I
    .registers 9

    .line 732
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$1;->val$mp3:[B

    array-length v1, v0

    int-to-long v1, v1

    cmp-long v1, p1, v1

    if-ltz v1, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    long-to-int p1, p1

    .line 734
    array-length p2, v0

    sub-int/2addr p2, p1

    invoke-static {p5, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 735
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$1;->val$mp3:[B

    invoke-static {p0, p1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p2
.end method
