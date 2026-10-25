.class public Lorg/mozilla/javascript/ast/VariableDeclaration;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "VariableDeclaration.java"


# instance fields
.field private isStatement:Z

.field private variables:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->variables:Ljava/util/List;

    const/16 v0, 0x7b

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->variables:Ljava/util/List;

    const/16 p1, 0x7b

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->variables:Ljava/util/List;

    const/16 p1, 0x7b

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method private declTypeName()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    invoke-static {v0}, Lorg/mozilla/javascript/Token;->typeToName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addVariable(Lorg/mozilla/javascript/ast/VariableInitializer;)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->variables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public getVariables()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->variables:Ljava/util/List;

    return-object v0
.end method

.method public isConst()Z
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x9b

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isLet()Z
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x9a

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isStatement()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->isStatement:Z

    return v0
.end method

.method public isVar()Z
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public setIsStatement(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->isStatement:Z

    return-void
.end method

.method public setType(I)Lorg/mozilla/javascript/Node;
    .registers 5

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_24

    const/16 v0, 0x9b

    if-eq p1, v0, :cond_24

    const/16 v0, 0x9a

    if-ne p1, v0, :cond_d

    goto :goto_24

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid decl type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    :goto_24
    invoke-super {p0, p1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method public setVariables(Ljava/util/List;)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->variables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/VariableInitializer;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/VariableDeclaration;->addVariable(Lorg/mozilla/javascript/ast/VariableInitializer;)V

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/VariableDeclaration;->declTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->variables:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/ast/AstNode;->printList(Ljava/util/List;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/VariableDeclaration;->isStatement()Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    const-string v2, "\n"

    if-eqz v1, :cond_3f

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    :cond_3f
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/VariableDeclaration;->isStatement()Z

    move-result p1

    if-eqz p1, :cond_48

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_48
    :goto_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .registers 4

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->variables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_c

    :cond_1c
    return-void
.end method
