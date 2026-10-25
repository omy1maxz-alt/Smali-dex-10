.class public final synthetic Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda11;->f$0:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda11;->f$0:Ljava/util/concurrent/CountDownLatch;

    invoke-static {p0, p1, p2, p3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->$r8$lambda$MpL7qIrCyJHH3YjQhaOPWFWM-84(Ljava/util/concurrent/CountDownLatch;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method
