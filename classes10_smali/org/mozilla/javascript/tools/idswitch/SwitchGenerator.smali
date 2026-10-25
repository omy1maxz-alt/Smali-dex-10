.class public Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;
.super Ljava/lang/Object;
.source "SwitchGenerator.java"


# instance fields
.field private P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

.field private R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

.field private c_was_defined:Z

.field char_tail_test_threshold:I

.field private columns:[I

.field private default_value:Ljava/lang/String;

.field private pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

.field private source_file:Ljava/lang/String;

.field use_if_threshold:I

.field v_c:Ljava/lang/String;

.field v_guess:Ljava/lang/String;

.field v_id:Ljava/lang/String;

.field v_label:Ljava/lang/String;

.field v_length_suffix:Ljava/lang/String;

.field v_s:Ljava/lang/String;

.field v_switch_label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "L0"

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_switch_label:Ljava/lang/String;

    const-string v0, "L"

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_label:Ljava/lang/String;

    const-string v0, "s"

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    const-string v0, "c"

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_c:Ljava/lang/String;

    const-string v0, "X"

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_guess:Ljava/lang/String;

    const-string v0, "id"

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_id:Ljava/lang/String;

    const-string v0, "_length"

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_length_suffix:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->use_if_threshold:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->char_tail_test_threshold:I

    return-void
.end method

.method private static bigger(Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Lorg/mozilla/javascript/tools/idswitch/IdValuePair;I)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p2, :cond_1d

    iget p2, p0, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->idLength:I

    iget v2, p1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->idLength:I

    sub-int/2addr p2, v2

    if-eqz p2, :cond_10

    if-lez p2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    iget-object p0, p0, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    iget-object p1, p1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    :cond_1d
    iget-object p0, p0, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    iget-object p1, p1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-le p0, p1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    return v0
.end method

.method private check_all_is_different(II)V
    .registers 7

    if-eq p1, p2, :cond_1f

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    aget-object v0, v0, p1

    :goto_6
    add-int/lit8 p1, p1, 0x1

    if-eq p1, p2, :cond_1f

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    aget-object v1, v1, p1

    iget-object v2, v0, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    iget-object v3, v1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    move-object v0, v1

    goto :goto_6

    :cond_1a
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->on_same_pair_fail(Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Lorg/mozilla/javascript/tools/idswitch/IdValuePair;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_1f
    return-void
.end method

.method private count_different_chars(III)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    :goto_2
    if-eq p1, p2, :cond_16

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    aget-object v2, v2, p1

    iget-object v2, v2, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_13

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_16
    return v0
.end method

.method private count_different_lengths(II)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    :goto_2
    if-eq p1, p2, :cond_12

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    aget-object v2, v2, p1

    iget v2, v2, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->idLength:I

    if-eq v1, v2, :cond_f

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    :cond_f
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_12
    return v0
.end method

.method private find_max_different_column(III)I
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-eq v0, p3, :cond_1c

    iget-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->columns:[I

    aget v3, v3, v0

    invoke-direct {p0, p1, p2, v3}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->sort_pairs(III)V

    invoke-direct {p0, p1, p2, v3}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->count_different_chars(III)I

    move-result v3

    sub-int v4, p2, p1

    if-ne v3, v4, :cond_15

    return v0

    :cond_15
    if-ge v2, v3, :cond_19

    move v1, v0

    move v2, v3

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1c
    add-int/lit8 p3, p3, -0x1

    if-eq v1, p3, :cond_27

    iget-object p3, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->columns:[I

    aget p3, p3, v1

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->sort_pairs(III)V

    :cond_27
    return v1
.end method

.method private generate_body(III)V
    .registers 8

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, p3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indent(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_switch_label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v1, ": { "

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->default_value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v2, "; String "

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_guess:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v2, " = null;"

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->c_was_defined:Z

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->getOffset()I

    move-result v0

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v3, " int "

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(C)V

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->getOffset()I

    move-result v2

    iget-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->nl()V

    add-int/lit8 v3, p3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->generate_length_switch(III)V

    iget-boolean p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->c_was_defined:Z

    if-nez p1, :cond_74

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {p1, v0, v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->erase(II)V

    :cond_74
    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indent(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string p2, "if ("

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object p2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_guess:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string p2, "!=null && "

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object p2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_guess:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string p2, "!="

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object p2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string p2, " && !"

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object p2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_guess:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string p2, ".equals("

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object p2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string p2, ")) "

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object p2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object p2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->default_value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->nl()V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indent(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v0, "break "

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_switch_label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->nl()V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string/jumbo p2, "}"

    invoke-virtual {p1, p3, p2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->line(ILjava/lang/String;)V

    return-void
.end method

.method private generate_length_switch(III)V
    .registers 15

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->sort_pairs(III)V

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->check_all_is_different(II)V

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->count_different_lengths(II)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    add-int/lit8 v2, p2, -0x1

    aget-object v1, v1, v2

    iget v1, v1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->idLength:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->columns:[I

    iget v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->use_if_threshold:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_55

    if-eq v0, v3, :cond_53

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v1, p3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indent(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v4, "int "

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v4, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v4, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_length_suffix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v4, " = "

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v4, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v4, ".length();"

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->nl()V

    :cond_53
    const/4 v1, 0x1

    goto :goto_7c

    :cond_55
    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v1, p3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indent(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v4, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_label:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v4, ": switch ("

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v4, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v4, ".length()) {"

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->nl()V

    const/4 v1, 0x0

    :goto_7c
    iget-object v4, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    aget-object v4, v4, p1

    iget v4, v4, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->idLength:I

    move v5, p1

    :goto_83
    move v6, v5

    :goto_84
    add-int/lit8 v10, v6, 0x1

    if-eq v10, p2, :cond_93

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    aget-object v2, v2, v10

    iget v2, v2, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->idLength:I

    if-eq v2, v4, :cond_91

    goto :goto_93

    :cond_91
    move v6, v10

    goto :goto_84

    :cond_93
    :goto_93
    if-eqz v1, :cond_dd

    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v6, p3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indent(I)V

    if-eq v5, p1, :cond_a3

    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v7, "else "

    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    :cond_a3
    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v7, "if ("

    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    if-ne v0, v3, :cond_bb

    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v7, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v7, ".length()=="

    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    goto :goto_d0

    :cond_bb
    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v7, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v7, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_length_suffix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v7, "=="

    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    :goto_d0
    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v6, v4}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(I)V

    iget-object v4, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v6, ") {"

    invoke-virtual {v4, v6}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    goto :goto_f5

    :cond_dd
    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v6, p3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indent(I)V

    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v7, "case "

    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v6, v4}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(I)V

    iget-object v4, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v6, ":"

    invoke-virtual {v4, v6}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    :goto_f5
    add-int/lit8 v4, p3, 0x1

    move v7, v4

    xor-int/lit8 v8, v1, 0x1

    move-object v4, p0

    move v6, v10

    move v9, v1

    invoke-direct/range {v4 .. v9}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->generate_letter_switch(IIIZZ)V

    const-string/jumbo v4, "}"

    if-eqz v1, :cond_110

    iget-object v5, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v5, v4}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v5}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->nl()V

    goto :goto_12a

    :cond_110
    iget-object v5, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v6, "break "

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v5}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->nl()V

    :goto_12a
    if-ne v10, p2, :cond_13e

    if-nez v1, :cond_13d

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {p1, p3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indent(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {p1, v4}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->nl()V

    :cond_13d
    return-void

    :cond_13e
    move v4, v2

    move v5, v10

    goto/16 :goto_83
.end method

.method private generate_letter_switch(IIIZZ)V
    .registers 14

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    aget-object v0, v0, p1

    iget v4, v0, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->idLength:I

    const/4 v0, 0x0

    :goto_7
    if-eq v0, v4, :cond_10

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->columns:[I

    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_10
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->generate_letter_switch_r(IIIIZZ)Z

    return-void
.end method

.method private generate_letter_switch_r(IIIIZZ)Z
    .registers 30

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v0, p3

    move/from16 v10, p4

    add-int/lit8 v1, v8, 0x1

    const-string v11, ") {"

    const-string v12, "if ("

    const-string v2, ".charAt("

    const-string v13, ";"

    const/16 v14, 0x20

    const/4 v15, 0x0

    const-string v3, "="

    const/4 v6, 0x1

    if-ne v1, v9, :cond_114

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v1, v14}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(C)V

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    aget-object v1, v1, v8

    iget v4, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->char_tail_test_threshold:I

    if-le v0, v4, :cond_5b

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_guess:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v2, v1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->qstring(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v1, v1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    goto/16 :goto_10e

    :cond_5b
    const-string v4, "; break "

    if-nez v0, :cond_86

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v1, v1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_switch_label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    const/4 v15, 0x1

    goto/16 :goto_10e

    :cond_86
    iget-object v5, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v5, v12}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v5, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->columns:[I

    aget v5, v5, v15

    iget-object v8, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v9, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v8, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v8, v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v8, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v8, v5}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(I)V

    iget-object v8, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v9, ")=="

    invoke-virtual {v8, v9}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v8, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v10, v1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v8, v5}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->qchar(I)V

    :goto_b2
    if-eq v6, v0, :cond_e3

    iget-object v5, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v8, " && "

    invoke-virtual {v5, v8}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v5, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->columns:[I

    aget v5, v5, v6

    iget-object v8, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v10, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v8, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v8, v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v8, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v8, v5}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(I)V

    iget-object v8, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v8, v9}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v8, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v10, v1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v8, v5}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->qchar(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_b2

    :cond_e3
    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v11}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v1, v1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_switch_label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v1, ";}"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    :goto_10e
    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v14}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(C)V

    return v15

    :cond_114
    invoke-direct/range {p0 .. p3}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->find_max_different_column(III)I

    move-result v16

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->columns:[I

    aget v5, v1, v16

    invoke-direct {v7, v8, v9, v5}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->count_different_chars(III)I

    move-result v1

    iget-object v4, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->columns:[I

    add-int/lit8 v17, v0, -0x1

    aget v0, v4, v17

    aput v0, v4, v16

    if-eqz p6, :cond_135

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->nl()V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v10}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indent(I)V

    goto :goto_13a

    :cond_135
    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v14}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(C)V

    :goto_13a
    iget v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->use_if_threshold:I

    if-gt v1, v0, :cond_169

    iput-boolean v6, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->c_was_defined:Z

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(I)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    move/from16 v18, p5

    const/16 v19, 0x1

    goto :goto_1a1

    :cond_169
    if-nez p5, :cond_17b

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_17d

    :cond_17b
    move/from16 v0, p5

    :goto_17d
    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string/jumbo v3, "switch ("

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v3, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_s:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(I)V

    iget-object v1, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v2, ")) {"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    move/from16 v18, v0

    const/16 v19, 0x0

    :goto_1a1
    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    aget-object v0, v0, v8

    iget-object v0, v0, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v8

    move v2, v1

    const/4 v3, 0x0

    :goto_1ae
    add-int/lit8 v4, v2, 0x1

    if-eq v4, v9, :cond_1c1

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    aget-object v2, v2, v4

    iget-object v2, v2, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v0, :cond_1bf

    goto :goto_1c1

    :cond_1bf
    move v2, v4

    goto :goto_1ae

    :cond_1c1
    :goto_1c1
    move/from16 v20, v3

    if-eqz v19, :cond_1f6

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->nl()V

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v2, v10}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indent(I)V

    if-eq v1, v8, :cond_1d8

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v3, "else "

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    :cond_1d8
    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v2, v12}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v3, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v3, "=="

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->qchar(I)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v11}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    goto :goto_213

    :cond_1f6
    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->nl()V

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v2, v10}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indent(I)V

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v3, "case "

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->qchar(I)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    :goto_213
    add-int/lit8 v0, v10, 0x1

    move/from16 v21, v0

    move-object/from16 v0, p0

    move v2, v4

    move/from16 v3, v17

    move v15, v4

    move/from16 v4, v21

    move/from16 v21, v5

    move/from16 v5, v18

    const/16 v22, 0x1

    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->generate_letter_switch_r(IIIIZZ)Z

    move-result v0

    const-string/jumbo v1, "}"

    if-eqz v19, :cond_236

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    goto :goto_24b

    :cond_236
    if-nez v0, :cond_24b

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const-string v2, "break "

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v2, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->v_label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    :cond_24b
    :goto_24b
    if-ne v15, v9, :cond_28d

    if-eqz v19, :cond_264

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->nl()V

    if-eqz p6, :cond_25e

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    add-int/lit8 v1, v10, -0x1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indent(I)V

    goto :goto_287

    :cond_25e
    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v10}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indent(I)V

    goto :goto_287

    :cond_264
    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->nl()V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v10}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indent(I)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    if-eqz p6, :cond_282

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->nl()V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    add-int/lit8 v1, v10, -0x1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indent(I)V

    goto :goto_287

    :cond_282
    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0, v14}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(C)V

    :goto_287
    iget-object v0, v7, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->columns:[I

    aput v21, v0, v16

    const/4 v0, 0x0

    return v0

    :cond_28d
    move v1, v15

    move v2, v1

    move/from16 v0, v20

    move v3, v0

    move/from16 v5, v21

    const/4 v6, 0x1

    const/4 v15, 0x0

    goto/16 :goto_1ae
.end method

.method private static heap4Sort([Lorg/mozilla/javascript/tools/idswitch/IdValuePair;III)V
    .registers 9

    const/4 v0, 0x1

    if-gt p2, v0, :cond_4

    return-void

    :cond_4
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->makeHeap4([Lorg/mozilla/javascript/tools/idswitch/IdValuePair;III)V

    :goto_7
    if-le p2, v0, :cond_1c

    add-int/lit8 p2, p2, -0x1

    add-int v1, p1, p2

    aget-object v2, p0, v1

    add-int/lit8 v3, p1, 0x0

    aget-object v4, p0, v3

    aput-object v4, p0, v1

    aput-object v2, p0, v3

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, p3}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->heapify4([Lorg/mozilla/javascript/tools/idswitch/IdValuePair;IIII)V

    goto :goto_7

    :cond_1c
    return-void
.end method

.method private static heapify4([Lorg/mozilla/javascript/tools/idswitch/IdValuePair;IIII)V
    .registers 15

    add-int v0, p1, p3

    aget-object v0, p0, v0

    :goto_4
    shl-int/lit8 v1, p3, 0x2

    or-int/lit8 v2, v1, 0x1

    or-int/lit8 v3, v1, 0x2

    or-int/lit8 v4, v1, 0x3

    add-int/lit8 v1, v1, 0x4

    if-lt v1, p2, :cond_3f

    if-ge v2, p2, :cond_3e

    add-int v1, p1, v2

    aget-object v1, p0, v1

    if-eq v3, p2, :cond_32

    add-int v5, p1, v3

    aget-object v5, p0, v5

    invoke-static {v5, v1, p4}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->bigger(Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Lorg/mozilla/javascript/tools/idswitch/IdValuePair;I)Z

    move-result v6

    if-eqz v6, :cond_24

    move v2, v3

    move-object v1, v5

    :cond_24
    if-eq v4, p2, :cond_32

    add-int p2, p1, v4

    aget-object p2, p0, p2

    invoke-static {p2, v1, p4}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->bigger(Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Lorg/mozilla/javascript/tools/idswitch/IdValuePair;I)Z

    move-result v3

    if-eqz v3, :cond_32

    move-object v1, p2

    move v2, v4

    :cond_32
    invoke-static {v1, v0, p4}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->bigger(Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Lorg/mozilla/javascript/tools/idswitch/IdValuePair;I)Z

    move-result p2

    if-eqz p2, :cond_3e

    add-int/2addr p3, p1

    aput-object v1, p0, p3

    add-int/2addr p1, v2

    aput-object v0, p0, p1

    :cond_3e
    return-void

    :cond_3f
    add-int v5, p1, v2

    aget-object v5, p0, v5

    add-int v6, p1, v3

    aget-object v6, p0, v6

    add-int v7, p1, v4

    aget-object v7, p0, v7

    add-int v8, p1, v1

    aget-object v8, p0, v8

    invoke-static {v6, v5, p4}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->bigger(Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Lorg/mozilla/javascript/tools/idswitch/IdValuePair;I)Z

    move-result v9

    if-eqz v9, :cond_57

    move v2, v3

    move-object v5, v6

    :cond_57
    invoke-static {v8, v7, p4}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->bigger(Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Lorg/mozilla/javascript/tools/idswitch/IdValuePair;I)Z

    move-result v3

    if-eqz v3, :cond_5f

    move v4, v1

    move-object v7, v8

    :cond_5f
    invoke-static {v7, v5, p4}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->bigger(Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Lorg/mozilla/javascript/tools/idswitch/IdValuePair;I)Z

    move-result v1

    if-eqz v1, :cond_67

    move v2, v4

    move-object v5, v7

    :cond_67
    invoke-static {v0, v5, p4}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->bigger(Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Lorg/mozilla/javascript/tools/idswitch/IdValuePair;I)Z

    move-result v1

    if-eqz v1, :cond_6e

    return-void

    :cond_6e
    add-int/2addr p3, p1

    aput-object v5, p0, p3

    add-int p3, p1, v2

    aput-object v0, p0, p3

    move p3, v2

    goto :goto_4
.end method

.method private static makeHeap4([Lorg/mozilla/javascript/tools/idswitch/IdValuePair;III)V
    .registers 5

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v0, v0, 0x2

    :goto_4
    if-eqz v0, :cond_c

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, p2, v0, p3}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->heapify4([Lorg/mozilla/javascript/tools/idswitch/IdValuePair;IIII)V

    goto :goto_4

    :cond_c
    return-void
.end method

.method private on_same_pair_fail(Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Lorg/mozilla/javascript/tools/idswitch/IdValuePair;)Lorg/mozilla/javascript/EvaluatorException;
    .registers 10

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->getLineNumber()I

    move-result v0

    invoke-virtual {p2}, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->getLineNumber()I

    move-result p2

    if-le p2, v0, :cond_c

    move v4, p2

    goto :goto_e

    :cond_c
    move v4, v0

    move v0, p2

    :goto_e
    iget-object p1, p1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "msg.idswitch.same_string"

    invoke-static {v0, p1, p2}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    iget-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->source_file:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    return-object p1
.end method

.method private sort_pairs(III)V
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    sub-int/2addr p2, p1

    invoke-static {v0, p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->heap4Sort([Lorg/mozilla/javascript/tools/idswitch/IdValuePair;III)V

    return-void
.end method


# virtual methods
.method public generateSwitch([Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    const/4 v2, 0x0

    :goto_6
    if-eq v2, v0, :cond_1a

    new-instance v3, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    mul-int/lit8 v4, v2, 0x2

    aget-object v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    aget-object v4, p1, v4

    invoke-direct {v3, v5, v4}, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    invoke-virtual {p0, v1, p2}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->generateSwitch([Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Ljava/lang/String;)V

    return-void
.end method

.method public generateSwitch([Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Ljava/lang/String;)V
    .registers 4

    array-length v0, p1

    if-nez v0, :cond_4

    return-void

    :cond_4
    iput-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->pairs:[Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    iput-object p2, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->default_value:Ljava/lang/String;

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-direct {p0, p2, v0, p1}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->generate_body(III)V

    return-void
.end method

.method public getCodePrinter()Lorg/mozilla/javascript/tools/idswitch/CodePrinter;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    return-object v0
.end method

.method public getReporter()Lorg/mozilla/javascript/tools/ToolErrorReporter;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    return-object v0
.end method

.method public getSourceFileName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->source_file:Ljava/lang/String;

    return-object v0
.end method

.method public setCodePrinter(Lorg/mozilla/javascript/tools/idswitch/CodePrinter;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    return-void
.end method

.method public setReporter(Lorg/mozilla/javascript/tools/ToolErrorReporter;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    return-void
.end method

.method public setSourceFileName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->source_file:Ljava/lang/String;

    return-void
.end method
