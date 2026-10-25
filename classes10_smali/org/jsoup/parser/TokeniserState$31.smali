.class final enum Lorg/jsoup/parser/TokeniserState$31;
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

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result p2

    if-eqz p2, :cond_3f

    const/16 v0, 0x2d

    if-eq p2, v0, :cond_3b

    const/16 v0, 0x3c

    if-eq p2, v0, :cond_32

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_29

    const v0, 0xffff

    if-eq p2, v0, :cond_20

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscaped:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_4d

    :cond_20
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_4d

    :cond_29
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->ScriptData:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_4d

    :cond_32
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_4d

    :cond_3b
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    goto :goto_4d

    :cond_3f
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscaped:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    :goto_4d
    return-void
.end method
