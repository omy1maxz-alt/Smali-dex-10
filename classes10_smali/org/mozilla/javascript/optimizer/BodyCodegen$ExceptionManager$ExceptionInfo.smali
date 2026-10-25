.class Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;
.super Ljava/lang/Object;
.source "BodyCodegen.java"


# instance fields
.field currentFinally:Lorg/mozilla/javascript/Node;

.field exceptionStarts:[I

.field finallyBlock:Lorg/mozilla/javascript/Node;

.field handlerLabels:[I

.field final synthetic this$1:Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;Lorg/mozilla/javascript/ast/Jump;Lorg/mozilla/javascript/Node;)V
    .registers 4

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;->this$1:Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;->finallyBlock:Lorg/mozilla/javascript/Node;

    const/4 p1, 0x5

    new-array p2, p1, [I

    iput-object p2, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;->handlerLabels:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;->exceptionStarts:[I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen$ExceptionManager$ExceptionInfo;->currentFinally:Lorg/mozilla/javascript/Node;

    return-void
.end method
