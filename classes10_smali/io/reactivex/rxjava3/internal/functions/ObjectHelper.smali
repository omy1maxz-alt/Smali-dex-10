.class public abstract Lio/reactivex/rxjava3/internal/functions/ObjectHelper;
.super Ljava/lang/Object;
.source "ObjectHelper.java"


# static fields
.field static final EQUALS:Lio/reactivex/rxjava3/functions/BiPredicate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/reactivex/rxjava3/internal/functions/ObjectHelper$BiObjectPredicate;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/functions/ObjectHelper$BiObjectPredicate;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/functions/ObjectHelper;->EQUALS:Lio/reactivex/rxjava3/functions/BiPredicate;

    return-void
.end method

.method public static equalsPredicate()Lio/reactivex/rxjava3/functions/BiPredicate;
    .registers 1

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/ObjectHelper;->EQUALS:Lio/reactivex/rxjava3/functions/BiPredicate;

    return-object v0
.end method

.method public static verifyPositive(ILjava/lang/String;)I
    .registers 4

    if-lez p0, :cond_3

    return p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " > 0 required but it was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
