.class public final synthetic Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:J

.field public final synthetic f$6:F

.field public final synthetic f$7:F

.field public final synthetic f$8:J


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JFFJ)V
    .registers 12

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda20;->f$0:Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda20;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda20;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda20;->f$3:I

    iput-object p5, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda20;->f$4:Ljava/lang/String;

    iput-wide p6, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda20;->f$5:J

    iput p8, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda20;->f$6:F

    iput p9, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda20;->f$7:F

    iput-wide p10, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda20;->f$8:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda20;->f$0:Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda20;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda20;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda20;->f$3:I

    iget-object v4, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda20;->f$4:Ljava/lang/String;

    iget-wide v5, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda20;->f$5:J

    iget v7, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda20;->f$6:F

    iget v8, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda20;->f$7:F

    iget-wide v9, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda20;->f$8:J

    invoke-static/range {v0 .. v10}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->$r8$lambda$jIvXeTtKVFkDS-p5hKnGwVqMiSo(Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JFFJ)V

    return-void
.end method
