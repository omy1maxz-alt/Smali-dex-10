.class public final synthetic Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/media/MediaPlayer;

.field public final synthetic f$3:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f$4:F

.field public final synthetic f$5:[B

.field public final synthetic f$6:F

.field public final synthetic f$7:J


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;JLandroid/media/MediaPlayer;Ljava/util/concurrent/CountDownLatch;F[BFJ)V
    .registers 11

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda13;->f$0:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    iput-wide p2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda13;->f$1:J

    iput-object p4, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda13;->f$2:Landroid/media/MediaPlayer;

    iput-object p5, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda13;->f$3:Ljava/util/concurrent/CountDownLatch;

    iput p6, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda13;->f$4:F

    iput-object p7, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda13;->f$5:[B

    iput p8, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda13;->f$6:F

    iput-wide p9, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda13;->f$7:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda13;->f$0:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    iget-wide v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda13;->f$1:J

    iget-object v3, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda13;->f$2:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda13;->f$3:Ljava/util/concurrent/CountDownLatch;

    iget v5, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda13;->f$4:F

    iget-object v6, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda13;->f$5:[B

    iget v7, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda13;->f$6:F

    iget-wide v8, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda13;->f$7:J

    invoke-static/range {v0 .. v9}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->$r8$lambda$6oxOW3JhEJ4nW0KXNE2ur01pm_M(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;JLandroid/media/MediaPlayer;Ljava/util/concurrent/CountDownLatch;F[BFJ)V

    return-void
.end method
