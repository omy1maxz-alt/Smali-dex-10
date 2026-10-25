.class final Lorg/mozilla/javascript/Interpreter$ContinuationJump;
.super Ljava/lang/Object;
.source "Interpreter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6ab05607ef7f8517L


# instance fields
.field branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

.field capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

.field result:Ljava/lang/Object;

.field resultDbl:D


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Interpreter$CallFrame;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeContinuation;->getImplementation()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Interpreter$CallFrame;

    iput-object p1, p0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz p1, :cond_45

    if-nez p2, :cond_10

    goto :goto_45

    :cond_10
    iget v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    iget v1, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_30

    if-gez v0, :cond_1b

    neg-int v0, v0

    goto :goto_1e

    :cond_1b
    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    :cond_1e
    :goto_1e
    iget-object p2, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1e

    iget v0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    iget v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    if-eq v0, v1, :cond_2d

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_2d
    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    :cond_30
    :goto_30
    if-eq p1, p2, :cond_39

    if-eqz p1, :cond_39

    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object p2, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    goto :goto_30

    :cond_39
    iput-object p1, p0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz p1, :cond_48

    iget-boolean p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez p1, :cond_48

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_48

    :cond_45
    :goto_45
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    :cond_48
    :goto_48
    return-void
.end method
