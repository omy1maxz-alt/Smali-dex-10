.class final enum Lorg/jsoup/parser/TokeniserState$11;
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

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->createTempBuffer()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->RCDATAEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_4f

    :cond_11
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->readFully()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->matchesAsciiAlpha()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->appropriateEndTagName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->appropriateEndTagSeq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->containsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_45

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->createTagPending(Z)Lorg/jsoup/parser/Token$Tag;

    move-result-object p2

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->appropriateEndTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object p2

    iput-object p2, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->TagOpen:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_4f

    :cond_45
    const-string p2, "<"

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    :goto_4f
    return-void
.end method
