.class final Lio/reactivex/rxjava3/internal/functions/ObjectHelper$BiObjectPredicate;
.super Ljava/lang/Object;
.source "ObjectHelper.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/BiPredicate;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
