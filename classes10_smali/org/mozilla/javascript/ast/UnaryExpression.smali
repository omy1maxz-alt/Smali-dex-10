.class public Lorg/mozilla/javascript/ast/UnaryExpression;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "UnaryExpression.java"


# instance fields
.field private isPostfix:Z

.field private operand:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    return-void
.end method

.method public constructor <init>(IILorg/mozilla/javascript/ast/AstNode;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;Z)V

    return-void
.end method

.method public constructor <init>(IILorg/mozilla/javascript/ast/AstNode;Z)V
    .registers 7

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    if-eqz p4, :cond_d

    invoke-virtual {p3}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    goto :goto_e

    :cond_d
    move v0, p2

    :goto_e
    if-eqz p4, :cond_13

    add-int/lit8 p2, p2, 0x2

    goto :goto_1c

    :cond_13
    invoke-virtual {p3}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result p2

    invoke-virtual {p3}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v1

    add-int/2addr p2, v1

    :goto_1c
    invoke-virtual {p0, v0, p2}, Lorg/mozilla/javascript/ast/AstNode;->setBounds(II)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->setOperator(I)V

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/UnaryExpression;->setOperand(Lorg/mozilla/javascript/ast/AstNode;)V

    iput-boolean p4, p0, Lorg/mozilla/javascript/ast/UnaryExpression;->isPostfix:Z

    return-void
.end method


# virtual methods
.method public getOperand()Lorg/mozilla/javascript/ast/AstNode;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/UnaryExpression;->operand:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getOperator()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return v0
.end method

.method public isPostfix()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/ast/UnaryExpression;->isPostfix:Z

    return v0
.end method

.method public isPrefix()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/ast/UnaryExpression;->isPostfix:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setIsPostfix(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/mozilla/javascript/ast/UnaryExpression;->isPostfix:Z

    return-void
.end method

.method public setOperand(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/UnaryExpression;->operand:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public setOperator(I)V
    .registers 5

    invoke-static {p1}, Lorg/mozilla/javascript/Token;->isValidToken(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toSource(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    iget-boolean v1, p0, Lorg/mozilla/javascript/ast/UnaryExpression;->isPostfix:Z

    if-nez v1, :cond_2c

    invoke-static {p1}, Lorg/mozilla/javascript/ast/AstNode;->operatorToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    if-eq p1, v1, :cond_27

    const/16 v1, 0x1f

    if-eq p1, v1, :cond_27

    const/16 v1, 0x7f

    if-ne p1, v1, :cond_2c

    :cond_27
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    iget-object v1, p0, Lorg/mozilla/javascript/ast/UnaryExpression;->operand:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->toSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/mozilla/javascript/ast/UnaryExpression;->isPostfix:Z

    if-eqz v1, :cond_40

    invoke-static {p1}, Lorg/mozilla/javascript/ast/AstNode;->operatorToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .registers 3

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/mozilla/javascript/ast/UnaryExpression;->operand:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_b
    return-void
.end method
