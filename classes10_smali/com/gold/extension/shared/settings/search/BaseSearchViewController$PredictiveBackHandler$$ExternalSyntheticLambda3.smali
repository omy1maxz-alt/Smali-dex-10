.class public final synthetic Lcom/gold/extension/shared/settings/search/BaseSearchViewController$PredictiveBackHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$PredictiveBackHandler$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$PredictiveBackHandler$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
