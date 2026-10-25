.class public Lorg/mozilla/javascript/ast/IfStatement;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "IfStatement.java"


# instance fields
.field private condition:Lorg/mozilla/javascript/ast/AstNode;

.field private elseKeyWordInlineComment:Lorg/mozilla/javascript/ast/AstNode;

.field private elsePart:Lorg/mozilla/javascript/ast/AstNode;

.field private elsePosition:I

.field private lp:I

.field private rp:I

.field private thenPart:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePosition:I

    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    const/16 v0, 0x71

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePosition:I

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    const/16 p1, 0x71

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePosition:I

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    const/16 p1, 0x71

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method


# virtual methods
.method public getCondition()Lorg/mozilla/javascript/ast/AstNode;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->condition:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getElseKeyWordInlineComment()Lorg/mozilla/javascript/ast/AstNode;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elseKeyWordInlineComment:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getElsePart()Lorg/mozilla/javascript/ast/AstNode;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getElsePosition()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePosition:I

    return v0
.end method

.method public getLp()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    return v0
.end method

.method public getRp()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    return v0
.end method

.method public getThenPart()Lorg/mozilla/javascript/ast/AstNode;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setCondition(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public setElseKeyWordInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->elseKeyWordInlineComment:Lorg/mozilla/javascript/ast/AstNode;

    return-void
.end method

.method public setElsePart(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_7
    return-void
.end method

.method public setElsePosition(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePosition:I

    return-void
.end method

.method public setLp(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    return-void
.end method

.method public setParens(II)V
    .registers 3

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    iput p2, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    return-void
.end method

.method public setRp(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    return-void
.end method

.method public setThenPart(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .registers 8

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "if ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mozilla/javascript/ast/IfStatement;->condition:Lorg/mozilla/javascript/ast/AstNode;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    const-string v3, "    "

    const-string v4, "\n"

    if-eqz v2, :cond_3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    iget-object v2, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v5, 0x82

    if-eq v2, v5, :cond_59

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    if-nez v2, :cond_50

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_50
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_59
    iget-object v2, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v2, :cond_cb

    iget-object v2, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    if-eq v2, v5, :cond_7e

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "else "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_83

    :cond_7e
    const-string v0, " else "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_83
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/IfStatement;->getElseKeyWordInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    if-eqz v0, :cond_9a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/IfStatement;->getElseKeyWordInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->toSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9a
    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    if-eq v0, v5, :cond_be

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v2, 0x71

    if-eq v0, v2, :cond_be

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/IfStatement;->getElseKeyWordInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    if-nez v0, :cond_b5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b5
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_be
    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_cb
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .registers 3

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_17
    return-void
.end method
