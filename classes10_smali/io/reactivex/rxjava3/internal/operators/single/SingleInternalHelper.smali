.class public abstract Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper;
.super Ljava/lang/Object;
.source "SingleInternalHelper.java"


# direct methods
.method public static emptyThrower()Lio/reactivex/rxjava3/functions/Supplier;
    .registers 1

    sget-object v0, Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper$NoSuchElementSupplier;->INSTANCE:Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper$NoSuchElementSupplier;

    return-object v0
.end method
