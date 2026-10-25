.class final enum Lorg/jsoup/parser/TokeniserState$5;
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
    .registers 4

    sget-object v0, Lorg/jsoup/parser/TokeniserState;->RawtextLessthanSign:Lorg/jsoup/parser/TokeniserState;

    invoke-static {p1, p2, p0, v0}, Lorg/jsoup/parser/TokeniserState;->access$200(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method
