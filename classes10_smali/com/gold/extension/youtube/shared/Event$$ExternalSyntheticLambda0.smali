.class public final synthetic Lcom/gold/extension/youtube/shared/Event$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/shared/Event$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/shared/Event$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {p0}, Lcom/gold/extension/youtube/shared/Event;->$r8$lambda$fSTr3OcDFEgr6tuv-naww6Ev_BM(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
