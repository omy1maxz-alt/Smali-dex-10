.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$16;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "HtmlTreeBuilderState.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .registers 3

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .registers 12

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$25;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    iget-object v1, p1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "template"

    const-string v3, "html"

    const-string v4, "select"

    const/4 v5, 0x0

    const-string v6, "optgroup"

    const-string v7, "option"

    packed-switch v0, :pswitch_data_176

    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$16;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p1

    return p1

    :pswitch_1f  #0x6
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_174

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_174

    :pswitch_2a  #0x5
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v5

    :cond_40
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    goto/16 :goto_174

    :pswitch_45  #0x4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v8, -0x1

    sparse-switch v3, :sswitch_data_186

    goto :goto_7c

    :sswitch_59
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    goto :goto_7c

    :cond_60
    const/4 v8, 0x3

    goto :goto_7c

    :sswitch_62
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    goto :goto_7c

    :cond_69
    const/4 v8, 0x2

    goto :goto_7c

    :sswitch_6b
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    goto :goto_7c

    :cond_72
    const/4 v8, 0x1

    goto :goto_7c

    :sswitch_74
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    goto :goto_7c

    :cond_7b
    const/4 v8, 0x0

    :goto_7c
    packed-switch v8, :pswitch_data_198

    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$16;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p1

    return p1

    :pswitch_84  #0x3
    invoke-virtual {p2, v7}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a9

    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->aboveOnStack(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    if-eqz p1, :cond_a9

    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->aboveOnStack(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a9

    invoke-virtual {p2, v7}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_a9
    invoke-virtual {p2, v6}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b4

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    goto/16 :goto_174

    :cond_b4
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_174

    :pswitch_b9  #0x2
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inSelectScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c3

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v5

    :cond_c3
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->resetInsertionMode()Z

    goto/16 :goto_174

    :pswitch_cb  #0x1
    invoke-virtual {p2, v7}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d6

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    goto/16 :goto_174

    :cond_d6
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_174

    :pswitch_db  #0x0
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result p1

    return p1

    :pswitch_e2  #0x3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f7

    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result p1

    return p1

    :cond_f7
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10a

    invoke-virtual {p2, v7}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_106

    invoke-virtual {p2, v7}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_106
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto :goto_174

    :cond_10a
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_126

    invoke-virtual {p2, v7}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_119

    invoke-virtual {p2, v7}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_119
    invoke-virtual {p2, v6}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_122

    invoke-virtual {p2, v6}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_122
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto :goto_174

    :cond_126
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_134

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2, v4}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_134
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InSelectEnd:[Ljava/lang/String;

    invoke-static {v8, v1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14e

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->inSelectScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_146

    return v5

    :cond_146
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    :cond_14e
    const-string v0, "script"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_162

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15d

    goto :goto_162

    :cond_15d
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$16;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p1

    return p1

    :cond_162
    :goto_162
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result p1

    return p1

    :pswitch_169  #0x2
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v5

    :pswitch_16d  #0x1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    :cond_174
    :goto_174
    return v1

    nop

    :pswitch_data_176
    .packed-switch 0x1
        :pswitch_16d  #00000001
        :pswitch_169  #00000002
        :pswitch_e2  #00000003
        :pswitch_45  #00000004
        :pswitch_2a  #00000005
        :pswitch_1f  #00000006
    .end packed-switch

    :sswitch_data_186
    .sparse-switch
        -0x4ec53386 -> :sswitch_74
        -0x3c35778b -> :sswitch_6b
        -0x3600cb04 -> :sswitch_62
        -0x4d08054 -> :sswitch_59
    .end sparse-switch

    :pswitch_data_198
    .packed-switch 0x0
        :pswitch_db  #00000000
        :pswitch_cb  #00000001
        :pswitch_b9  #00000002
        :pswitch_84  #00000003
    .end packed-switch
.end method
