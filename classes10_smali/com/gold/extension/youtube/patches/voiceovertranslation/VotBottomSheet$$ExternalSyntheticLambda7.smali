.class public final synthetic Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/IntegerSetting;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/IntegerSetting;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda7;->f$0:Lcom/gold/extension/shared/settings/IntegerSetting;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda7;->f$0:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/Setting;->save(Ljava/lang/Object;)V

    return-void
.end method
