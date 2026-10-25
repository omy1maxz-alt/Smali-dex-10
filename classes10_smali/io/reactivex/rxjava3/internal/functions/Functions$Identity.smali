.class final Lio/reactivex/rxjava3/internal/functions/Functions$Identity;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "IdentityFunction"

    return-object v0
.end method
