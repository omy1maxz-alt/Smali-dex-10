.class final enum Lorg/jsoup/parser/TokeniserState$32;
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

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->matches(C)Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->createTempBuffer()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapeEnd:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_19

    :cond_14
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscaped:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    :goto_19
    return-void
.end method
