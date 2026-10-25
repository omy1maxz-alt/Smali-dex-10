.class public final synthetic Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Exception;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->$r8$lambda$FgK7eRVqQTpb47gdIryrW56sw_Q(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
