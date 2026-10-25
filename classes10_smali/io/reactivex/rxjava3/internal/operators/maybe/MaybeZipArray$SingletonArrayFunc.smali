.class final Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$SingletonArrayFunc;
.super Ljava/lang/Object;
.source "MaybeZipArray.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field final synthetic this$0:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray;)V
    .registers 2

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$SingletonArrayFunc;->this$0:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray$SingletonArrayFunc;->this$0:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeZipArray;->zipper:Lio/reactivex/rxjava3/functions/Function;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The zipper returned a null value"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p1
.end method
