.class public Lorg/mozilla/javascript/ast/KeywordLiteral;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "KeywordLiteral.java"


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

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/KeywordLiteral;->setType(I)Lorg/mozilla/javascript/ast/KeywordLiteral;

    return-void
.end method


# virtual methods
.method public isBooleanLiteral()Z
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_d

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public bridge synthetic setType(I)Lorg/mozilla/javascript/Node;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/KeywordLiteral;->setType(I)Lorg/mozilla/javascript/ast/KeywordLiteral;

    move-result-object p1

    return-object p1
.end method

.method public setType(I)Lorg/mozilla/javascript/ast/KeywordLiteral;
    .registers 5

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_2c

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_2c

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_2c

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_2c

    const/16 v0, 0xa1

    if-ne p1, v0, :cond_15

    goto :goto_2c

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    :goto_2c
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-object p0
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

    const/16 v1, 0xa1

    if-eq p1, v1, :cond_4c

    packed-switch p1, :pswitch_data_56

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid keyword literal type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_32  #0x2d
    const-string/jumbo p1, "true"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_51

    :pswitch_39  #0x2c
    const-string p1, "false"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_51

    :pswitch_3f  #0x2b
    const-string/jumbo p1, "this"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_51

    :pswitch_46  #0x2a
    const-string p1, "null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_51

    :cond_4c
    const-string p1, "debugger;\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_56
    .packed-switch 0x2a
        :pswitch_46  #0000002a
        :pswitch_3f  #0000002b
        :pswitch_39  #0000002c
        :pswitch_32  #0000002d
    .end packed-switch
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    return-void
.end method
