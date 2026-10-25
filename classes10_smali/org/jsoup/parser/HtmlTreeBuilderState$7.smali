.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$7;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "HtmlTreeBuilderState.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method

.method private inBodyEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .registers 12

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "br"

    const/4 v4, 0x1

    const-string/jumbo v5, "template"

    const-string v6, "body"

    const/4 v7, 0x0

    const/4 v8, -0x1

    sparse-switch v2, :sswitch_data_258

    goto/16 :goto_ed

    :sswitch_1e
    const-string v2, "sarcasm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto/16 :goto_ed

    :cond_28
    const/16 v8, 0x10

    goto/16 :goto_ed

    :sswitch_2c
    const-string/jumbo v2, "span"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    goto/16 :goto_ed

    :cond_37
    const/16 v8, 0xf

    goto/16 :goto_ed

    :sswitch_3b
    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    goto/16 :goto_ed

    :cond_45
    const/16 v8, 0xe

    goto/16 :goto_ed

    :sswitch_49
    const-string v2, "form"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    goto/16 :goto_ed

    :cond_53
    const/16 v8, 0xd

    goto/16 :goto_ed

    :sswitch_57
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    goto/16 :goto_ed

    :cond_5f
    const/16 v8, 0xc

    goto/16 :goto_ed

    :sswitch_63
    const-string v2, "li"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    goto/16 :goto_ed

    :cond_6d
    const/16 v8, 0xb

    goto/16 :goto_ed

    :sswitch_71
    const-string v2, "h6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    goto/16 :goto_ed

    :cond_7b
    const/16 v8, 0xa

    goto/16 :goto_ed

    :sswitch_7f
    const-string v2, "h5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_89

    goto/16 :goto_ed

    :cond_89
    const/16 v8, 0x9

    goto/16 :goto_ed

    :sswitch_8d
    const-string v2, "h4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_97

    goto/16 :goto_ed

    :cond_97
    const/16 v8, 0x8

    goto :goto_ed

    :sswitch_9a
    const-string v2, "h3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a3

    goto :goto_ed

    :cond_a3
    const/4 v8, 0x7

    goto :goto_ed

    :sswitch_a5
    const-string v2, "h2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ae

    goto :goto_ed

    :cond_ae
    const/4 v8, 0x6

    goto :goto_ed

    :sswitch_b0
    const-string v2, "h1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b9

    goto :goto_ed

    :cond_b9
    const/4 v8, 0x5

    goto :goto_ed

    :sswitch_bb
    const-string v2, "dt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c4

    goto :goto_ed

    :cond_c4
    const/4 v8, 0x4

    goto :goto_ed

    :sswitch_c6
    const-string v2, "dd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cf

    goto :goto_ed

    :cond_cf
    const/4 v8, 0x3

    goto :goto_ed

    :sswitch_d1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d8

    goto :goto_ed

    :cond_d8
    const/4 v8, 0x2

    goto :goto_ed

    :sswitch_da
    const-string v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e3

    goto :goto_ed

    :cond_e3
    const/4 v8, 0x1

    goto :goto_ed

    :sswitch_e5
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ec

    goto :goto_ed

    :cond_ec
    const/4 v8, 0x0

    :goto_ed
    packed-switch v8, :pswitch_data_29e

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndAdoptionFormatters:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fd

    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->inBodyEndTagAdoption(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p1

    return p1

    :cond_fd
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndClosers:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_120

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10f

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v7

    :cond_10f
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11b

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_11b
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_257

    :cond_120
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14e

    const-string p1, "name"

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_257

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_13a

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v7

    :cond_13a
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_146

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_146
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearFormattingElementsToLastMarker()V

    goto/16 :goto_257

    :cond_14e
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p1

    return p1

    :pswitch_153  #0xf, 0x10
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p1

    return p1

    :pswitch_158  #0xe
    invoke-virtual {p2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_162

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v7

    :cond_162
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndOtherErrors:[Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStackNot([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16d

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_16d
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    :pswitch_177  #0xd
    invoke-virtual {p2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a3

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFormElement(Lorg/jsoup/nodes/FormElement;)V

    if-eqz p1, :cond_19f

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18e

    goto :goto_19f

    :cond_18e
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19a

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_19a
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    goto/16 :goto_257

    :cond_19f
    :goto_19f
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v7

    :cond_1a3
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1ad

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v7

    :cond_1ad
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1b9

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_1b9
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_257

    :pswitch_1be  #0xc
    invoke-virtual {p2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1c8

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v7

    :cond_1c8
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndOtherErrors:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStackNot([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d3

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_1d3
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_257

    :pswitch_1da  #0xb
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inListItemScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1e4

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v7

    :cond_1e4
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1f0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_1f0
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_257

    :pswitch_1f4  #0x5, 0x6, 0x7, 0x8, 0x9, 0xa
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_200

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v7

    :cond_200
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20c

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_20c
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose([Ljava/lang/String;)V

    goto :goto_257

    :pswitch_210  #0x3, 0x4
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_21a

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v7

    :cond_21a
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_226

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_226
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_257

    :pswitch_22a  #0x2
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2, v3}, Lorg/jsoup/parser/TreeBuilder;->processStartTag(Ljava/lang/String;)Z

    return v7

    :pswitch_231  #0x1
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_242

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/TreeBuilder;->processStartTag(Ljava/lang/String;)Z

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    :cond_242
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_24e

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_24e
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_257

    :pswitch_252  #0x0
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    :cond_257
    :goto_257
    return v4

    :sswitch_data_258
    .sparse-switch
        -0x4ec53386 -> :sswitch_e5
        0x70 -> :sswitch_da
        0xc50 -> :sswitch_d1
        0xc80 -> :sswitch_c6
        0xc90 -> :sswitch_bb
        0xcc9 -> :sswitch_b0
        0xcca -> :sswitch_a5
        0xccb -> :sswitch_9a
        0xccc -> :sswitch_8d
        0xccd -> :sswitch_7f
        0xcce -> :sswitch_71
        0xd7d -> :sswitch_63
        0x2e39a2 -> :sswitch_57
        0x300cc4 -> :sswitch_49
        0x3107ab -> :sswitch_3b
        0x35f74a -> :sswitch_2c
        0x6f67a51c -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_29e
    .packed-switch 0x0
        :pswitch_252  #00000000
        :pswitch_231  #00000001
        :pswitch_22a  #00000002
        :pswitch_210  #00000003
        :pswitch_210  #00000004
        :pswitch_1f4  #00000005
        :pswitch_1f4  #00000006
        :pswitch_1f4  #00000007
        :pswitch_1f4  #00000008
        :pswitch_1f4  #00000009
        :pswitch_1f4  #0000000a
        :pswitch_1da  #0000000b
        :pswitch_1be  #0000000c
        :pswitch_177  #0000000d
        :pswitch_158  #0000000e
        :pswitch_153  #0000000f
        :pswitch_153  #00000010
    .end packed-switch
.end method

.method private inBodyEndTagAdoption(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_12
    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ge v5, v6, :cond_130

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getActiveFormattingElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v6

    if-nez v6, :cond_22

    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    :cond_22
    invoke-virtual {v1, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v8

    if-nez v8, :cond_2f

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {v1, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    return v7

    :cond_2f
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3d

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v4

    :cond_3d
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v8

    if-eq v8, v6, :cond_46

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_46
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v13, v9

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_4f
    if-ge v11, v8, :cond_79

    const/16 v14, 0x40

    if-ge v11, v14, :cond_79

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jsoup/nodes/Element;

    if-ne v14, v6, :cond_6c

    add-int/lit8 v10, v11, -0x1

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Lorg/jsoup/nodes/Element;

    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->positionOfElement(Lorg/jsoup/nodes/Element;)I

    move-result v10

    const/4 v12, 0x1

    goto :goto_76

    :cond_6c
    if-eqz v12, :cond_76

    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v15

    if-eqz v15, :cond_76

    move-object v9, v14

    goto :goto_79

    :cond_76
    :goto_76
    add-int/lit8 v11, v11, 0x1

    goto :goto_4f

    :cond_79
    :goto_79
    if-nez v9, :cond_86

    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v1, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    return v7

    :cond_86
    move-object v11, v9

    move-object v12, v11

    const/4 v8, 0x0

    :goto_89
    const/4 v14, 0x3

    if-ge v8, v14, :cond_d6

    invoke-virtual {v1, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v14

    if-eqz v14, :cond_96

    invoke-virtual {v1, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->aboveOnStack(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v11

    :cond_96
    invoke-virtual {v1, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->isInActiveFormattingElements(Lorg/jsoup/nodes/Element;)Z

    move-result v14

    if-nez v14, :cond_a0

    invoke-virtual {v1, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    goto :goto_d2

    :cond_a0
    if-ne v11, v6, :cond_a3

    goto :goto_d6

    :cond_a3
    new-instance v14, Lorg/jsoup/nodes/Element;

    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v15

    sget-object v4, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {v1, v15, v4}, Lorg/jsoup/parser/TreeBuilder;->tagFor(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v4, v15}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    invoke-virtual {v1, v11, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->replaceActiveFormattingElement(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    invoke-virtual {v1, v11, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->replaceOnStack(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    if-ne v12, v9, :cond_c4

    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->positionOfElement(Lorg/jsoup/nodes/Element;)I

    move-result v4

    add-int/lit8 v10, v4, 0x1

    :cond_c4
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_cd

    invoke-virtual {v12}, Lorg/jsoup/nodes/Node;->remove()V

    :cond_cd
    invoke-virtual {v14, v12}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-object v11, v14

    move-object v12, v11

    :goto_d2
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto :goto_89

    :cond_d6
    :goto_d6
    if-eqz v13, :cond_fd

    invoke-virtual {v13}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndTableFosters:[Ljava/lang/String;

    invoke-static {v4, v7}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f1

    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_ed

    invoke-virtual {v12}, Lorg/jsoup/nodes/Node;->remove()V

    :cond_ed
    invoke-virtual {v1, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertInFosterParent(Lorg/jsoup/nodes/Node;)V

    goto :goto_fd

    :cond_f1
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_fa

    invoke-virtual {v12}, Lorg/jsoup/nodes/Node;->remove()V

    :cond_fa
    invoke-virtual {v13, v12}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :cond_fd
    :goto_fd
    new-instance v4, Lorg/jsoup/nodes/Element;

    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v7

    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jsoup/nodes/Attributes;->addAll(Lorg/jsoup/nodes/Attributes;)V

    invoke-virtual {v9}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/jsoup/nodes/Element;->appendChildren(Ljava/util/Collection;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v9, v4}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v1, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    invoke-virtual {v1, v4, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushWithBookmark(Lorg/jsoup/nodes/Element;I)V

    invoke-virtual {v1, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    invoke-virtual {v1, v9, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertOnStackAfter(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto/16 :goto_12

    :cond_130
    return v7
.end method

.method private inBodyStartTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "isindex"

    const-string v6, "input"

    const-string/jumbo v7, "svg"

    const-string v8, "img"

    const-string v9, "nobr"

    const-string v10, "form"

    const-string v11, "rtc"

    const-string v12, "li"

    const-string v13, "hr"

    const-string v15, "option"

    const-string v14, "button"

    const-string v0, "body"

    const-string v1, "a"

    move-object/from16 v16, v2

    const/16 v17, -0x1

    sparse-switch v4, :sswitch_data_92e

    goto/16 :goto_389

    :sswitch_37
    const-string v4, "noembed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    goto/16 :goto_389

    :cond_41
    const/16 v4, 0x37

    const/16 v17, 0x37

    goto/16 :goto_389

    :sswitch_47
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    goto/16 :goto_389

    :cond_4f
    const/16 v4, 0x36

    const/16 v17, 0x36

    goto/16 :goto_389

    :sswitch_55
    const-string v4, "plaintext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5f

    goto/16 :goto_389

    :cond_5f
    const/16 v4, 0x35

    const/16 v17, 0x35

    goto/16 :goto_389

    :sswitch_65
    const-string v4, "listing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6f

    goto/16 :goto_389

    :cond_6f
    const/16 v4, 0x34

    const/16 v17, 0x34

    goto/16 :goto_389

    :sswitch_75
    const-string/jumbo v4, "table"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_80

    goto/16 :goto_389

    :cond_80
    const/16 v4, 0x33

    const/16 v17, 0x33

    goto/16 :goto_389

    :sswitch_86
    const-string/jumbo v4, "small"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_91

    goto/16 :goto_389

    :cond_91
    const/16 v4, 0x32

    const/16 v17, 0x32

    goto/16 :goto_389

    :sswitch_97
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9f

    goto/16 :goto_389

    :cond_9f
    const/16 v4, 0x31

    const/16 v17, 0x31

    goto/16 :goto_389

    :sswitch_a5
    const-string v4, "image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_af

    goto/16 :goto_389

    :cond_af
    const/16 v4, 0x30

    const/16 v17, 0x30

    goto/16 :goto_389

    :sswitch_b5
    const-string v4, "embed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bf

    goto/16 :goto_389

    :cond_bf
    const/16 v4, 0x2f

    const/16 v17, 0x2f

    goto/16 :goto_389

    :sswitch_c5
    const-string/jumbo v4, "span"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d0

    goto/16 :goto_389

    :cond_d0
    const/16 v4, 0x2e

    const/16 v17, 0x2e

    goto/16 :goto_389

    :sswitch_d6
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_de

    goto/16 :goto_389

    :cond_de
    const/16 v4, 0x2d

    const/16 v17, 0x2d

    goto/16 :goto_389

    :sswitch_e4
    const-string v4, "math"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ee

    goto/16 :goto_389

    :cond_ee
    const/16 v4, 0x2c

    const/16 v17, 0x2c

    goto/16 :goto_389

    :sswitch_f4
    const-string v4, "html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_fe

    goto/16 :goto_389

    :cond_fe
    const/16 v4, 0x2b

    const/16 v17, 0x2b

    goto/16 :goto_389

    :sswitch_104
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10c

    goto/16 :goto_389

    :cond_10c
    const/16 v4, 0x2a

    const/16 v17, 0x2a

    goto/16 :goto_389

    :sswitch_112
    const-string v4, "font"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11c

    goto/16 :goto_389

    :cond_11c
    const/16 v4, 0x29

    const/16 v17, 0x29

    goto/16 :goto_389

    :sswitch_122
    const-string v4, "code"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12c

    goto/16 :goto_389

    :cond_12c
    const/16 v4, 0x28

    const/16 v17, 0x28

    goto/16 :goto_389

    :sswitch_132
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13a

    goto/16 :goto_389

    :cond_13a
    const/16 v4, 0x27

    const/16 v17, 0x27

    goto/16 :goto_389

    :sswitch_140
    const-string v4, "area"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14a

    goto/16 :goto_389

    :cond_14a
    const/16 v4, 0x26

    const/16 v17, 0x26

    goto/16 :goto_389

    :sswitch_150
    const-string/jumbo v4, "xmp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15b

    goto/16 :goto_389

    :cond_15b
    const/16 v4, 0x25

    const/16 v17, 0x25

    goto/16 :goto_389

    :sswitch_161
    const-string/jumbo v4, "wbr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16c

    goto/16 :goto_389

    :cond_16c
    const/16 v4, 0x24

    const/16 v17, 0x24

    goto/16 :goto_389

    :sswitch_172
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17a

    goto/16 :goto_389

    :cond_17a
    const/16 v4, 0x23

    const/16 v17, 0x23

    goto/16 :goto_389

    :sswitch_180
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_188

    goto/16 :goto_389

    :cond_188
    const/16 v4, 0x22

    const/16 v17, 0x22

    goto/16 :goto_389

    :sswitch_18e
    const-string v4, "pre"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_198

    goto/16 :goto_389

    :cond_198
    const/16 v4, 0x21

    const/16 v17, 0x21

    goto/16 :goto_389

    :sswitch_19e
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a6

    goto/16 :goto_389

    :cond_1a6
    const/16 v4, 0x20

    const/16 v17, 0x20

    goto/16 :goto_389

    :sswitch_1ac
    const-string v4, "big"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b6

    goto/16 :goto_389

    :cond_1b6
    const/16 v4, 0x1f

    const/16 v17, 0x1f

    goto/16 :goto_389

    :sswitch_1bc
    const-string/jumbo v4, "tt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c7

    goto/16 :goto_389

    :cond_1c7
    const/16 v4, 0x1e

    const/16 v17, 0x1e

    goto/16 :goto_389

    :sswitch_1cd
    const-string v4, "rt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d7

    goto/16 :goto_389

    :cond_1d7
    const/16 v4, 0x1d

    const/16 v17, 0x1d

    goto/16 :goto_389

    :sswitch_1dd
    const-string v4, "rp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e7

    goto/16 :goto_389

    :cond_1e7
    const/16 v4, 0x1c

    const/16 v17, 0x1c

    goto/16 :goto_389

    :sswitch_1ed
    const-string v4, "rb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f7

    goto/16 :goto_389

    :cond_1f7
    const/16 v4, 0x1b

    const/16 v17, 0x1b

    goto/16 :goto_389

    :sswitch_1fd
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_205

    goto/16 :goto_389

    :cond_205
    const/16 v4, 0x1a

    const/16 v17, 0x1a

    goto/16 :goto_389

    :sswitch_20b
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_213

    goto/16 :goto_389

    :cond_213
    const/16 v4, 0x19

    const/16 v17, 0x19

    goto/16 :goto_389

    :sswitch_219
    const-string v4, "h6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_223

    goto/16 :goto_389

    :cond_223
    const/16 v17, 0x18

    goto/16 :goto_389

    :sswitch_227
    const-string v4, "h5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_231

    goto/16 :goto_389

    :cond_231
    const/16 v4, 0x17

    const/16 v17, 0x17

    goto/16 :goto_389

    :sswitch_237
    const-string v4, "h4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_241

    goto/16 :goto_389

    :cond_241
    const/16 v4, 0x16

    const/16 v17, 0x16

    goto/16 :goto_389

    :sswitch_247
    const-string v4, "h3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_251

    goto/16 :goto_389

    :cond_251
    const/16 v4, 0x15

    const/16 v17, 0x15

    goto/16 :goto_389

    :sswitch_257
    const-string v4, "h2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_261

    goto/16 :goto_389

    :cond_261
    const/16 v4, 0x14

    const/16 v17, 0x14

    goto/16 :goto_389

    :sswitch_267
    const-string v4, "h1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_271

    goto/16 :goto_389

    :cond_271
    const/16 v4, 0x13

    const/16 v17, 0x13

    goto/16 :goto_389

    :sswitch_277
    const-string v4, "em"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_281

    goto/16 :goto_389

    :cond_281
    const/16 v4, 0x12

    const/16 v17, 0x12

    goto/16 :goto_389

    :sswitch_287
    const-string v4, "dt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_291

    goto/16 :goto_389

    :cond_291
    const/16 v4, 0x11

    const/16 v17, 0x11

    goto/16 :goto_389

    :sswitch_297
    const-string v4, "dd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a1

    goto/16 :goto_389

    :cond_2a1
    const/16 v4, 0x10

    const/16 v17, 0x10

    goto/16 :goto_389

    :sswitch_2a7
    const-string v4, "br"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b1

    goto/16 :goto_389

    :cond_2b1
    const/16 v4, 0xf

    const/16 v17, 0xf

    goto/16 :goto_389

    :sswitch_2b7
    const-string/jumbo v4, "u"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c2

    goto/16 :goto_389

    :cond_2c2
    const/16 v4, 0xe

    const/16 v17, 0xe

    goto/16 :goto_389

    :sswitch_2c8
    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d2

    goto/16 :goto_389

    :cond_2d2
    const/16 v4, 0xd

    const/16 v17, 0xd

    goto/16 :goto_389

    :sswitch_2d8
    const-string v4, "i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e2

    goto/16 :goto_389

    :cond_2e2
    const/16 v4, 0xc

    const/16 v17, 0xc

    goto/16 :goto_389

    :sswitch_2e8
    const-string v4, "b"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f2

    goto/16 :goto_389

    :cond_2f2
    const/16 v4, 0xb

    const/16 v17, 0xb

    goto/16 :goto_389

    :sswitch_2f8
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_300

    goto/16 :goto_389

    :cond_300
    const/16 v4, 0xa

    const/16 v17, 0xa

    goto/16 :goto_389

    :sswitch_306
    const-string v4, "optgroup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_310

    goto/16 :goto_389

    :cond_310
    const/16 v4, 0x9

    const/16 v17, 0x9

    goto/16 :goto_389

    :sswitch_316
    const-string/jumbo v4, "strong"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_321

    goto/16 :goto_389

    :cond_321
    const/16 v4, 0x8

    const/16 v17, 0x8

    goto/16 :goto_389

    :sswitch_327
    const-string/jumbo v4, "strike"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_331

    goto :goto_389

    :cond_331
    const/4 v4, 0x7

    const/16 v17, 0x7

    goto :goto_389

    :sswitch_335
    const-string v4, "select"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33e

    goto :goto_389

    :cond_33e
    const/4 v4, 0x6

    const/16 v17, 0x6

    goto :goto_389

    :sswitch_342
    const-string/jumbo v4, "textarea"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34c

    goto :goto_389

    :cond_34c
    const/4 v4, 0x5

    const/16 v17, 0x5

    goto :goto_389

    :sswitch_350
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_357

    goto :goto_389

    :cond_357
    const/4 v4, 0x4

    const/16 v17, 0x4

    goto :goto_389

    :sswitch_35b
    const-string v4, "keygen"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_364

    goto :goto_389

    :cond_364
    const/4 v4, 0x3

    const/16 v17, 0x3

    goto :goto_389

    :sswitch_368
    const-string v4, "iframe"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_371

    goto :goto_389

    :cond_371
    const/16 v17, 0x2

    goto :goto_389

    :sswitch_374
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37b

    goto :goto_389

    :cond_37b
    const/16 v17, 0x1

    goto :goto_389

    :sswitch_37e
    const-string v4, "frameset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_387

    goto :goto_389

    :cond_387
    const/16 v17, 0x0

    :goto_389
    const-string/jumbo v4, "template"

    const-string v2, "ruby"

    move-object/from16 v18, v0

    const-string v0, "p"

    packed-switch v17, :pswitch_data_a10

    invoke-static {v3}, Lorg/jsoup/parser/Tag;->isKnownTag(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a6

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    :goto_3a2
    move-object/from16 v3, p0

    goto/16 :goto_53d

    :cond_3a6
    move-object/from16 v1, p2

    move-object/from16 v14, v16

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPClosers:[Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3bf

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3bb

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_3bb
    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto :goto_3a2

    :cond_3bf
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartToHead:[Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    return v0

    :cond_3d0
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e6

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertMarkerToFormattingElements()V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto :goto_3a2

    :cond_3e6
    const/4 v0, 0x0

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartMedia:[Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f3

    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto :goto_3a2

    :cond_3f3
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartDrop:[Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_401

    move-object/from16 v3, p0

    invoke-virtual {v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v0

    :cond_401
    move-object/from16 v3, p0

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_53d

    :pswitch_40b  #0x37
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    invoke-static {v14, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_53d

    :pswitch_416  #0x36
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    const/4 v0, 0x0

    invoke-virtual {v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    move-result-object v2

    if-eqz v2, :cond_427

    return v0

    :cond_427
    invoke-virtual {v1, v10}, Lorg/jsoup/parser/TreeBuilder;->processStartTag(Ljava/lang/String;)Z

    const-string v0, "action"

    invoke-virtual {v14, v0}, Lorg/jsoup/parser/Token$Tag;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44b

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    move-result-object v2

    if-eqz v2, :cond_44b

    invoke-virtual {v14, v0}, Lorg/jsoup/parser/Token$Tag;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44b

    iget-object v4, v14, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v4, v0}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    :cond_44b
    invoke-virtual {v1, v13}, Lorg/jsoup/parser/TreeBuilder;->processStartTag(Ljava/lang/String;)Z

    const-string v0, "label"

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TreeBuilder;->processStartTag(Ljava/lang/String;)Z

    const-string v0, "prompt"

    invoke-virtual {v14, v0}, Lorg/jsoup/parser/Token$Tag;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_464

    iget-object v0, v14, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v2, "prompt"

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_466

    :cond_464
    const-string v0, "This is a searchable index. Enter search keywords: "

    :goto_466
    new-instance v2, Lorg/jsoup/parser/Token$Character;

    invoke-direct {v2}, Lorg/jsoup/parser/Token$Character;-><init>()V

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/Token$Character;->data(Ljava/lang/String;)Lorg/jsoup/parser/Token$Character;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    invoke-virtual {v14}, Lorg/jsoup/parser/Token$Tag;->hasAttributes()Z

    move-result v2

    if-eqz v2, :cond_49f

    iget-object v2, v14, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_483
    :goto_483
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Attribute;

    invoke-virtual {v4}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartInputAttribs:[Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_483

    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)Lorg/jsoup/nodes/Attributes;

    goto :goto_483

    :cond_49f
    const-string v2, "name"

    invoke-virtual {v0, v2, v5}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v1, v6, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)Z

    const-string v0, "label"

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    invoke-virtual {v1, v13}, Lorg/jsoup/parser/TreeBuilder;->processStartTag(Ljava/lang/String;)Z

    invoke-virtual {v1, v10}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    goto/16 :goto_53d

    :pswitch_4b4  #0x35
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c3

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_4c3
    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    iget-object v0, v1, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto/16 :goto_53d

    :pswitch_4cf  #0x33
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getDocument()Lorg/jsoup/nodes/Document;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->quirksMode()Lorg/jsoup/nodes/Document$QuirksMode;

    move-result-object v2

    sget-object v4, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    if-eq v2, v4, :cond_4ea

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4ea

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_4ea
    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_53d

    :pswitch_4f7  #0x31
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    const/4 v0, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "hidden"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_53d

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto :goto_53d

    :pswitch_518  #0x30
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    invoke-virtual {v1, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-nez v0, :cond_52d

    invoke-virtual {v14, v8}, Lorg/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v0

    return v0

    :cond_52d
    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto :goto_53d

    :pswitch_531  #0x2e
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    :cond_53d
    :goto_53d
    const/4 v6, 0x1

    goto/16 :goto_92a

    :pswitch_540  #0x2d
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    invoke-virtual {v1, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_558

    invoke-virtual {v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {v1, v9}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    :cond_558
    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto :goto_53d

    :pswitch_560  #0x2c
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto :goto_53d

    :pswitch_56d  #0x2b
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    invoke-virtual {v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {v1, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57e

    const/4 v0, 0x0

    return v0

    :cond_57e
    const/4 v0, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_53d

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v14}, Lorg/jsoup/parser/Token$Tag;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_53d

    iget-object v1, v14, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_59f
    :goto_59f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Attribute;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_59f

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)Lorg/jsoup/nodes/Attributes;

    goto :goto_59f

    :pswitch_5bd  #0x2a
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    move-result-object v2

    if-eqz v2, :cond_5d4

    invoke-virtual {v1, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5d4

    invoke-virtual {v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/4 v0, 0x0

    return v0

    :cond_5d4
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5dd

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->closeElement(Ljava/lang/String;)V

    :cond_5dd
    const/4 v0, 0x1

    invoke-virtual {v1, v14, v0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertForm(Lorg/jsoup/parser/Token$StartTag;ZZ)Lorg/jsoup/nodes/FormElement;

    goto/16 :goto_53d

    :pswitch_5e3  #0x27
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    move-object/from16 v2, v18

    const/4 v0, 0x1

    invoke-virtual {v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v6, v0, :cond_64b

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_610

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64b

    :cond_610
    invoke-virtual {v1, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_617

    goto :goto_64b

    :cond_617
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    invoke-virtual {v14}, Lorg/jsoup/parser/Token$Tag;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_53d

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_53d

    iget-object v1, v14, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_62d
    :goto_62d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Attribute;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_62d

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)Lorg/jsoup/nodes/Attributes;

    goto :goto_62d

    :cond_64b
    :goto_64b
    const/4 v2, 0x0

    return v2

    :pswitch_64d  #0x25
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    const/4 v2, 0x0

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_65d

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_65d
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    invoke-static {v14, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_53d

    :pswitch_668  #0x23
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_53d

    :pswitch_676  #0x21, 0x34
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_685

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_685
    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    iget-object v0, v1, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_53d

    :pswitch_695  #0x1c, 0x1d
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b3

    invoke-virtual {v1, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6b3

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6b3

    invoke-virtual {v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_6b3
    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_53d

    :pswitch_6b8  #0x1b, 0x22
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d0

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6d0

    invoke-virtual {v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_6d0
    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_53d

    :pswitch_6d5  #0x1a
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_6e9
    if-lez v4, :cond_715

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6ff

    invoke-virtual {v1, v12}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    goto :goto_715

    :cond_6ff
    invoke-virtual {v1, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v6

    if-eqz v6, :cond_712

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_712

    goto :goto_715

    :cond_712
    add-int/lit8 v4, v4, -0x1

    goto :goto_6e9

    :cond_715
    :goto_715
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71e

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_71e
    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_53d

    :pswitch_723  #0x19
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_732

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_732
    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_53d

    :pswitch_73b  #0x13, 0x14, 0x15, 0x16, 0x17, 0x18
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74a

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_74a
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_760

    invoke-virtual {v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    :cond_760
    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_53d

    :pswitch_765  #0x10, 0x11
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/16 v5, 0x18

    if-lt v4, v5, :cond_780

    add-int/lit8 v5, v4, -0x18

    goto :goto_781

    :cond_780
    const/4 v5, 0x0

    :goto_781
    if-lt v4, v5, :cond_7b3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Element;

    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->DdDt:[Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_79d

    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    goto :goto_7b3

    :cond_79d
    invoke-virtual {v1, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v7

    if-eqz v7, :cond_7b0

    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    invoke-static {v6, v7}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7b0

    goto :goto_7b3

    :cond_7b0
    add-int/lit8 v4, v4, -0x1

    goto :goto_781

    :cond_7b3
    :goto_7b3
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7bc

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_7bc
    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_53d

    :pswitch_7c1  #0xa
    move-object/from16 v3, p0

    move-object v0, v1

    move-object/from16 v14, v16

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->getActiveFormattingElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    if-eqz v2, :cond_7e0

    invoke-virtual {v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_7e0

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    :cond_7e0
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_53d

    :pswitch_7ec  #0x7, 0x8, 0xb, 0xc, 0xd, 0xe, 0x12, 0x1e, 0x1f, 0x28, 0x29, 0x32
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_53d

    :pswitch_7fe  #0x6
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    iget-boolean v0, v14, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    if-eqz v0, :cond_814

    goto/16 :goto_53d

    :cond_814
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->state()Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-result-object v0

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_848

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_848

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_848

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_848

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_841

    goto :goto_848

    :cond_841
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_53d

    :cond_848
    :goto_848
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_53d

    :pswitch_84f  #0x5
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v14}, Lorg/jsoup/parser/Token$Tag;->isSelfClosing()Z

    move-result v0

    if-nez v0, :cond_53d

    iget-object v0, v1, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_53d

    :pswitch_873  #0x4, 0x9
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    invoke-virtual {v1, v15}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_882

    invoke-virtual {v1, v15}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_882
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_53d

    :pswitch_88a  #0x3, 0xf, 0x20, 0x24, 0x26, 0x2f
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_53d

    :pswitch_89c  #0x2
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v14, v16

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    invoke-static {v14, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_53d

    :pswitch_8ab  #0x1
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v4, v16

    const/4 v0, 0x0

    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c3

    invoke-virtual {v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {v1, v14}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    invoke-virtual {v1, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    goto/16 :goto_53d

    :cond_8c3
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    invoke-virtual {v1, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_53d

    :pswitch_8ce  #0x0
    move-object/from16 v3, p0

    move-object/from16 v1, p2

    move-object/from16 v4, v16

    move-object/from16 v2, v18

    invoke-virtual {v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_92b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x2

    if-le v5, v7, :cond_8fc

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8fc

    goto :goto_92b

    :cond_8fc
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk()Z

    move-result v2

    if-nez v2, :cond_904

    const/4 v2, 0x0

    return v2

    :cond_904
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v5

    if-eqz v5, :cond_913

    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->remove()V

    :cond_913
    :goto_913
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v6, :cond_922

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_913

    :cond_922
    invoke-virtual {v1, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :goto_92a
    return v6

    :cond_92b
    :goto_92b
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_92e
    .sparse-switch
        -0x620c002b -> :sswitch_37e
        -0x521dd8ce -> :sswitch_374
        -0x47007d5c -> :sswitch_368
        -0x43a19f6f -> :sswitch_35b
        -0x3c35778b -> :sswitch_350
        -0x3bcc48c6 -> :sswitch_342
        -0x3600cb04 -> :sswitch_335
        -0x352aa04e -> :sswitch_327
        -0x352a8969 -> :sswitch_316
        -0x4d08054 -> :sswitch_306
        0x61 -> :sswitch_2f8
        0x62 -> :sswitch_2e8
        0x69 -> :sswitch_2d8
        0x73 -> :sswitch_2c8
        0x75 -> :sswitch_2b7
        0xc50 -> :sswitch_2a7
        0xc80 -> :sswitch_297
        0xc90 -> :sswitch_287
        0xca8 -> :sswitch_277
        0xcc9 -> :sswitch_267
        0xcca -> :sswitch_257
        0xccb -> :sswitch_247
        0xccc -> :sswitch_237
        0xccd -> :sswitch_227
        0xcce -> :sswitch_219
        0xd0a -> :sswitch_20b
        0xd7d -> :sswitch_1fd
        0xe30 -> :sswitch_1ed
        0xe3e -> :sswitch_1dd
        0xe42 -> :sswitch_1cd
        0xe80 -> :sswitch_1bc
        0x17d00 -> :sswitch_1ac
        0x197c3 -> :sswitch_19e
        0x1b2a3 -> :sswitch_18e
        0x1ba61 -> :sswitch_180
        0x1be64 -> :sswitch_172
        0x1cb07 -> :sswitch_161
        0x1d01b -> :sswitch_150
        0x2dd08d -> :sswitch_140
        0x2e39a2 -> :sswitch_132
        0x2eaded -> :sswitch_122
        0x300c4f -> :sswitch_112
        0x300cc4 -> :sswitch_104
        0x3107ab -> :sswitch_f4
        0x330708 -> :sswitch_e4
        0x33add1 -> :sswitch_d6
        0x35f74a -> :sswitch_c5
        0x5c24ed9 -> :sswitch_b5
        0x5faa95b -> :sswitch_a5
        0x5fb57ca -> :sswitch_97
        0x6879507 -> :sswitch_86
        0x6903bce -> :sswitch_75
        0xad8ba84 -> :sswitch_65
        0x759d29f7 -> :sswitch_55
        0x7ca6c5e8 -> :sswitch_47
        0x7e19b1b8 -> :sswitch_37
    .end sparse-switch

    :pswitch_data_a10
    .packed-switch 0x0
        :pswitch_8ce  #00000000
        :pswitch_8ab  #00000001
        :pswitch_89c  #00000002
        :pswitch_88a  #00000003
        :pswitch_873  #00000004
        :pswitch_84f  #00000005
        :pswitch_7fe  #00000006
        :pswitch_7ec  #00000007
        :pswitch_7ec  #00000008
        :pswitch_873  #00000009
        :pswitch_7c1  #0000000a
        :pswitch_7ec  #0000000b
        :pswitch_7ec  #0000000c
        :pswitch_7ec  #0000000d
        :pswitch_7ec  #0000000e
        :pswitch_88a  #0000000f
        :pswitch_765  #00000010
        :pswitch_765  #00000011
        :pswitch_7ec  #00000012
        :pswitch_73b  #00000013
        :pswitch_73b  #00000014
        :pswitch_73b  #00000015
        :pswitch_73b  #00000016
        :pswitch_73b  #00000017
        :pswitch_73b  #00000018
        :pswitch_723  #00000019
        :pswitch_6d5  #0000001a
        :pswitch_6b8  #0000001b
        :pswitch_695  #0000001c
        :pswitch_695  #0000001d
        :pswitch_7ec  #0000001e
        :pswitch_7ec  #0000001f
        :pswitch_88a  #00000020
        :pswitch_676  #00000021
        :pswitch_6b8  #00000022
        :pswitch_668  #00000023
        :pswitch_88a  #00000024
        :pswitch_64d  #00000025
        :pswitch_88a  #00000026
        :pswitch_5e3  #00000027
        :pswitch_7ec  #00000028
        :pswitch_7ec  #00000029
        :pswitch_5bd  #0000002a
        :pswitch_56d  #0000002b
        :pswitch_560  #0000002c
        :pswitch_540  #0000002d
        :pswitch_531  #0000002e
        :pswitch_88a  #0000002f
        :pswitch_518  #00000030
        :pswitch_4f7  #00000031
        :pswitch_7ec  #00000032
        :pswitch_4cf  #00000033
        :pswitch_676  #00000034
        :pswitch_4b4  #00000035
        :pswitch_416  #00000036
        :pswitch_40b  #00000037
    .end packed-switch
.end method


# virtual methods
.method anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .registers 9

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object p1

    iget-object p1, p1, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v2

    :cond_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_1b
    if-ltz v1, :cond_4a

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Element;

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_39
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_4a

    :cond_3d
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v2

    :cond_47
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    :cond_4a
    :goto_4a
    return v3
.end method

.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .registers 6

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$25;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    iget-object v1, p1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_72

    goto :goto_70

    :pswitch_f  #0x6
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->templateModeSize()I

    move-result v0

    if-lez v0, :cond_1c

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTemplate:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result p1

    return p1

    :cond_1c
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndOtherErrors:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStackNot([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_70

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_70

    :pswitch_28  #0x5
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v1

    :cond_3e
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    goto :goto_70

    :cond_51
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto :goto_70

    :pswitch_5b  #0x4
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->inBodyEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p1

    return p1

    :pswitch_60  #0x3
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->inBodyStartTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p1

    return p1

    :pswitch_65  #0x2
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v1

    :pswitch_69  #0x1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    :cond_70
    :goto_70
    const/4 p1, 0x1

    return p1

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_69  #00000001
        :pswitch_65  #00000002
        :pswitch_60  #00000003
        :pswitch_5b  #00000004
        :pswitch_28  #00000005
        :pswitch_f  #00000006
    .end packed-switch
.end method
