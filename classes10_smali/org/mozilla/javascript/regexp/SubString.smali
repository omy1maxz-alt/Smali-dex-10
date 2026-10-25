.class public Lorg/mozilla/javascript/regexp/SubString;
.super Ljava/lang/Object;
.source "SubString.java"


# instance fields
.field index:I

.field length:I

.field str:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    iput p2, p0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iput p3, p0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_10

    :cond_7
    iget v1, p0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iget v2, p0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0
.end method
