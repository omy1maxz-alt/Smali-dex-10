.class public Lorg/mozilla/javascript/ast/Yield;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "Yield.java"


# instance fields
.field private value:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/16 v0, 0x49

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/16 p1, 0x49

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/16 p1, 0x49

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(IILorg/mozilla/javascript/ast/AstNode;Z)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    if-eqz p4, :cond_8

    const/16 p1, 0xa6

    goto :goto_a

    :cond_8
    const/16 p1, 0x49

    :goto_a
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/Yield;->setValue(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method


# virtual methods
.method public getValue()Lorg/mozilla/javascript/ast/AstNode;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/Yield;->value:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setValue(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/ast/Yield;->value:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_7
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .registers 4

    iget-object p1, p0, Lorg/mozilla/javascript/ast/Yield;->value:Lorg/mozilla/javascript/ast/AstNode;

    if-nez p1, :cond_8

    const-string/jumbo p1, "yield"

    goto :goto_21

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "yield "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/mozilla/javascript/ast/Yield;->value:Lorg/mozilla/javascript/ast/AstNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_21
    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .registers 3

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/mozilla/javascript/ast/Yield;->value:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_d
    return-void
.end method
