.class abstract Ljj$/util/stream/ReduceOps$Box;
.super Ljava/lang/Object;
.source "ReduceOps.java"


# instance fields
.field state:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    return-object v0
.end method
