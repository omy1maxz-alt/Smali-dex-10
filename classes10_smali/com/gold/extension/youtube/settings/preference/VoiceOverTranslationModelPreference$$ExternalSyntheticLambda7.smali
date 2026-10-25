.class public final synthetic Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:[Ljava/lang/Runnable;

.field public final synthetic f$3:Landroid/os/Handler;

.field public final synthetic f$4:[Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Ljava/lang/Runnable;[Ljava/lang/Runnable;Landroid/os/Handler;[Landroid/widget/TextView;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda7;->f$0:[Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda7;->f$2:[Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda7;->f$3:Landroid/os/Handler;

    iput-object p5, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda7;->f$4:[Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda7;->f$0:[Ljava/lang/String;

    iget-object v1, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda7;->f$2:[Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda7;->f$3:Landroid/os/Handler;

    iget-object v4, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference$$ExternalSyntheticLambda7;->f$4:[Landroid/widget/TextView;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationModelPreference;->$r8$lambda$XIACs3eYPGfEWPd-0R8FqgPEDx4([Ljava/lang/String;Ljava/lang/Runnable;[Ljava/lang/Runnable;Landroid/os/Handler;[Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
