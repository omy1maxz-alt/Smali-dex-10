.class public final synthetic Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/os/Handler;

.field public final synthetic f$5:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;ILjava/lang/String;Landroid/os/Handler;Ljava/util/function/Consumer;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda4;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda4;->f$2:I

    iput-object p4, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda4;->f$4:Landroid/os/Handler;

    iput-object p6, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda4;->f$5:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda4;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iget v2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda4;->f$2:I

    iget-object v3, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda4;->f$4:Landroid/os/Handler;

    iget-object v5, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda4;->f$5:Ljava/util/function/Consumer;

    move-object v6, p1

    check-cast v6, Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->$r8$lambda$v83nA29j3-NhG_7-E5-hVCVVQCg(Ljava/util/List;Ljava/util/List;ILjava/lang/String;Landroid/os/Handler;Ljava/util/function/Consumer;Ljava/util/List;)V

    return-void
.end method
