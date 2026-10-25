.class public Lorg/mozilla/javascript/tools/idswitch/Main;
.super Ljava/lang/Object;
.source "Main.java"


# static fields
.field private static final GENERATED_TAG:I = 0x2

.field private static final GENERATED_TAG_STR:Ljava/lang/String; = "generated"

.field private static final NORMAL_LINE:I = 0x0

.field private static final STRING_TAG:I = 0x3

.field private static final STRING_TAG_STR:Ljava/lang/String; = "string"

.field private static final SWITCH_TAG:I = 0x1

.field private static final SWITCH_TAG_STR:Ljava/lang/String; = "string_id_map"


# instance fields
.field private P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

.field private R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

.field private final all_pairs:Ljava/util/List;

.field private body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

.field private source_file:Ljava/lang/String;

.field private tag_definition_end:I

.field private tag_value_end:I

.field private tag_value_start:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->all_pairs:Ljava/util/List;

    return-void
.end method

.method private add_id([CIIII)V
    .registers 7

    new-instance v0, Ljava/lang/String;

    sub-int/2addr p5, p4

    invoke-direct {v0, p1, p4, p5}, Ljava/lang/String;-><init>([CII)V

    new-instance p4, Ljava/lang/String;

    sub-int/2addr p3, p2

    invoke-direct {p4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    new-instance p1, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    invoke-direct {p1, v0, p4}, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {p2}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->getLineNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->setLineNumber(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->all_pairs:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static equals(Ljava/lang/String;[CII)Z
    .registers 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v1, p3, p2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x0

    :goto_a
    if-eq p2, p3, :cond_1a

    aget-char v1, p1, p2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1a
    const/4 p0, 0x1

    return p0

    :cond_1c
    return v2
.end method

.method private exec([Ljava/lang/String;)I
    .registers 5

    new-instance v0, Lorg/mozilla/javascript/tools/ToolErrorReporter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;-><init>(ZLjava/io/PrintStream;)V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/idswitch/Main;->process_options([Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1b

    const-string p1, "msg.idswitch.no_file_argument"

    invoke-static {p1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/idswitch/Main;->option_error(Ljava/lang/String;)V

    return v1

    :cond_1b
    if-le v0, v2, :cond_27

    const-string p1, "msg.idswitch.too_many_arguments"

    invoke-static {p1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/idswitch/Main;->option_error(Ljava/lang/String;)V

    return v1

    :cond_27
    new-instance v0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-direct {v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->setIndentStep(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->setIndentTabSize(I)V

    :try_start_38
    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/idswitch/Main;->process_file(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3d} :catch_3f
    .catch Lorg/mozilla/javascript/EvaluatorException; {:try_start_38 .. :try_end_3d} :catch_3e

    return v2

    :catch_3e
    return v1

    :catch_3f
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "msg.idswitch.io_error"

    invoke-static {v0, p1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/idswitch/Main;->print_error(Ljava/lang/String;)V

    return v1
.end method

.method private extract_line_tag_id([CII)I
    .registers 13

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_white_space([CII)I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->look_for_slash_slash([CII)I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p3, :cond_97

    add-int/lit8 p2, p2, 0x2

    const/4 v2, 0x1

    if-ne p2, v0, :cond_12

    const/4 p2, 0x1

    goto :goto_13

    :cond_12
    const/4 p2, 0x0

    :goto_13
    invoke-static {p1, v0, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_white_space([CII)I

    move-result v0

    if-eq v0, p3, :cond_97

    aget-char v3, p1, v0

    const/16 v4, 0x23

    if-ne v3, v4, :cond_97

    add-int/2addr v0, v2

    if-eq v0, p3, :cond_2c

    aget-char v3, p1, v0

    const/16 v5, 0x2f

    if-ne v3, v5, :cond_2c

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    move v5, v0

    :goto_2e
    const/16 v6, 0x3d

    if-eq v5, p3, :cond_42

    aget-char v7, p1, v5

    if-eq v7, v4, :cond_42

    if-eq v7, v6, :cond_42

    invoke-static {v7}, Lorg/mozilla/javascript/tools/idswitch/Main;->is_white_space(I)Z

    move-result v7

    if-eqz v7, :cond_3f

    goto :goto_42

    :cond_3f
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_42
    :goto_42
    if-eq v5, p3, :cond_97

    invoke-static {p1, v5, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_white_space([CII)I

    move-result v7

    if-eq v7, p3, :cond_97

    aget-char v8, p1, v7

    if-eq v8, v6, :cond_50

    if-ne v8, v4, :cond_97

    :cond_50
    invoke-direct {p0, p1, v0, v5, p2}, Lorg/mozilla/javascript/tools/idswitch/Main;->get_tag_id([CIIZ)I

    move-result v1

    if-eqz v1, :cond_97

    const/4 p2, 0x0

    if-ne v8, v4, :cond_68

    if-eqz v3, :cond_64

    neg-int v1, v1

    invoke-static {v1}, Lorg/mozilla/javascript/tools/idswitch/Main;->is_value_type(I)Z

    move-result p1

    if-eqz p1, :cond_64

    const-string p2, "msg.idswitch.no_end_usage"

    :cond_64
    add-int/2addr v7, v2

    iput v7, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_definition_end:I

    goto :goto_7b

    :cond_68
    if-eqz v3, :cond_6d

    const-string p2, "msg.idswitch.no_end_with_value"

    goto :goto_75

    :cond_6d
    invoke-static {v1}, Lorg/mozilla/javascript/tools/idswitch/Main;->is_value_type(I)Z

    move-result v0

    if-nez v0, :cond_75

    const-string p2, "msg.idswitch.no_value_allowed"

    :cond_75
    :goto_75
    add-int/2addr v7, v2

    invoke-direct {p0, p1, v7, p3, v1}, Lorg/mozilla/javascript/tools/idswitch/Main;->extract_tag_value([CIII)I

    move-result p1

    move v1, p1

    :goto_7b
    if-nez p2, :cond_7e

    goto :goto_97

    :cond_7e
    invoke-static {v1}, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_name(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->source_file:Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->getLineNumber()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_97
    :goto_97
    return v1
.end method

.method private extract_tag_value([CIII)I
    .registers 11

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_white_space([CII)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, p3, :cond_3a

    move v2, p2

    :goto_9
    if-eq v2, p3, :cond_2f

    aget-char v3, p1, v2

    invoke-static {v3}, Lorg/mozilla/javascript/tools/idswitch/Main;->is_white_space(I)Z

    move-result v4

    const/16 v5, 0x23

    if-eqz v4, :cond_28

    add-int/lit8 v3, v2, 0x1

    invoke-static {p1, v3, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_white_space([CII)I

    move-result v3

    if-eq v3, p3, :cond_24

    aget-char v4, p1, v3

    if-ne v4, v5, :cond_24

    move p1, v2

    move v2, v3

    goto :goto_30

    :cond_24
    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_9

    :cond_28
    if-ne v3, v5, :cond_2c

    move p1, v2

    goto :goto_30

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_2f
    move p1, p2

    :goto_30
    if-eq v2, p3, :cond_3a

    iput p2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_value_start:I

    iput p1, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_value_end:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_definition_end:I

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    if-eqz v1, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 p4, 0x0

    :goto_3f
    return p4
.end method

.method private generate_java_code()V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->clear()V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->all_pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->all_pairs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v1, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;

    invoke-direct {v1}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;-><init>()V

    const/4 v2, 0x2

    iput v2, v1, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->char_tail_test_threshold:I

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->setReporter(Lorg/mozilla/javascript/tools/ToolErrorReporter;)V

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->setCodePrinter(Lorg/mozilla/javascript/tools/idswitch/CodePrinter;)V

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->generateSwitch([Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Ljava/lang/String;)V

    return-void
.end method

.method private get_tag_id([CIIZ)I
    .registers 5

    if-eqz p4, :cond_17

    const-string/jumbo p4, "string_id_map"

    invoke-static {p4, p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->equals(Ljava/lang/String;[CII)Z

    move-result p4

    if-eqz p4, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    const-string p4, "generated"

    invoke-static {p4, p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->equals(Ljava/lang/String;[CII)Z

    move-result p4

    if-eqz p4, :cond_17

    const/4 p1, 0x2

    return p1

    :cond_17
    const-string/jumbo p4, "string"

    invoke-static {p4, p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->equals(Ljava/lang/String;[CII)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x3

    return p1

    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method private get_time_stamp()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, " \'Last update:\' yyyy-MM-dd HH:mm:ss z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static is_value_type(I)Z
    .registers 2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private static is_white_space(I)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_b

    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method private look_for_id_definitions([CIIZ)V
    .registers 11

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_white_space([CII)I

    move-result v2

    const-string p2, "Id_"

    invoke-static {p2, p1, v2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_matched_prefix(Ljava/lang/String;[CII)I

    move-result p2

    if-ltz p2, :cond_2e

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_name_char([CII)I

    move-result v3

    if-eq p2, v3, :cond_2e

    invoke-static {p1, v3, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_white_space([CII)I

    move-result v0

    if-eq v0, p3, :cond_2e

    aget-char p3, p1, v0

    const/16 v0, 0x3d

    if-ne p3, v0, :cond_2e

    if-eqz p4, :cond_27

    iget p2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_value_start:I

    iget p3, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_value_end:I

    move v4, p2

    move v5, p3

    goto :goto_29

    :cond_27
    move v4, p2

    move v5, v3

    :goto_29
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/tools/idswitch/Main;->add_id([CIIII)V

    :cond_2e
    return-void
.end method

.method private look_for_slash_slash([CII)I
    .registers 6

    :cond_0
    :goto_0
    add-int/lit8 v0, p2, 0x2

    if-gt v0, p3, :cond_15

    add-int/lit8 v0, p2, 0x1

    aget-char p2, p1, p2

    const/16 v1, 0x2f

    if-ne p2, v1, :cond_13

    add-int/lit8 p2, v0, 0x1

    aget-char v0, p1, v0

    if-ne v0, v1, :cond_0

    return p2

    :cond_13
    move p2, v0

    goto :goto_0

    :cond_15
    return p3
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2

    new-instance v0, Lorg/mozilla/javascript/tools/idswitch/Main;

    invoke-direct {v0}, Lorg/mozilla/javascript/tools/idswitch/Main;-><init>()V

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/tools/idswitch/Main;->exec([Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private option_error(Ljava/lang/String;)V
    .registers 3

    const-string v0, "msg.idswitch.bad_invocation"

    invoke-static {v0, p1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/idswitch/Main;->print_error(Ljava/lang/String;)V

    return-void
.end method

.method private print_error(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private process_file()V
    .registers 15

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->getBuffer()[C

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->startLineLoop()V

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    :goto_12
    iget-object v8, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v8}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->nextLine()Z

    move-result v8

    if-eqz v8, :cond_af

    iget-object v8, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v8}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->getLineBegin()I

    move-result v8

    iget-object v9, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v9}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->getLineEnd()I

    move-result v9

    invoke-direct {p0, v0, v8, v9}, Lorg/mozilla/javascript/tools/idswitch/Main;->extract_line_tag_id([CII)I

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v3, :cond_82

    if-eq v3, v12, :cond_43

    if-eq v3, v11, :cond_34

    goto/16 :goto_8f

    :cond_34
    if-nez v10, :cond_3a

    if-gez v4, :cond_8f

    move v4, v8

    goto :goto_8f

    :cond_3a
    const/4 v9, -0x2

    if-ne v10, v9, :cond_90

    if-gez v4, :cond_40

    move v4, v8

    :cond_40
    move v5, v8

    const/4 v3, 0x1

    goto :goto_8f

    :cond_43
    if-nez v10, :cond_49

    invoke-direct {p0, v0, v8, v9, v1}, Lorg/mozilla/javascript/tools/idswitch/Main;->look_for_id_definitions([CIIZ)V

    goto :goto_8f

    :cond_49
    const/4 v13, 0x3

    if-ne v10, v13, :cond_50

    invoke-direct {p0, v0, v8, v9, v12}, Lorg/mozilla/javascript/tools/idswitch/Main;->look_for_id_definitions([CIIZ)V

    goto :goto_8f

    :cond_50
    if-ne v10, v11, :cond_5a

    if-ltz v4, :cond_55

    goto :goto_90

    :cond_55
    iget v6, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_definition_end:I

    move v7, v9

    const/4 v3, 0x2

    goto :goto_8f

    :cond_5a
    if-ne v10, v2, :cond_90

    if-ltz v4, :cond_80

    iget-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->all_pairs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_80

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/idswitch/Main;->generate_java_code()V

    iget-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v8, v4, v5, v3}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->setReplacement(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/idswitch/Main;->get_time_stamp()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v8, v6, v7, v3}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->setReplacement(IILjava/lang/String;)Z

    :cond_80
    const/4 v3, 0x0

    goto :goto_8f

    :cond_82
    if-ne v10, v12, :cond_8c

    iget-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->all_pairs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x1

    const/4 v4, -0x1

    goto :goto_8f

    :cond_8c
    if-ne v10, v2, :cond_8f

    goto :goto_90

    :cond_8f
    :goto_8f
    const/4 v12, 0x0

    :cond_90
    :goto_90
    if-nez v12, :cond_94

    goto/16 :goto_12

    :cond_94
    invoke-static {v10}, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_name(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg.idswitch.bad_tag_order"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    iget-object v4, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->source_file:Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->getLineNumber()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_af
    if-nez v3, :cond_b2

    return-void

    :cond_b2
    invoke-static {v3}, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_name(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg.idswitch.file_end_in_switch"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    iget-object v4, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->source_file:Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->getLineNumber()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    goto :goto_ce

    :goto_cd
    throw v0

    :goto_ce
    goto :goto_cd
.end method

.method private process_options([Ljava/lang/String;)I
    .registers 15

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_5
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eq v2, v0, :cond_66

    aget-object v7, p1, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_63

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_63

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/4 v12, 0x0

    if-ne v10, v11, :cond_44

    if-ne v8, v9, :cond_26

    aput-object v12, p1, v2

    goto :goto_66

    :cond_26
    const-string v8, "--help"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    const/4 v3, 0x1

    goto :goto_61

    :cond_30
    const-string v8, "--version"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3a

    const/4 v4, 0x1

    goto :goto_61

    :cond_3a
    const-string v0, "msg.idswitch.bad_option"

    invoke-static {v0, v7}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/tools/idswitch/Main;->option_error(Ljava/lang/String;)V

    goto :goto_67

    :cond_44
    const/4 v9, 0x1

    :goto_45
    if-eq v9, v8, :cond_61

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x68

    if-eq v10, v11, :cond_5d

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const-string v2, "msg.idswitch.bad_option_char"

    invoke-static {v2, v0}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/tools/idswitch/Main;->option_error(Ljava/lang/String;)V

    goto :goto_67

    :cond_5d
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x1

    goto :goto_45

    :cond_61
    :goto_61
    aput-object v12, p1, v2

    :cond_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_66
    :goto_66
    const/4 v5, 0x1

    :goto_67
    if-ne v5, v6, :cond_75

    if-eqz v3, :cond_6f

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/idswitch/Main;->show_usage()V

    const/4 v5, 0x0

    :cond_6f
    if-eqz v4, :cond_75

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/idswitch/Main;->show_version()V

    goto :goto_76

    :cond_75
    move v1, v5

    :goto_76
    if-eq v1, v6, :cond_7b

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_7b
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/idswitch/Main;->remove_nulls([Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private remove_nulls([Ljava/lang/String;)I
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-eq v1, v0, :cond_c

    aget-object v2, p1, v1

    if-nez v2, :cond_9

    goto :goto_c

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    :goto_c
    if-eq v1, v0, :cond_1d

    add-int/lit8 v2, v1, 0x1

    :goto_10
    if-eq v2, v0, :cond_1d

    aget-object v3, p1, v2

    if-eqz v3, :cond_1a

    aput-object v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1d
    return v1
.end method

.method private show_usage()V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "msg.idswitch.usage"

    invoke-static {v1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method private show_version()V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "msg.idswitch.version"

    invoke-static {v1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static skip_matched_prefix(Ljava/lang/String;[CII)I
    .registers 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p3, p2

    const/4 v1, -0x1

    if-gt v0, p3, :cond_1a

    const/4 p3, 0x0

    :goto_9
    if-eq p3, v0, :cond_19

    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-char v3, p1, p2

    if-eq v2, v3, :cond_14

    goto :goto_1a

    :cond_14
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_19
    move v1, p2

    :cond_1a
    :goto_1a
    return v1
.end method

.method private static skip_name_char([CII)I
    .registers 5

    :goto_0
    if-eq p1, p2, :cond_24

    aget-char v0, p0, p1

    const/16 v1, 0x61

    if-gt v1, v0, :cond_c

    const/16 v1, 0x7a

    if-le v0, v1, :cond_21

    :cond_c
    const/16 v1, 0x41

    if-gt v1, v0, :cond_14

    const/16 v1, 0x5a

    if-le v0, v1, :cond_21

    :cond_14
    const/16 v1, 0x30

    if-gt v1, v0, :cond_1c

    const/16 v1, 0x39

    if-le v0, v1, :cond_21

    :cond_1c
    const/16 v1, 0x5f

    if-eq v0, v1, :cond_21

    goto :goto_24

    :cond_21
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_24
    :goto_24
    return p1
.end method

.method private static skip_white_space([CII)I
    .registers 4

    :goto_0
    if-eq p1, p2, :cond_e

    aget-char v0, p0, p1

    invoke-static {v0}, Lorg/mozilla/javascript/tools/idswitch/Main;->is_white_space(I)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_e

    :cond_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_e
    :goto_e
    return p1
.end method

.method private static tag_name(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x2

    if-eq p0, v0, :cond_19

    const/4 v0, -0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const-string p0, ""

    return-object p0

    :cond_f
    const-string p0, "generated"

    return-object p0

    :cond_12
    const-string/jumbo p0, "string_id_map"

    return-object p0

    :cond_16
    const-string p0, "/string_id_map"

    return-object p0

    :cond_19
    const-string p0, "/generated"

    return-object p0
.end method


# virtual methods
.method process_file(Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->source_file:Ljava/lang/String;

    new-instance v0, Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-direct {v0}, Lorg/mozilla/javascript/tools/idswitch/FileBody;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    goto :goto_19

    :cond_14
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :goto_19
    :try_start_19
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "ASCII"

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->readData(Ljava/io/Reader;)V
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_59

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/idswitch/Main;->process_file()V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->wasModified()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    goto :goto_42

    :cond_3c
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_42
    :try_start_42
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->writeData(Ljava/io/Writer;)V

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_53

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    goto :goto_58

    :catchall_53
    move-exception v0

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    throw v0

    :cond_58
    :goto_58
    return-void

    :catchall_59
    move-exception p1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw p1
.end method
