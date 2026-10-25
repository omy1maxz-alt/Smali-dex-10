.class public Lorg/mozilla/javascript/ast/ParseProblem;
.super Ljava/lang/Object;
.source "ParseProblem.java"


# instance fields
.field private length:I

.field private message:Ljava/lang/String;

.field private offset:I

.field private sourceName:Ljava/lang/String;

.field private type:Lorg/mozilla/javascript/ast/ParseProblem$Type;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/ast/ParseProblem$Type;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ParseProblem;->setType(Lorg/mozilla/javascript/ast/ParseProblem$Type;)V

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/ParseProblem;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/ParseProblem;->setSourceName(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lorg/mozilla/javascript/ast/ParseProblem;->setFileOffset(I)V

    invoke-virtual {p0, p5}, Lorg/mozilla/javascript/ast/ParseProblem;->setLength(I)V

    return-void
.end method


# virtual methods
.method public getFileOffset()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/ParseProblem;->offset:I

    return v0
.end method

.method public getLength()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/ParseProblem;->length:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ParseProblem;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ParseProblem;->sourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/mozilla/javascript/ast/ParseProblem$Type;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ParseProblem;->type:Lorg/mozilla/javascript/ast/ParseProblem$Type;

    return-object v0
.end method

.method public setFileOffset(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/ast/ParseProblem;->offset:I

    return-void
.end method

.method public setLength(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/ast/ParseProblem;->length:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ParseProblem;->message:Ljava/lang/String;

    return-void
.end method

.method public setSourceName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ParseProblem;->sourceName:Ljava/lang/String;

    return-void
.end method

.method public setType(Lorg/mozilla/javascript/ast/ParseProblem$Type;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ParseProblem;->type:Lorg/mozilla/javascript/ast/ParseProblem$Type;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/ast/ParseProblem;->sourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mozilla/javascript/ast/ParseProblem;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "length="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/mozilla/javascript/ast/ParseProblem;->length:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/ast/ParseProblem;->type:Lorg/mozilla/javascript/ast/ParseProblem$Type;

    sget-object v2, Lorg/mozilla/javascript/ast/ParseProblem$Type;->Error:Lorg/mozilla/javascript/ast/ParseProblem$Type;

    if-ne v1, v2, :cond_36

    const-string v1, "error: "

    goto :goto_39

    :cond_36
    const-string/jumbo v1, "warning: "

    :goto_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/ast/ParseProblem;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
