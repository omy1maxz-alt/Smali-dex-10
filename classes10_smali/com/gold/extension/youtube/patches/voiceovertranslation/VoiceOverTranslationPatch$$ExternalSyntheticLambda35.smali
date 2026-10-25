.class public final synthetic Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda35;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda35;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda35;->f$0:Ljava/util/List;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda35;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->$r8$lambda$FNGPnJfUucOWDJpGKk3pJ9f7WqU(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
