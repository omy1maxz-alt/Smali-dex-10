.class final Lio/reactivex/rxjava3/internal/functions/Functions$ActionConsumer;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field final action:Lio/reactivex/rxjava3/functions/Action;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/functions/Action;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/functions/Functions$ActionConsumer;->action:Lio/reactivex/rxjava3/functions/Action;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/functions/Functions$ActionConsumer;->action:Lio/reactivex/rxjava3/functions/Action;

    invoke-interface {p1}, Lio/reactivex/rxjava3/functions/Action;->run()V

    return-void
.end method
