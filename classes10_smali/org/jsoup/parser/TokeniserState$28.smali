.class final enum Lorg/jsoup/parser/TokeniserState$28;
.super Lorg/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .registers 5

    sget-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscaped:Lorg/jsoup/parser/TokeniserState;

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscaped:Lorg/jsoup/parser/TokeniserState;

    invoke-static {p1, p2, v0, v1}, Lorg/jsoup/parser/TokeniserState;->access$600(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method
