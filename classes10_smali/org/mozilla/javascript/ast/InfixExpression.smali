.class public Lorg/mozilla/javascript/ast/InfixExpression;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "InfixExpression.java"


# instance fields
.field protected left:Lorg/mozilla/javascript/ast/AstNode;

.field protected operatorPosition:I

.field protected right:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->operatorPosition:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/ast/InfixExpression;->operatorPosition:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/ast/InfixExpression;->operatorPosition:I

    return-void
.end method

.method public constructor <init>(IILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/ast/InfixExpression;->operatorPosition:I

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeft(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {p0, p4}, Lorg/mozilla/javascript/ast/InfixExpression;->setRight(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public constructor <init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V
    .registers 6

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->operatorPosition:I

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result p1

    sub-int/2addr p4, p1

    invoke-virtual {p0, p4}, Lorg/mozilla/javascript/ast/InfixExpression;->setOperatorPosition(I)V

    invoke-virtual {p0, p2, p3}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeftAndRight(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 4

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->operatorPosition:I

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeftAndRight(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method


# virtual methods
.method public getLeft()Lorg/mozilla/javascript/ast/AstNode;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->left:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getOperator()I
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    return v0
.end method

.method public getOperatorPosition()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->operatorPosition:I

    return v0
.end method

.method public getRight()Lorg/mozilla/javascript/ast/AstNode;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->right:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public hasSideEffects()Z
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x5a

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x69

    if-eq v0, v1, :cond_17

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_17

    invoke-super {p0}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v0

    return v0

    :cond_17
    iget-object v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->left:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v0

    if-nez v0, :cond_2d

    :cond_21
    iget-object v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->right:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :cond_2d
    :goto_2d
    return v2

    :cond_2e
    iget-object v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->right:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v2, 0x0

    :goto_3a
    return v2
.end method

.method public setLeft(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/InfixExpression;->left:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public setLeftAndRight(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 6

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/ast/AstNode;->setBounds(II)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeft(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/InfixExpression;->setRight(Lorg/mozilla/javascript/ast/AstNode;)V

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

.method public setOperatorPosition(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/ast/InfixExpression;->operatorPosition:I

    return-void
.end method

.method public setRight(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/InfixExpression;->right:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/mozilla/javascript/ast/InfixExpression;->left:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    invoke-static {v1}, Lorg/mozilla/javascript/ast/AstNode;->operatorToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/mozilla/javascript/ast/InfixExpression;->right:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .registers 3

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->left:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    iget-object v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->right:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_10
    return-void
.end method
