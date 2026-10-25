.class public final synthetic Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/function/Consumer;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:[Z


# direct methods
.method public synthetic constructor <init>(ILjava/util/function/Consumer;Ljava/util/List;[Z)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda16;->f$0:I

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda16;->f$1:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda16;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda16;->f$3:[Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda16;->f$0:I

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda16;->f$1:Ljava/util/function/Consumer;

    iget-object v2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda16;->f$2:Ljava/util/List;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda16;->f$3:[Z

    invoke-static {v0, v1, v2, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->$r8$lambda$TA2EbRVYDmYlmNolIXL9iZGAL8A(ILjava/util/function/Consumer;Ljava/util/List;[Z)V

    return-void
.end method
