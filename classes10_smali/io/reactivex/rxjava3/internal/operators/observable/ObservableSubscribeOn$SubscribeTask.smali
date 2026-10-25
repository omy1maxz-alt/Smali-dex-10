.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn$SubscribeTask;
.super Ljava/lang/Object;
.source "ObservableSubscribeOn.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;

.field final synthetic this$0:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn;Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;)V
    .registers 3

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn$SubscribeTask;->this$0:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn$SubscribeTask;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn$SubscribeTask;->this$0:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/rxjava3/core/ObservableSource;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn$SubscribeTask;->parent:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/ObservableSource;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    return-void
.end method
