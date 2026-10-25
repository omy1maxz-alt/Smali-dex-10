.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$20;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "HtmlTreeBuilderState.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .registers 10

    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    goto/16 :goto_ce

    :cond_10
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isComment()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    goto/16 :goto_ce

    :cond_1f
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isDoctype()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v2

    :cond_2a
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v0

    const-string v3, "html"

    const-string v4, "frameset"

    if-eqz v0, :cond_8c

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_d4

    goto :goto_6f

    :sswitch_48
    const-string v3, "noframes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_6f

    :cond_51
    const/4 v6, 0x3

    goto :goto_6f

    :sswitch_53
    const-string v3, "frame"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto :goto_6f

    :cond_5c
    const/4 v6, 0x2

    goto :goto_6f

    :sswitch_5e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto :goto_6f

    :cond_65
    const/4 v6, 0x1

    goto :goto_6f

    :sswitch_67
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto :goto_6f

    :cond_6e
    const/4 v6, 0x0

    :goto_6f
    packed-switch v6, :pswitch_data_e6

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v2

    :pswitch_76  #0x3
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result p1

    return p1

    :pswitch_7d  #0x2
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto :goto_ce

    :pswitch_81  #0x1
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result p1

    return p1

    :pswitch_88  #0x0
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto :goto_ce

    :cond_8c
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v0

    if-eqz v0, :cond_bf

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    invoke-virtual {p2, v3}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_aa

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v2

    :cond_aa
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->isFragmentParsing()Z

    move-result p1

    if-nez p1, :cond_ce

    invoke-virtual {p2, v4}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_ce

    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_ce

    :cond_bf
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEOF()Z

    move-result p1

    if-eqz p1, :cond_cf

    invoke-virtual {p2, v3}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_ce

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_ce
    :goto_ce
    return v1

    :cond_cf
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v2

    nop

    :sswitch_data_d4
    .sparse-switch
        -0x620c002b -> :sswitch_67
        0x3107ab -> :sswitch_5e
        0x5d2a96d -> :sswitch_53
        0x47177da7 -> :sswitch_48
    .end sparse-switch

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_88  #00000000
        :pswitch_81  #00000001
        :pswitch_7d  #00000002
        :pswitch_76  #00000003
    .end packed-switch
.end method
