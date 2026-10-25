.class final enum Lorg/jsoup/parser/TokeniserState$29;
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

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_33

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_2a

    const v1, 0xffff

    if-eq v0, v1, :cond_21

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_4a

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->consumeToAny([C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    goto :goto_48

    :cond_21
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_48

    :cond_2a
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_48

    :cond_33
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedDash:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_48

    :cond_3c
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->advance()V

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    :goto_48
    return-void

    nop

    :array_4a
    .array-data 2
        0x2ds
        0x3cs
        0x0s
    .end array-data
.end method
