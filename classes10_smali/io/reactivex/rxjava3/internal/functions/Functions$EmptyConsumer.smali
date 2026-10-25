.class final Lio/reactivex/rxjava3/internal/functions/Functions$EmptyConsumer;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "EmptyConsumer"

    return-object v0
.end method
