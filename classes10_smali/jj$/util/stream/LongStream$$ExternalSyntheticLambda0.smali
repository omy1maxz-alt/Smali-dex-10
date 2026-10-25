.class public final synthetic Ljj$/util/stream/LongStream$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljj$/util/stream/LongStream;


# direct methods
.method public synthetic constructor <init>(Ljj$/util/stream/LongStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/LongStream$$ExternalSyntheticLambda0;->f$0:Ljj$/util/stream/LongStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/LongStream$$ExternalSyntheticLambda0;->f$0:Ljj$/util/stream/LongStream;

    invoke-interface {v0}, Ljj$/util/stream/BaseStream;->close()V

    return-void
.end method
