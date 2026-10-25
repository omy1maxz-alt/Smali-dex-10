.class public Lorg/mozilla/javascript/ast/SwitchStatement;
.super Lorg/mozilla/javascript/ast/Jump;
.source "SwitchStatement.java"


# static fields
.field private static final NO_CASES:Ljava/util/List;


# instance fields
.field private cases:Ljava/util/List;

.field private expression:Lorg/mozilla/javascript/ast/AstNode;

.field private lp:I

.field private rp:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ast/SwitchStatement;->NO_CASES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->lp:I

    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->rp:I

    const/16 v0, 0x73

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->lp:I

    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->rp:I

    const/16 v0, 0x73

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    iput p1, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->lp:I

    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->rp:I

    const/16 v0, 0x73

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    iput p1, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    iput p2, p0, Lorg/mozilla/javascript/ast/AstNode;->length:I

    return-void
.end method


# virtual methods
.method public addCase(Lorg/mozilla/javascript/ast/SwitchCase;)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    :cond_e
    iget-object v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public getCases()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    sget-object v0, Lorg/mozilla/javascript/ast/SwitchStatement;->NO_CASES:Ljava/util/List;

    :goto_7
    return-object v0
.end method

.method public getExpression()Lorg/mozilla/javascript/ast/AstNode;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->expression:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getLp()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->lp:I

    return v0
.end method

.method public getRp()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->rp:I

    return v0
.end method

.method public setCases(Ljava/util/List;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    goto :goto_21

    :cond_6
    iget-object v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/SwitchCase;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/SwitchStatement;->addCase(Lorg/mozilla/javascript/ast/SwitchCase;)V

    goto :goto_11

    :cond_21
    :goto_21
    return-void
.end method

.method public setExpression(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->expression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public setLp(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->lp:I

    return-void
.end method

.method public setParens(II)V
    .registers 3

    iput p1, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->lp:I

    iput p2, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->rp:I

    return-void
.end method

.method public setRp(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->rp:I

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "switch ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->expression:Lorg/mozilla/javascript/ast/AstNode;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    if-eqz v2, :cond_3f

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/SwitchCase;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/SwitchCase;->toSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    :cond_3f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .registers 4

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->expression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/SwitchStatement;->getCases()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/SwitchCase;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/SwitchCase;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_13

    :cond_23
    return-void
.end method
