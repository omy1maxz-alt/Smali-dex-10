.class public Lorg/mozilla/javascript/ast/ExpressionStatement;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "ExpressionStatement.java"


# instance fields
.field private expr:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/16 v0, 0x86

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/16 p1, 0x86

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(IILorg/mozilla/javascript/ast/AstNode;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/16 p1, 0x86

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/ExpressionStatement;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/ast/AstNode;Z)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;)V

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ExpressionStatement;->setHasResult()V

    :cond_8
    return-void
.end method


# virtual methods
.method public getExpression()Lorg/mozilla/javascript/ast/AstNode;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ExpressionStatement;->expr:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public hasSideEffects()Z
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x87

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ExpressionStatement;->expr:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public setExpression(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ExpressionStatement;->expr:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-void
.end method

.method public setHasResult()V
    .registers 2

    const/16 v0, 0x87

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/mozilla/javascript/ast/ExpressionStatement;->expr:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .registers 3

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ExpressionStatement;->expr:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_b
    return-void
.end method
