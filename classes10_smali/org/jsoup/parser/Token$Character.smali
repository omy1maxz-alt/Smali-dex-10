.class Lorg/jsoup/parser/Token$Character;
.super Lorg/jsoup/parser/Token;
.source "Token.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private data:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$1;)V

    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    return-void
.end method


# virtual methods
.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Character;->clone()Lorg/jsoup/parser/Token$Character;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lorg/jsoup/parser/Token$Character;
    .registers 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/Token$Character;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method data(Ljava/lang/String;)Lorg/jsoup/parser/Token$Character;
    .registers 2

    iput-object p1, p0, Lorg/jsoup/parser/Token$Character;->data:Ljava/lang/String;

    return-object p0
.end method

.method getData()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jsoup/parser/Token$Character;->data:Ljava/lang/String;

    return-object v0
.end method

.method reset()Lorg/jsoup/parser/Token;
    .registers 2

    invoke-super {p0}, Lorg/jsoup/parser/Token;->reset()Lorg/jsoup/parser/Token;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Token$Character;->data:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
