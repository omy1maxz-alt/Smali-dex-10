.class public Lorg/mozilla/javascript/ast/Assignment;
.super Lorg/mozilla/javascript/ast/InfixExpression;
.source "Assignment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(I)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(II)V

    return-void
.end method

.method public constructor <init>(IILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public constructor <init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method
