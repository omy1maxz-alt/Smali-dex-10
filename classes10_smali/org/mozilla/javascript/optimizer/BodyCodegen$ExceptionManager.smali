.class Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;
.super Ljava/lang/Object;
.source "BodyCodegen.java"


# instance fields
.field private exceptionInfo:Ljava/util/LinkedList;

.field final synthetic this$0:Lorg/mozilla/javascript/optimizer/BodyCodegen;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/optimizer/BodyCodegen;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->this$0:Lorg/mozilla/javascript/optimizer/BodyCodegen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->exceptionInfo:Ljava/util/LinkedList;

    return-void
.end method

.method private endCatch(Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;II)V
    .registers 6

    iget-object v0, p1, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;->exceptionStarts:[I

    aget v1, v0, p2

    if-eqz v1, :cond_2e

    aget v0, v0, p2

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->this$0:Lorg/mozilla/javascript/optimizer/BodyCodegen;

    iget-object v1, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->this$0:Lorg/mozilla/javascript/optimizer/BodyCodegen;

    iget-object v1, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v1

    if-eq v0, v1, :cond_2d

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->this$0:Lorg/mozilla/javascript/optimizer/BodyCodegen;

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v1, p1, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;->exceptionStarts:[I

    aget v1, v1, p2

    iget-object p1, p1, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;->handlerLabels:[I

    aget p1, p1, p2

    invoke-static {p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->access$100(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p3, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addExceptionHandler(IIILjava/lang/String;)V

    :cond_2d
    return-void

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "bad exception start"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getTop()Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->exceptionInfo:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;

    return-object v0
.end method


# virtual methods
.method addHandler(III)V
    .registers 6

    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->getTop()Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;

    move-result-object v0

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;->handlerLabels:[I

    aput p2, v1, p1

    iget-object p2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;->exceptionStarts:[I

    aput p3, p2, p1

    return-void
.end method

.method markInlineFinallyEnd(Lorg/mozilla/javascript/Node;I)V
    .registers 7

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->exceptionInfo:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;

    const/4 v2, 0x0

    :goto_17
    const/4 v3, 0x5

    if-ge v2, v3, :cond_2e

    iget-object v3, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;->handlerLabels:[I

    aget v3, v3, v2

    if-eqz v3, :cond_2b

    iget-object v3, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;->currentFinally:Lorg/mozilla/javascript/Node;

    if-ne v3, p1, :cond_2b

    iget-object v3, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;->exceptionStarts:[I

    aput p2, v3, v2

    const/4 v3, 0x0

    iput-object v3, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;->currentFinally:Lorg/mozilla/javascript/Node;

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2e
    iget-object v1, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;->finallyBlock:Lorg/mozilla/javascript/Node;

    if-ne v1, p1, :cond_a

    :cond_32
    return-void
.end method

.method markInlineFinallyStart(Lorg/mozilla/javascript/Node;I)V
    .registers 8

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->exceptionInfo:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_18
    const/4 v4, 0x5

    if-ge v3, v4, :cond_31

    iget-object v4, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;->handlerLabels:[I

    aget v4, v4, v3

    if-eqz v4, :cond_2e

    iget-object v4, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;->currentFinally:Lorg/mozilla/javascript/Node;

    if-nez v4, :cond_2e

    invoke-direct {p0, v1, v3, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->endCatch(Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;II)V

    iget-object v4, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;->exceptionStarts:[I

    aput v2, v4, v3

    iput-object p1, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;->currentFinally:Lorg/mozilla/javascript/Node;

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_31
    iget-object v1, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;->finallyBlock:Lorg/mozilla/javascript/Node;

    if-ne v1, p1, :cond_a

    :cond_35
    return-void
.end method

.method popExceptionInfo()V
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->exceptionInfo:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    return-void
.end method

.method pushExceptionInfo(Lorg/mozilla/javascript/ast/Jump;)V
    .registers 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->access$000(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;

    invoke-direct {v1, p0, p1, v0}, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;-><init>(Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;Lorg/mozilla/javascript/ast/Jump;Lorg/mozilla/javascript/Node;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->exceptionInfo:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method removeHandler(II)I
    .registers 7

    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->getTop()Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;

    move-result-object v0

    iget-object v1, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;->handlerLabels:[I

    aget v2, v1, p1

    const/4 v3, 0x0

    if-eqz v2, :cond_15

    aget v1, v1, p1

    invoke-direct {p0, v0, p1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->endCatch(Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;II)V

    iget-object p2, v0, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;->handlerLabels:[I

    aput v3, p2, p1

    return v1

    :cond_15
    return v3
.end method

.method setHandlers([II)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_10

    aget v1, p1, v0

    if-eqz v1, :cond_d

    aget v1, p1, v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;->addHandler(III)V

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method
