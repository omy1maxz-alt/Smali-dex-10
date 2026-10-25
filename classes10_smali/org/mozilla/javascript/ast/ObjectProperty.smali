.class public Lorg/mozilla/javascript/ast/ObjectProperty;
.super Lorg/mozilla/javascript/ast/InfixExpression;
.source "ObjectProperty.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>()V

    const/16 v0, 0x68

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(I)V

    const/16 p1, 0x68

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(II)V

    const/16 p1, 0x68

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method


# virtual methods
.method public isGetterMethod()Z
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x98

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isMethod()Z
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ObjectProperty;->isGetterMethod()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ObjectProperty;->isSetterMethod()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ObjectProperty;->isNormalMethod()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public isNormalMethod()Z
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0xa4

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isSetterMethod()Z
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x99

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public setIsGetterMethod()V
    .registers 2

    const/16 v0, 0x98

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public setIsNormalMethod()V
    .registers 2

    const/16 v0, 0xa4

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public setIsSetterMethod()V
    .registers 2

    const/16 v0, 0x99

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public setNodeType(I)V
    .registers 5

    const/16 v0, 0x68

    if-eq p1, v0, :cond_28

    const/16 v0, 0x98

    if-eq p1, v0, :cond_28

    const/16 v0, 0x99

    if-eq p1, v0, :cond_28

    const/16 v0, 0xa4

    if-ne p1, v0, :cond_11

    goto :goto_28

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :goto_28
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ObjectProperty;->isGetterMethod()Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "get "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    :cond_1f
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ObjectProperty;->isSetterMethod()Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string v2, "set "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    :goto_2a
    iget-object v2, p0, Lorg/mozilla/javascript/ast/InfixExpression;->left:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x68

    if-ne v3, v5, :cond_36

    const/4 p1, 0x0

    :cond_36
    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/mozilla/javascript/Node;->type:I

    if-ne p1, v5, :cond_46

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    iget-object p1, p0, Lorg/mozilla/javascript/ast/InfixExpression;->right:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    if-ne v2, v5, :cond_4f

    const/4 v1, 0x0

    :cond_4f
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
