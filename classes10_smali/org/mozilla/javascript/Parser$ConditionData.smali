.class Lorg/mozilla/javascript/Parser$ConditionData;
.super Ljava/lang/Object;
.source "Parser.java"


# instance fields
.field condition:Lorg/mozilla/javascript/ast/AstNode;

.field lp:I

.field rp:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    iput v0, p0, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/mozilla/javascript/Parser$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser$ConditionData;-><init>()V

    return-void
.end method
