.class public Lorg/mozilla/javascript/ast/AstNode$DebugPrintVisitor;
.super Ljava/lang/Object;
.source "AstNode.java"

# interfaces
.implements Lorg/mozilla/javascript/ast/NodeVisitor;


# static fields
.field private static final DEBUG_INDENT:I = 0x2


# instance fields
.field private buffer:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/AstNode$DebugPrintVisitor;->buffer:Ljava/lang/StringBuilder;

    return-void
.end method

.method private static makeIndent(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 p0, p0, 0x2

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_8
    if-ge v1, p0, :cond_12

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/AstNode$DebugPrintVisitor;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/mozilla/javascript/ast/AstNode;)Z
    .registers 6

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/Token;->typeToName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/ast/AstNode$DebugPrintVisitor;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getAbsolutePosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mozilla/javascript/ast/AstNode$DebugPrintVisitor;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->depth()I

    move-result v3

    invoke-static {v3}, Lorg/mozilla/javascript/ast/AstNode$DebugPrintVisitor;->makeIndent(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mozilla/javascript/ast/AstNode$DebugPrintVisitor;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mozilla/javascript/ast/AstNode$DebugPrintVisitor;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mozilla/javascript/ast/AstNode$DebugPrintVisitor;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/16 v3, 0x27

    if-ne v0, v3, :cond_56

    iget-object v0, p0, Lorg/mozilla/javascript/ast/AstNode$DebugPrintVisitor;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_68

    :cond_56
    const/16 v3, 0x29

    if-ne v0, v3, :cond_68

    iget-object v0, p0, Lorg/mozilla/javascript/ast/AstNode$DebugPrintVisitor;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lorg/mozilla/javascript/ast/StringLiteral;

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/ast/StringLiteral;->getValue(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_68
    :goto_68
    iget-object p1, p0, Lorg/mozilla/javascript/ast/AstNode$DebugPrintVisitor;->buffer:Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2
.end method
