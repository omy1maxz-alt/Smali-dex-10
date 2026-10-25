.class public final synthetic Ljj$/util/stream/DoubleStream$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljj$/util/stream/DoubleStream;


# direct methods
.method public synthetic constructor <init>(Ljj$/util/stream/DoubleStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/DoubleStream$$ExternalSyntheticLambda0;->f$0:Ljj$/util/stream/DoubleStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/DoubleStream$$ExternalSyntheticLambda0;->f$0:Ljj$/util/stream/DoubleStream;

    invoke-interface {v0}, Ljj$/util/stream/BaseStream;->close()V

    return-void
.end method
