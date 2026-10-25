.class public final synthetic Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$$ExternalSyntheticLambda8;->f$0:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$$ExternalSyntheticLambda8;->f$0:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    check-cast p1, Lcom/gold/extension/youtube/shared/PlayerType;

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->$r8$lambda$T-9np5IGxkVgkc8jBJRIQmlUjv0(Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;Lcom/gold/extension/youtube/shared/PlayerType;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
