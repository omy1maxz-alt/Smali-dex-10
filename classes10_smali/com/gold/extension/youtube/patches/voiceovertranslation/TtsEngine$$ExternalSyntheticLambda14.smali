.class public final synthetic Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f$2:Landroid/media/MediaPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;Ljava/util/concurrent/CountDownLatch;Landroid/media/MediaPlayer;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda14;->f$0:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda14;->f$1:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda14;->f$2:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda14;->f$0:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda14;->f$1:Ljava/util/concurrent/CountDownLatch;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda14;->f$2:Landroid/media/MediaPlayer;

    invoke-static {v0, v1, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->$r8$lambda$Y94fgp6MFUfwicBsHOp3-TmA80M(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;Ljava/util/concurrent/CountDownLatch;Landroid/media/MediaPlayer;)V

    return-void
.end method
