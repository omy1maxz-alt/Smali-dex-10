.class public final synthetic Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda17;->f$0:Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda17;->f$0:Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->$r8$lambda$lJA8QlJzJpb9hLFp6V7NuSkad3Y(Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
