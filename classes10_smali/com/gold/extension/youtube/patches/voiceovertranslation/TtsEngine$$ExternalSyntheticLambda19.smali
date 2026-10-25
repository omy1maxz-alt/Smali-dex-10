.class public final synthetic Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;JLjava/lang/Runnable;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda19;->f$0:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    iput-wide p2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda19;->f$1:J

    iput-object p4, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda19;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda19;->f$0:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    iget-wide v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda19;->f$1:J

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda19;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->$r8$lambda$gEib0ie5gflSOrAS4A01oGXV3Xo(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;JLjava/lang/Runnable;)V

    return-void
.end method
