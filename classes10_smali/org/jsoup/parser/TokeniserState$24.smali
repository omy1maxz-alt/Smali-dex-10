.class final enum Lorg/jsoup/parser/TokeniserState$24;
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

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    return-void

    :cond_f
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result p2

    if-eqz p2, :cond_3d

    const/16 v0, 0x2d

    if-eq p2, v0, :cond_39

    const/16 v0, 0x3c

    if-eq p2, v0, :cond_33

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_2a

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscaped:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_4b

    :cond_2a
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->ScriptData:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_4b

    :cond_33
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_4b

    :cond_39
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    goto :goto_4b

    :cond_3d
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscaped:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    :goto_4b
    return-void
.end method
