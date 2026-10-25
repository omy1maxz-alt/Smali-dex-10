.class final Lorg/jsoup/parser/Token$EOF;
.super Lorg/jsoup/parser/Token;
.source "Token.java"


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$1;)V

    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    return-void
.end method


# virtual methods
.method reset()Lorg/jsoup/parser/Token;
    .registers 1

    invoke-super {p0}, Lorg/jsoup/parser/Token;->reset()Lorg/jsoup/parser/Token;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method
