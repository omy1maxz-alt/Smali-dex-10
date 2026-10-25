.class Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;
.super Ljava/lang/Object;
.source "BodyCodegen.java"


# instance fields
.field public jsrPoints:Ljava/util/List;

.field public tableLabel:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;->jsrPoints:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/optimizer/BodyCodegen$FinallyReturnPoint;->tableLabel:I

    return-void
.end method
