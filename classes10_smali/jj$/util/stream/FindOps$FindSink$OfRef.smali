.class final Ljj$/util/stream/FindOps$FindSink$OfRef;
.super Ljj$/util/stream/FindOps$FindSink;
.source "FindOps.java"


# static fields
.field static final OP_FIND_ANY:Ljj$/util/stream/TerminalOp;

.field static final OP_FIND_FIRST:Ljj$/util/stream/TerminalOp;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Ljj$/util/stream/FindOps$FindOp;

    sget-object v2, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    invoke-static {}, Ljj$/util/Optional;->empty()Ljj$/util/Optional;

    move-result-object v3

    new-instance v4, Ljj$/util/stream/FindOps$FindSink$OfRef$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljj$/util/stream/FindOps$FindSink$OfRef$$ExternalSyntheticLambda0;-><init>()V

    new-instance v5, Ljj$/util/stream/FindOps$FindSink$OfRef$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Ljj$/util/stream/FindOps$FindSink$OfRef$$ExternalSyntheticLambda1;-><init>()V

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/FindOps$FindOp;-><init>(ZLjj$/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v0, Ljj$/util/stream/FindOps$FindSink$OfRef;->OP_FIND_FIRST:Ljj$/util/stream/TerminalOp;

    new-instance v1, Ljj$/util/stream/FindOps$FindOp;

    sget-object v3, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    invoke-static {}, Ljj$/util/Optional;->empty()Ljj$/util/Optional;

    move-result-object v4

    new-instance v5, Ljj$/util/stream/FindOps$FindSink$OfRef$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljj$/util/stream/FindOps$FindSink$OfRef$$ExternalSyntheticLambda0;-><init>()V

    new-instance v6, Ljj$/util/stream/FindOps$FindSink$OfRef$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Ljj$/util/stream/FindOps$FindSink$OfRef$$ExternalSyntheticLambda1;-><init>()V

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Ljj$/util/stream/FindOps$FindOp;-><init>(ZLjj$/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v1, Ljj$/util/stream/FindOps$FindSink$OfRef;->OP_FIND_ANY:Ljj$/util/stream/TerminalOp;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljj$/util/stream/FindOps$FindSink;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/FindOps$FindSink$OfRef;->get()Ljj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljj$/util/Optional;
    .registers 2

    iget-boolean v0, p0, Ljj$/util/stream/FindOps$FindSink$OfRef;->hasValue:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljj$/util/stream/FindOps$FindSink$OfRef;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljj$/util/Optional;->of(Ljava/lang/Object;)Ljj$/util/Optional;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method
