.class public Lorg/mozilla/javascript/ast/Jump;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "Jump.java"


# instance fields
.field private jumpNode:Lorg/mozilla/javascript/ast/Jump;

.field public target:Lorg/mozilla/javascript/Node;

.field private target2:Lorg/mozilla/javascript/Node;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/Jump;-><init>(I)V

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-void
.end method

.method public constructor <init>(ILorg/mozilla/javascript/Node;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/Jump;-><init>(I)V

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-void
.end method

.method public constructor <init>(ILorg/mozilla/javascript/Node;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/Jump;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-void
.end method


# virtual methods
.method public getContinue()Lorg/mozilla/javascript/Node;
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x85

    if-eq v0, v1, :cond_9

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    return-object v0
.end method

.method public getDefault()Lorg/mozilla/javascript/Node;
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x73

    if-eq v0, v1, :cond_9

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    return-object v0
.end method

.method public getFinally()Lorg/mozilla/javascript/Node;
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x52

    if-eq v0, v1, :cond_9

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    return-object v0
.end method

.method public getJumpStatement()Lorg/mozilla/javascript/ast/Jump;
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x79

    if-eq v0, v1, :cond_d

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_d

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_d
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    return-object v0
.end method

.method public getLoop()Lorg/mozilla/javascript/ast/Jump;
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x83

    if-eq v0, v1, :cond_9

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    return-object v0
.end method

.method public setContinue(Lorg/mozilla/javascript/Node;)V
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x85

    if-eq v0, v1, :cond_9

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x84

    if-eq v0, v1, :cond_14

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_14
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_1b

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_1b
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    return-void
.end method

.method public setDefault(Lorg/mozilla/javascript/Node;)V
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x73

    if-eq v0, v1, :cond_9

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x84

    if-eq v0, v1, :cond_14

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_14
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_1b

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_1b
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    return-void
.end method

.method public setFinally(Lorg/mozilla/javascript/Node;)V
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x52

    if-eq v0, v1, :cond_9

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x84

    if-eq v0, v1, :cond_14

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_14
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_1b

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_1b
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Jump;->target2:Lorg/mozilla/javascript/Node;

    return-void
.end method

.method public setJumpStatement(Lorg/mozilla/javascript/ast/Jump;)V
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x79

    if-eq v0, v1, :cond_d

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_d

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_d
    if-nez p1, :cond_12

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_12
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    if-eqz v0, :cond_19

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_19
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    return-void
.end method

.method public setLoop(Lorg/mozilla/javascript/ast/Jump;)V
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x83

    if-eq v0, v1, :cond_9

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    if-nez p1, :cond_e

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_e
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    if-eqz v0, :cond_15

    invoke-static {}, Lorg/mozilla/javascript/ast/AstNode;->codeBug()Ljava/lang/RuntimeException;

    :cond_15
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Jump;->jumpNode:Lorg/mozilla/javascript/ast/Jump;

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
