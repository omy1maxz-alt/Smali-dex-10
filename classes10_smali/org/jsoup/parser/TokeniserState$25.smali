.class final enum Lorg/jsoup/parser/TokeniserState$25;
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

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->matchesAsciiAlpha()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->createTempBuffer()V

    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result p2

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapeStart:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_3f

    :cond_24
    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->matches(C)Z

    move-result p2

    if-eqz p2, :cond_35

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->createTempBuffer()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_3f

    :cond_35
    const/16 p2, 0x3c

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscaped:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    :goto_3f
    return-void
.end method
