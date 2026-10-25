.class final enum Lorg/jsoup/parser/TokeniserState$8;
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

    const/16 v1, 0x21

    if-eq v0, v1, :cond_3d

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_37

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_2e

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->matchesAsciiAlpha()Z

    move-result p2

    if-eqz p2, :cond_20

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->createTagPending(Z)Lorg/jsoup/parser/Token$Tag;

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->TagName:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_42

    :cond_20
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    const/16 p2, 0x3c

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_42

    :cond_2e
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->createBogusCommentPending()V

    sget-object p2, Lorg/jsoup/parser/TokeniserState;->BogusComment:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_42

    :cond_37
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->EndTagOpen:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_42

    :cond_3d
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->MarkupDeclarationOpen:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    :goto_42
    return-void
.end method
