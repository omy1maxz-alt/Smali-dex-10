.class final enum Lorg/jsoup/parser/TokeniserState$17;
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
    .registers 6

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_34

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2b

    const v1, 0xffff

    const-string v2, "<"

    if-eq v0, v1, :cond_1f

    invoke-virtual {p1, v2}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->unconsume()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->ScriptData:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_3e

    :cond_1f
    invoke-virtual {p1, v2}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_3e

    :cond_2b
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->createTempBuffer()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_3e

    :cond_34
    const-string p2, "<!"

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapeStart:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    :goto_3e
    return-void
.end method
