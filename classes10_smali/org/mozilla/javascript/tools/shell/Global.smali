.class public Lorg/mozilla/javascript/tools/shell/Global;
.super Lorg/mozilla/javascript/ImporterTopLevel;
.source "Global.java"


# static fields
.field static final serialVersionUID:J = 0x37ea591919c223d5L


# instance fields
.field attemptedJLineLoad:Z

.field private console:Lorg/mozilla/javascript/tools/shell/ShellConsole;

.field private doctestCanonicalizations:Ljava/util/HashMap;

.field private errStream:Ljava/io/PrintStream;

.field history:Lorg/mozilla/javascript/NativeArray;

.field private inStream:Ljava/io/InputStream;

.field initialized:Z

.field private outStream:Ljava/io/PrintStream;

.field private prompts:[Ljava/lang/String;

.field private quitAction:Lorg/mozilla/javascript/tools/shell/QuitAction;

.field private sealedStdLib:Z


# direct methods
.method public static synthetic $r8$lambda$QRMIKKwBvzpmLL1LluAGrzZ4Kjw(Lorg/mozilla/javascript/tools/shell/Global;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/shell/Global;->lambda$init$0(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lorg/mozilla/javascript/ImporterTopLevel;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/tools/shell/Global;->sealedStdLib:Z

    const-string v0, "js> "

    const-string v1, "  > "

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/tools/shell/Global;->prompts:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Context;)V
    .registers 4

    invoke-direct {p0}, Lorg/mozilla/javascript/ImporterTopLevel;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/tools/shell/Global;->sealedStdLib:Z

    const-string v0, "js> "

    const-string v1, "  > "

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/tools/shell/Global;->prompts:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/shell/Global;->init(Lorg/mozilla/javascript/Context;)V

    return-void
.end method

.method public static defineClass(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)V
    .registers 4

    invoke-static {p2}, Lorg/mozilla/javascript/tools/shell/Global;->getClass([Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    const-class p2, Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    return-void

    :cond_10
    const-string p0, "msg.must.implement.Scriptable"

    invoke-static {p0}, Lorg/mozilla/javascript/tools/shell/Global;->reportRuntimeError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static deserialize(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)Ljava/lang/Object;
    .registers 4

    array-length p0, p2

    const/4 p3, 0x1

    if-lt p0, p3, :cond_25

    const/4 p0, 0x0

    aget-object p0, p2, p0

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    new-instance p1, Lorg/mozilla/javascript/serialize/ScriptableInputStream;

    invoke-direct {p1, p2, p0}, Lorg/mozilla/javascript/serialize/ScriptableInputStream;-><init>(Ljava/io/InputStream;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V

    invoke-static {p2, p0}, Lorg/mozilla/javascript/Context;->toObject(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0

    :cond_25
    const-string p0, "Expected a filename to read the serialization from"

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0
.end method

.method private static doPrint([Ljava/lang/Object;Lorg/mozilla/javascript/Function;Z)Ljava/lang/Object;
    .registers 5

    invoke-static {p1}, Lorg/mozilla/javascript/tools/shell/Global;->getInstance(Lorg/mozilla/javascript/Function;)Lorg/mozilla/javascript/tools/shell/Global;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/shell/Global;->getOut()Ljava/io/PrintStream;

    move-result-object p1

    const/4 v0, 0x0

    :goto_9
    array-length v1, p0

    if-ge v0, v1, :cond_1f

    if-lez v0, :cond_13

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_13
    aget-object v1, p0, v0

    invoke-static {v1}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1f
    if-eqz p2, :cond_24

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    :cond_24
    invoke-static {}, Lorg/mozilla/javascript/Context;->getUndefinedValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static doctest(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)Ljava/lang/Object;
    .registers 10

    array-length p1, p2

    if-nez p1, :cond_6

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_6
    const/4 p1, 0x0

    aget-object p1, p2, p1

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lorg/mozilla/javascript/tools/shell/Global;->getInstance(Lorg/mozilla/javascript/Function;)Lorg/mozilla/javascript/tools/shell/Global;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/tools/shell/Global;->runDoctest(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private doctestOutputMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    return v1

    :cond_18
    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/Global;->doctestCanonicalizations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_22

    :cond_3f
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    return v1

    :cond_46
    const-string v0, "@[0-9a-fA-F]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :cond_54
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5c

    return v4

    :cond_5c
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_63

    return v4

    :cond_63
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    if-eq v3, v5, :cond_6e

    return v4

    :cond_6e
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_81

    return v4

    :cond_81
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/mozilla/javascript/tools/shell/Global;->doctestCanonicalizations:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_9d

    iget-object v4, p0, Lorg/mozilla/javascript/tools/shell/Global;->doctestCanonicalizations:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_a4

    :cond_9d
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a4

    return v4

    :cond_a4
    :goto_a4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    return v1
.end method

.method public static gc(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)V
    .registers 4

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private static getCharCodingFromType(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_5a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_c
    add-int/lit8 v0, v0, 0x1

    const/16 v8, 0x20

    if-eq v0, v1, :cond_19

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v2, v8, :cond_19

    goto :goto_c

    :cond_19
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x7

    const-string v2, "charset"

    move-object v5, p0

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_5a

    add-int/lit8 v0, v0, 0x7

    :goto_28
    if-eq v0, v1, :cond_33

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v2, v8, :cond_33

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_33
    if-eq v0, v1, :cond_5a

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_5a

    :goto_3d
    add-int/lit8 v0, v0, 0x1

    if-eq v0, v1, :cond_48

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v2, v8, :cond_48

    goto :goto_3d

    :cond_48
    if-eq v0, v1, :cond_5a

    :goto_4a
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v2, v8, :cond_55

    add-int/lit8 v1, v1, -0x1

    goto :goto_4a

    :cond_55
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getClass([Ljava/lang/Object;)Ljava/lang/Class;
    .registers 4

    array-length v0, p0

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    aget-object v1, p0, v0

    instance-of v2, v1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v2, :cond_17

    check-cast v1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {v1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_17

    check-cast v1, Ljava/lang/Class;

    return-object v1

    :cond_17
    aget-object p0, p0, v0

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :try_start_1d
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_21
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1d .. :try_end_21} :catch_22

    return-object p0

    :catch_22
    const-string v0, "msg.class.not.found"

    invoke-static {v0, p0}, Lorg/mozilla/javascript/tools/shell/Global;->reportRuntimeError(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_29
    const-string p0, "msg.expected.string.arg"

    invoke-static {p0}, Lorg/mozilla/javascript/tools/shell/Global;->reportRuntimeError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static getInstance(Lorg/mozilla/javascript/Function;)Lorg/mozilla/javascript/tools/shell/Global;
    .registers 2

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    instance-of v0, p0, Lorg/mozilla/javascript/tools/shell/Global;

    if-eqz v0, :cond_b

    check-cast p0, Lorg/mozilla/javascript/tools/shell/Global;

    return-object p0

    :cond_b
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "msg.bad.shell.function.scope"

    invoke-static {v0, p0}, Lorg/mozilla/javascript/tools/shell/Global;->reportRuntimeError(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static help(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)V
    .registers 4

    invoke-static {p3}, Lorg/mozilla/javascript/tools/shell/Global;->getInstance(Lorg/mozilla/javascript/Function;)Lorg/mozilla/javascript/tools/shell/Global;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/Global;->getOut()Ljava/io/PrintStream;

    move-result-object p0

    const-string p1, "msg.help"

    invoke-static {p1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$init$0(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/shell/Global;->init(Lorg/mozilla/javascript/Context;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static load(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)V
    .registers 6

    array-length p3, p2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p3, :cond_33

    aget-object v1, p2, v0

    invoke-static {v1}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :try_start_a
    invoke-static {p0, p1, v1}, Lorg/mozilla/javascript/tools/shell/Main;->processFile(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_23
    .catch Ljava/lang/VirtualMachineError; {:try_start_a .. :try_end_d} :catch_10

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_10
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/VirtualMachineError;->printStackTrace()V

    invoke-virtual {p0}, Ljava/lang/VirtualMachineError;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg.uncaughtJSException"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    :catch_23
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg.couldnt.read.source"

    invoke-static {p1, v1, p0}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    :cond_33
    return-void
.end method

.method public static loadClass(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)V
    .registers 4

    invoke-static {p2}, Lorg/mozilla/javascript/tools/shell/Global;->getClass([Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p2

    const-class p3, Lorg/mozilla/javascript/Script;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_16

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mozilla/javascript/Script;

    invoke-interface {p2, p0, p1}, Lorg/mozilla/javascript/Script;->exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    return-void

    :cond_16
    const-string p0, "msg.must.implement.Script"

    invoke-static {p0}, Lorg/mozilla/javascript/tools/shell/Global;->reportRuntimeError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private loadJLine(Ljava/nio/charset/Charset;)Z
    .registers 4

    iget-boolean v0, p0, Lorg/mozilla/javascript/tools/shell/Global;->attemptedJLineLoad:Z

    const/4 v1, 0x1

    if-nez v0, :cond_d

    iput-boolean v1, p0, Lorg/mozilla/javascript/tools/shell/Global;->attemptedJLineLoad:Z

    invoke-static {p0, p1}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->getConsole(Lorg/mozilla/javascript/Scriptable;Ljava/nio/charset/Charset;)Lorg/mozilla/javascript/tools/shell/ShellConsole;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/Global;->console:Lorg/mozilla/javascript/tools/shell/ShellConsole;

    :cond_d
    iget-object p1, p0, Lorg/mozilla/javascript/tools/shell/Global;->console:Lorg/mozilla/javascript/tools/shell/ShellConsole;

    if-eqz p1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method static pipe(ZLjava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 7

    const/16 v0, 0x1000

    :try_start_2
    new-array v1, v0, [B

    :goto_4
    const/4 v2, 0x0

    if-nez p0, :cond_c

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_2e

    goto :goto_10

    :cond_c
    :try_start_c
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_23
    .catchall {:try_start_c .. :try_end_10} :catchall_2e

    :goto_10
    if-gez v3, :cond_13

    goto :goto_24

    :cond_13
    if-eqz p0, :cond_1c

    :try_start_15
    invoke-virtual {p2, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_2e

    goto :goto_4

    :cond_1c
    :try_start_1c
    invoke-virtual {p2, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_22} :catch_23
    .catchall {:try_start_1c .. :try_end_22} :catchall_2e

    goto :goto_4

    :catch_23
    nop

    :goto_24
    if-eqz p0, :cond_2a

    :try_start_26
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_2d

    :cond_2a
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2d} :catch_2d

    :catch_2d
    :goto_2d
    return-void

    :catchall_2e
    move-exception v0

    if-eqz p0, :cond_35

    :try_start_31
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_38

    :cond_35
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_38} :catch_38

    :catch_38
    :goto_38
    goto :goto_3a

    :goto_39
    throw v0

    :goto_3a
    goto :goto_39
.end method

.method public static print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)Ljava/lang/Object;
    .registers 4

    const/4 p0, 0x1

    invoke-static {p2, p3, p0}, Lorg/mozilla/javascript/tools/shell/Global;->doPrint([Ljava/lang/Object;Lorg/mozilla/javascript/Function;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static quit(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)V
    .registers 5

    invoke-static {p3}, Lorg/mozilla/javascript/tools/shell/Global;->getInstance(Lorg/mozilla/javascript/Function;)Lorg/mozilla/javascript/tools/shell/Global;

    move-result-object p1

    iget-object p3, p1, Lorg/mozilla/javascript/tools/shell/Global;->quitAction:Lorg/mozilla/javascript/tools/shell/QuitAction;

    if-eqz p3, :cond_18

    array-length p3, p2

    const/4 v0, 0x0

    if-nez p3, :cond_d

    goto :goto_13

    :cond_d
    aget-object p2, p2, v0

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v0

    :goto_13
    iget-object p1, p1, Lorg/mozilla/javascript/tools/shell/Global;->quitAction:Lorg/mozilla/javascript/tools/shell/QuitAction;

    invoke-interface {p1, p0, v0}, Lorg/mozilla/javascript/tools/shell/QuitAction;->quit(Lorg/mozilla/javascript/Context;I)V

    :cond_18
    return-void
.end method

.method public static readFile(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)Ljava/lang/Object;
    .registers 6

    array-length p0, p2

    if-eqz p0, :cond_1b

    const/4 p0, 0x0

    aget-object p0, p2, p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    array-length p3, p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-lt p3, v0, :cond_16

    aget-object p1, p2, v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_16
    invoke-static {p0, p1, v1}, Lorg/mozilla/javascript/tools/shell/Global;->readUrl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    const-string p0, "msg.shell.readFile.bad.args"

    invoke-static {p0}, Lorg/mozilla/javascript/tools/shell/Global;->reportRuntimeError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static readReader(Ljava/io/Reader;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lorg/mozilla/javascript/tools/shell/Global;->readReader(Ljava/io/Reader;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readReader(Ljava/io/Reader;I)Ljava/lang/String;
    .registers 5

    new-array p1, p1, [C

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_4
    :goto_4
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/Reader;->read([CII)I

    move-result v2

    if-gez v2, :cond_12

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_12
    add-int/2addr v1, v2

    array-length v2, p1

    if-ne v1, v2, :cond_4

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    goto :goto_4
.end method

.method public static readUrl(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)Ljava/lang/Object;
    .registers 6

    array-length p0, p2

    if-eqz p0, :cond_1b

    const/4 p0, 0x0

    aget-object p1, p2, p0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    array-length v0, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_16

    const/4 p3, 0x1

    aget-object p2, p2, p3

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_16
    invoke-static {p1, p3, p0}, Lorg/mozilla/javascript/tools/shell/Global;->readUrl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    const-string p0, "msg.shell.readUrl.bad.args"

    invoke-static {p0}, Lorg/mozilla/javascript/tools/shell/Global;->reportRuntimeError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static readUrl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    if-nez p2, :cond_25

    :try_start_3
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLength()I

    move-result p2

    if-gtz p2, :cond_18

    const/16 p2, 0x400

    :cond_18
    if-nez p1, :cond_4c

    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4c

    invoke-static {p0}, Lorg/mozilla/javascript/tools/shell/Global;->getCharCodingFromType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4c

    :cond_25
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-virtual {p2}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p0, v1

    int-to-long v3, p0

    cmp-long v5, v3, v1

    if-nez v5, :cond_63

    if-nez p0, :cond_45

    const-string p0, ""

    return-object p0

    :cond_45
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move p2, p0

    move-object v0, v1

    :cond_4c
    :goto_4c
    if-nez p1, :cond_54

    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_59

    :cond_54
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_59
    invoke-static {p0, p2}, Lorg/mozilla/javascript/tools/shell/Global;->readReader(Ljava/io/Reader;I)Ljava/lang/String;

    move-result-object p0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_a8

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_62
    return-object p0

    :cond_63
    :try_start_63
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Too big file size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7a
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot read file: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_91
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File not found: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a8
    .catchall {:try_start_63 .. :try_end_a8} :catchall_a8

    :catchall_a8
    move-exception p0

    if-eqz v0, :cond_ae

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_ae
    throw p0
.end method

.method public static readline(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)Ljava/lang/Object;
    .registers 4

    invoke-static {p3}, Lorg/mozilla/javascript/tools/shell/Global;->getInstance(Lorg/mozilla/javascript/Function;)Lorg/mozilla/javascript/tools/shell/Global;

    move-result-object p0

    array-length p1, p2

    if-lez p1, :cond_15

    iget-object p0, p0, Lorg/mozilla/javascript/tools/shell/Global;->console:Lorg/mozilla/javascript/tools/shell/ShellConsole;

    const/4 p1, 0x0

    aget-object p1, p2, p1

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    iget-object p0, p0, Lorg/mozilla/javascript/tools/shell/Global;->console:Lorg/mozilla/javascript/tools/shell/ShellConsole;

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->readLine()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static reportRuntimeError(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .registers 1

    invoke-static {p0}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    return-object p0
.end method

.method static reportRuntimeError(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/RuntimeException;
    .registers 2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    return-object p0
.end method

.method public static runCommand(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)Ljava/lang/Object;
    .registers 24

    move-object/from16 v0, p2

    array-length v1, v0

    if-eqz v1, :cond_189

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    aget-object v3, v0, v2

    instance-of v3, v3, Lorg/mozilla/javascript/Scriptable;

    if-nez v3, :cond_189

    :cond_f
    add-int/lit8 v3, v1, -0x1

    aget-object v4, v0, v3

    instance-of v4, v4, Lorg/mozilla/javascript/Scriptable;

    const-string v5, "err"

    const-string v6, "output"

    const/4 v7, 0x0

    if-eqz v4, :cond_101

    aget-object v3, v0, v3

    check-cast v3, Lorg/mozilla/javascript/Scriptable;

    add-int/lit8 v1, v1, -0x1

    const-string v4, "env"

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    sget-object v8, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v4, v8, :cond_8e

    if-nez v4, :cond_31

    new-array v4, v2, [Ljava/lang/String;

    goto :goto_8f

    :cond_31
    instance-of v8, v4, Lorg/mozilla/javascript/Scriptable;

    if-eqz v8, :cond_87

    check-cast v4, Lorg/mozilla/javascript/Scriptable;

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptableObject;->getPropertyIds(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;

    move-result-object v8

    array-length v9, v8

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    :goto_3f
    array-length v11, v8

    if-eq v10, v11, :cond_85

    aget-object v11, v8, v10

    instance-of v12, v11, Ljava/lang/String;

    if-eqz v12, :cond_4f

    check-cast v11, Ljava/lang/String;

    invoke-static {v4, v11}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_62

    :cond_4f
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v11}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v19, v12

    move-object v12, v11

    move-object/from16 v11, v19

    :goto_62
    sget-object v13, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v12, v13, :cond_68

    sget-object v12, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_68
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x3d

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3f

    :cond_85
    move-object v4, v9

    goto :goto_8f

    :cond_87
    const-string v0, "msg.runCommand.bad.env"

    invoke-static {v0}, Lorg/mozilla/javascript/tools/shell/Global;->reportRuntimeError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_8e
    move-object v4, v7

    :goto_8f
    const-string v8, "dir"

    invoke-static {v3, v8}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v8, v9, :cond_a3

    new-instance v10, Ljava/io/File;

    invoke-static {v8}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_a4

    :cond_a3
    move-object v10, v7

    :goto_a4
    const-string v8, "input"

    invoke-static {v3, v8}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v9, :cond_b1

    invoke-static {v8}, Lorg/mozilla/javascript/tools/shell/Global;->toInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v8

    goto :goto_b2

    :cond_b1
    move-object v8, v7

    :goto_b2
    invoke-static {v3, v6}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-eq v11, v9, :cond_c6

    invoke-static {v11}, Lorg/mozilla/javascript/tools/shell/Global;->toOutputStream(Ljava/lang/Object;)Ljava/io/OutputStream;

    move-result-object v12

    if-nez v12, :cond_c4

    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_c7

    :cond_c4
    move-object v13, v7

    goto :goto_c8

    :cond_c6
    move-object v12, v7

    :goto_c7
    move-object v13, v12

    :goto_c8
    invoke-static {v3, v5}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    if-eq v14, v9, :cond_dd

    invoke-static {v14}, Lorg/mozilla/javascript/tools/shell/Global;->toOutputStream(Ljava/lang/Object;)Ljava/io/OutputStream;

    move-result-object v15

    if-nez v15, :cond_da

    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_de

    :cond_da
    move-object/from16 v16, v7

    goto :goto_e0

    :cond_dd
    move-object v15, v7

    :goto_de
    move-object/from16 v16, v15

    :goto_e0
    const-string v2, "args"

    invoke-static {v3, v2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v9, :cond_f6

    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v7

    invoke-static {v2, v7}, Lorg/mozilla/javascript/Context;->toObject(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    move-object/from16 v7, p0

    invoke-virtual {v7, v2}, Lorg/mozilla/javascript/Context;->getElements(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;

    move-result-object v7

    :cond_f6
    move-object v9, v4

    move-object v2, v7

    move-object v4, v11

    move-object v7, v12

    move-object v11, v8

    move-object/from16 v19, v13

    move-object v13, v3

    move-object/from16 v3, v19

    goto :goto_10c

    :cond_101
    move-object v2, v7

    move-object v3, v2

    move-object v4, v3

    move-object v9, v4

    move-object v10, v9

    move-object v11, v10

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    :goto_10c
    invoke-static/range {p3 .. p3}, Lorg/mozilla/javascript/tools/shell/Global;->getInstance(Lorg/mozilla/javascript/Function;)Lorg/mozilla/javascript/tools/shell/Global;

    move-result-object v8

    if-nez v7, :cond_116

    invoke-virtual {v8}, Lorg/mozilla/javascript/tools/shell/Global;->getOut()Ljava/io/PrintStream;

    move-result-object v7

    :cond_116
    move-object v12, v7

    if-nez v15, :cond_11d

    invoke-virtual {v8}, Lorg/mozilla/javascript/tools/shell/Global;->getErr()Ljava/io/PrintStream;

    move-result-object v15

    :cond_11d
    if-nez v2, :cond_121

    move v7, v1

    goto :goto_123

    :cond_121
    array-length v7, v2

    add-int/2addr v7, v1

    :goto_123
    new-array v8, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    :goto_126
    if-eq v7, v1, :cond_133

    aget-object v18, v0, v7

    invoke-static/range {v18 .. v18}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_126

    :cond_133
    if-eqz v2, :cond_146

    const/4 v0, 0x0

    :goto_136
    array-length v7, v2

    if-eq v0, v7, :cond_146

    add-int v7, v1, v0

    aget-object v17, v2, v0

    invoke-static/range {v17 .. v17}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v8, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_136

    :cond_146
    move-object v7, v13

    move-object v13, v15

    invoke-static/range {v8 .. v13}, Lorg/mozilla/javascript/tools/shell/Global;->runProcess([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;)I

    move-result v0

    if-eqz v3, :cond_168

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v6, v1}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_168
    if-eqz v16, :cond_184

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v5, v1}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_184
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_189
    const-string v0, "msg.runCommand.bad.args"

    invoke-static {v0}, Lorg/mozilla/javascript/tools/shell/Global;->reportRuntimeError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    goto :goto_191

    :goto_190
    throw v0

    :goto_191
    goto :goto_190
.end method

.method private static runProcess([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;)I
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_c

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1, p0, v0, p2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object p0

    goto :goto_14

    :cond_c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object p0

    :goto_14
    if-eqz p3, :cond_24

    :try_start_16
    new-instance p1, Lorg/mozilla/javascript/tools/shell/PipeThread;

    const/4 p2, 0x0

    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p1, p2, p3, v1}, Lorg/mozilla/javascript/tools/shell/PipeThread;-><init>(ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_2c

    :cond_24
    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    move-object p1, v0

    :goto_2c
    const/4 p2, 0x1

    if-eqz p4, :cond_3c

    new-instance p3, Lorg/mozilla/javascript/tools/shell/PipeThread;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p3, p2, v1, p4}, Lorg/mozilla/javascript/tools/shell/PipeThread;-><init>(ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    goto :goto_44

    :cond_3c
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    move-object p3, v0

    :goto_44
    if-eqz p5, :cond_53

    new-instance v0, Lorg/mozilla/javascript/tools/shell/PipeThread;

    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p4

    invoke-direct {v0, p2, p4, p5}, Lorg/mozilla/javascript/tools/shell/PipeThread;-><init>(ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_5a

    :cond_53
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catchall {:try_start_16 .. :try_end_5a} :catchall_74

    :catch_5a
    :goto_5a
    :try_start_5a
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    if-eqz p3, :cond_62

    invoke-virtual {p3}, Ljava/lang/Thread;->join()V

    :cond_62
    if-eqz p1, :cond_67

    invoke-virtual {p1}, Ljava/lang/Thread;->join()V

    :cond_67
    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_6c
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_6c} :catch_5a
    .catchall {:try_start_5a .. :try_end_6c} :catchall_74

    :cond_6c
    :try_start_6c
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result p1
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_74

    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    return p1

    :catchall_74
    move-exception p1

    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    throw p1
.end method

.method public static seal(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)V
    .registers 5

    const/4 p0, 0x0

    const/4 p1, 0x0

    :goto_2
    array-length p3, p2

    if-eq p1, p3, :cond_2a

    aget-object p3, p2, p1

    instance-of v0, p3, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v0, :cond_13

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p3, v0, :cond_10

    goto :goto_13

    :cond_10
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_13
    :goto_13
    instance-of p0, p3, Lorg/mozilla/javascript/Scriptable;

    if-eqz p0, :cond_23

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p3, p0, :cond_1c

    goto :goto_23

    :cond_1c
    const-string p0, "msg.shell.seal.not.scriptable"

    invoke-static {p0}, Lorg/mozilla/javascript/tools/shell/Global;->reportRuntimeError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_23
    :goto_23
    const-string p0, "msg.shell.seal.not.object"

    invoke-static {p0}, Lorg/mozilla/javascript/tools/shell/Global;->reportRuntimeError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2a
    :goto_2a
    array-length p1, p2

    if-eq p0, p1, :cond_37

    aget-object p1, p2, p0

    check-cast p1, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_2a

    :cond_37
    return-void
.end method

.method public static serialize(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)V
    .registers 4

    array-length p0, p2

    const/4 p3, 0x2

    if-lt p0, p3, :cond_23

    const/4 p0, 0x0

    aget-object p0, p2, p0

    const/4 p3, 0x1

    aget-object p2, p2, p3

    invoke-static {p2}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    new-instance p2, Lorg/mozilla/javascript/serialize/ScriptableOutputStream;

    invoke-direct {p2, p3, p1}, Lorg/mozilla/javascript/serialize/ScriptableOutputStream;-><init>(Ljava/io/OutputStream;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {p2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/io/ObjectOutputStream;->close()V

    return-void

    :cond_23
    const-string p0, "Expected an object to serialize and a filename to write the serialization to"

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0
.end method

.method public static spawn(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)Ljava/lang/Object;
    .registers 7

    invoke-interface {p3}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    array-length p3, p2

    const/4 v0, 0x0

    if-eqz p3, :cond_2f

    aget-object p3, p2, v0

    instance-of p3, p3, Lorg/mozilla/javascript/Function;

    if-eqz p3, :cond_2f

    const/4 p3, 0x0

    array-length v1, p2

    const/4 v2, 0x1

    if-le v1, v2, :cond_21

    aget-object v1, p2, v2

    instance-of v1, v1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_21

    aget-object p3, p2, v2

    check-cast p3, Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Context;->getElements(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;

    move-result-object p3

    :cond_21
    if-nez p3, :cond_25

    sget-object p3, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    :cond_25
    new-instance v1, Lorg/mozilla/javascript/tools/shell/Runner;

    aget-object p2, p2, v0

    check-cast p2, Lorg/mozilla/javascript/Function;

    invoke-direct {v1, p1, p2, p3}, Lorg/mozilla/javascript/tools/shell/Runner;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;)V

    goto :goto_41

    :cond_2f
    array-length p3, p2

    if-eqz p3, :cond_50

    aget-object p3, p2, v0

    instance-of p3, p3, Lorg/mozilla/javascript/Script;

    if-eqz p3, :cond_50

    new-instance v1, Lorg/mozilla/javascript/tools/shell/Runner;

    aget-object p2, p2, v0

    check-cast p2, Lorg/mozilla/javascript/Script;

    invoke-direct {v1, p1, p2}, Lorg/mozilla/javascript/tools/shell/Runner;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Script;)V

    :goto_41
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getFactory()Lorg/mozilla/javascript/ContextFactory;

    move-result-object p0

    iput-object p0, v1, Lorg/mozilla/javascript/tools/shell/Runner;->factory:Lorg/mozilla/javascript/ContextFactory;

    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-object p0

    :cond_50
    const-string p0, "msg.spawn.args"

    invoke-static {p0}, Lorg/mozilla/javascript/tools/shell/Global;->reportRuntimeError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static sync(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)Ljava/lang/Object;
    .registers 6

    array-length p0, p2

    const/4 p1, 0x1

    if-lt p0, p1, :cond_25

    array-length p0, p2

    const/4 p3, 0x2

    if-gt p0, p3, :cond_25

    const/4 p0, 0x0

    aget-object v0, p2, p0

    instance-of v0, v0, Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    array-length v1, p2

    if-ne v1, p3, :cond_1b

    aget-object p3, p2, p1

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq p3, v1, :cond_1b

    aget-object v0, p2, p1

    :cond_1b
    new-instance p1, Lorg/mozilla/javascript/Synchronizer;

    aget-object p0, p2, p0

    check-cast p0, Lorg/mozilla/javascript/Function;

    invoke-direct {p1, p0, v0}, Lorg/mozilla/javascript/Synchronizer;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-object p1

    :cond_25
    const-string p0, "msg.sync.args"

    invoke-static {p0}, Lorg/mozilla/javascript/tools/shell/Global;->reportRuntimeError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static toInputStream(Ljava/lang/Object;)Ljava/io/InputStream;
    .registers 5

    instance-of v0, p0, Lorg/mozilla/javascript/Wrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {v0}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/io/InputStream;

    if-eqz v2, :cond_16

    check-cast v0, Ljava/io/InputStream;

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3d

    :cond_16
    instance-of v2, v0, [B

    if-eqz v2, :cond_24

    new-instance v2, Ljava/io/ByteArrayInputStream;

    check-cast v0, [B

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_3d

    :cond_24
    instance-of v2, v0, Ljava/io/Reader;

    if-eqz v2, :cond_2f

    check-cast v0, Ljava/io/Reader;

    invoke-static {v0}, Lorg/mozilla/javascript/tools/shell/Global;->readReader(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    :cond_2f
    instance-of v2, v0, [C

    if-eqz v2, :cond_3c

    new-instance v2, Ljava/lang/String;

    check-cast v0, [C

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    move-object v0, v2

    goto :goto_3d

    :cond_3c
    move-object v0, v1

    :goto_3d
    if-nez v1, :cond_4e

    if-nez v0, :cond_45

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_45
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_4e
    return-object v1
.end method

.method private static toOutputStream(Ljava/lang/Object;)Ljava/io/OutputStream;
    .registers 2

    instance-of v0, p0, Lorg/mozilla/javascript/Wrapper;

    if-eqz v0, :cond_11

    check-cast p0, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p0}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/io/OutputStream;

    if-eqz v0, :cond_11

    check-cast p0, Ljava/io/OutputStream;

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method public static toint32(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)Ljava/lang/Object;
    .registers 4

    array-length p0, p2

    if-eqz p0, :cond_7

    const/4 p0, 0x0

    aget-object p0, p2, p0

    goto :goto_9

    :cond_7
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_9
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_e

    return-object p0

    :cond_e
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static version(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)D
    .registers 4

    array-length p1, p2

    if-lez p1, :cond_e

    const/4 p1, 0x0

    aget-object p1, p2, p1

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Context;->setLanguageVersion(I)V

    :cond_e
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p0

    int-to-double p0, p0

    return-wide p0
.end method

.method public static write(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)Ljava/lang/Object;
    .registers 4

    const/4 p0, 0x0

    invoke-static {p2, p3, p0}, Lorg/mozilla/javascript/tools/shell/Global;->doPrint([Ljava/lang/Object;Lorg/mozilla/javascript/Function;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getConsole(Ljava/nio/charset/Charset;)Lorg/mozilla/javascript/tools/shell/ShellConsole;
    .registers 4

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/shell/Global;->loadJLine(Ljava/nio/charset/Charset;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/Global;->getIn()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/Global;->getErr()Ljava/io/PrintStream;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->getConsole(Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/nio/charset/Charset;)Lorg/mozilla/javascript/tools/shell/ShellConsole;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/Global;->console:Lorg/mozilla/javascript/tools/shell/ShellConsole;

    :cond_14
    iget-object p1, p0, Lorg/mozilla/javascript/tools/shell/Global;->console:Lorg/mozilla/javascript/tools/shell/ShellConsole;

    return-object p1
.end method

.method public getErr()Ljava/io/PrintStream;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/Global;->errStream:Ljava/io/PrintStream;

    if-nez v0, :cond_6

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    :cond_6
    return-object v0
.end method

.method public getIn()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/Global;->inStream:Ljava/io/InputStream;

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lorg/mozilla/javascript/tools/shell/Global;->attemptedJLineLoad:Z

    if-nez v0, :cond_1a

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/tools/shell/Global;->loadJLine(Ljava/nio/charset/Charset;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/Global;->console:Lorg/mozilla/javascript/tools/shell/ShellConsole;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->getIn()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/tools/shell/Global;->inStream:Ljava/io/InputStream;

    :cond_1a
    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/Global;->inStream:Ljava/io/InputStream;

    if-nez v0, :cond_20

    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    :cond_20
    return-object v0
.end method

.method public getOut()Ljava/io/PrintStream;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/Global;->outStream:Ljava/io/PrintStream;

    if-nez v0, :cond_6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    :cond_6
    return-object v0
.end method

.method public getPrompts(Lorg/mozilla/javascript/Context;)[Ljava/lang/String;
    .registers 7

    const-string v0, "prompts"

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_50

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;I)Z

    move-result v2

    if-eqz v2, :cond_50

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;I)Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/mozilla/javascript/Function;

    if-eqz v4, :cond_30

    check-cast v3, Lorg/mozilla/javascript/Function;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v3, p1, p0, v0, v4}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_30
    iget-object v4, p0, Lorg/mozilla/javascript/tools/shell/Global;->prompts:[Ljava/lang/String;

    invoke-static {v3}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/mozilla/javascript/Function;

    if-eqz v4, :cond_48

    check-cast v3, Lorg/mozilla/javascript/Function;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v3, p1, p0, v0, v1}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_48
    iget-object p1, p0, Lorg/mozilla/javascript/tools/shell/Global;->prompts:[Ljava/lang/String;

    invoke-static {v3}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    :cond_50
    iget-object p1, p0, Lorg/mozilla/javascript/tools/shell/Global;->prompts:[Ljava/lang/String;

    return-object p1
.end method

.method public init(Lorg/mozilla/javascript/Context;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lorg/mozilla/javascript/tools/shell/Global;->sealedStdLib:Z

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/ImporterTopLevel;->initStandardObjects(Lorg/mozilla/javascript/Context;Z)V

    const-string v3, "defineClass"

    const-string v4, "deserialize"

    const-string v5, "doctest"

    const-string v6, "gc"

    const-string v7, "help"

    const-string v8, "load"

    const-string v9, "loadClass"

    const-string v10, "print"

    const-string v11, "quit"

    const-string v12, "readline"

    const-string v13, "readFile"

    const-string v14, "readUrl"

    const-string v15, "runCommand"

    const-string v16, "seal"

    const-string v17, "serialize"

    const-string/jumbo v18, "spawn"

    const-string/jumbo v19, "sync"

    const-string/jumbo v20, "toint32"

    const-string/jumbo v21, "version"

    const-string/jumbo v22, "write"

    filled-new-array/range {v3 .. v22}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/mozilla/javascript/tools/shell/Global;

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineFunctionProperties([Ljava/lang/String;Ljava/lang/Class;I)V

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/tools/shell/Environment;->defineClass(Lorg/mozilla/javascript/ScriptableObject;)V

    new-instance v2, Lorg/mozilla/javascript/tools/shell/Environment;

    invoke-direct {v2, v0}, Lorg/mozilla/javascript/tools/shell/Environment;-><init>(Lorg/mozilla/javascript/ScriptableObject;)V

    const-string v3, "environment"

    invoke-virtual {v0, v3, v2, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/NativeArray;

    iput-object v1, v0, Lorg/mozilla/javascript/tools/shell/Global;->history:Lorg/mozilla/javascript/NativeArray;

    const-string v2, "history"

    invoke-virtual {v0, v2, v1, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/mozilla/javascript/tools/shell/Global;->initialized:Z

    return-void
.end method

.method public init(Lorg/mozilla/javascript/ContextFactory;)V
    .registers 3

    new-instance v0, Lorg/mozilla/javascript/tools/shell/Global$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/tools/shell/Global$$ExternalSyntheticLambda0;-><init>(Lorg/mozilla/javascript/tools/shell/Global;)V

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ContextFactory;->call(Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;

    return-void
.end method

.method public initQuitAction(Lorg/mozilla/javascript/tools/shell/QuitAction;)V
    .registers 3

    if-eqz p1, :cond_11

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/Global;->quitAction:Lorg/mozilla/javascript/tools/shell/QuitAction;

    if-nez v0, :cond_9

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/Global;->quitAction:Lorg/mozilla/javascript/tools/shell/QuitAction;

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The method is once-call."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "quitAction is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public installRequire(Lorg/mozilla/javascript/Context;Ljava/util/List;Z)Lorg/mozilla/javascript/commonjs/module/Require;
    .registers 9

    const-string v0, "/"

    new-instance v1, Lorg/mozilla/javascript/commonjs/module/RequireBuilder;

    invoke-direct {v1}, Lorg/mozilla/javascript/commonjs/module/RequireBuilder;-><init>()V

    invoke-virtual {v1, p3}, Lorg/mozilla/javascript/commonjs/module/RequireBuilder;->setSandboxed(Z)Lorg/mozilla/javascript/commonjs/module/RequireBuilder;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_65

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_15
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_21
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->isAbsolute()Z

    move-result v4

    if-nez v4, :cond_3b

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    :cond_3b
    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5a

    new-instance v2, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    :cond_5a
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5d
    .catch Ljava/net/URISyntaxException; {:try_start_21 .. :try_end_5d} :catch_5e

    goto :goto_15

    :catch_5e
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_65
    new-instance p2, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider;

    new-instance v0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;

    const/4 v2, 0x0

    invoke-direct {v0, p3, v2}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    invoke-direct {p2, v0}, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider;-><init>(Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;)V

    invoke-virtual {v1, p2}, Lorg/mozilla/javascript/commonjs/module/RequireBuilder;->setModuleScriptProvider(Lorg/mozilla/javascript/commonjs/module/ModuleScriptProvider;)Lorg/mozilla/javascript/commonjs/module/RequireBuilder;

    invoke-virtual {v1, p1, p0}, Lorg/mozilla/javascript/commonjs/module/RequireBuilder;->createRequire(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/commonjs/module/Require;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/commonjs/module/Require;->install(Lorg/mozilla/javascript/Scriptable;)V

    return-object p1
.end method

.method public isInitialized()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/tools/shell/Global;->initialized:Z

    return v0
.end method

.method public runDoctest(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/mozilla/javascript/tools/shell/Global;->doctestCanonicalizations:Ljava/util/HashMap;

    const-string v0, "\r\n?|\n"

    move-object/from16 v2, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iget-object v0, v1, Lorg/mozilla/javascript/tools/shell/Global;->prompts:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v0, v0, v11

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v1, Lorg/mozilla/javascript/tools/shell/Global;->prompts:[Ljava/lang/String;

    const/4 v13, 0x1

    aget-object v0, v0, v13

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const/4 v0, 0x0

    :goto_28
    array-length v2, v10

    if-ge v0, v2, :cond_3a

    aget-object v2, v10, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3a

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_3a
    const/4 v2, 0x0

    :goto_3b
    array-length v3, v10

    if-ge v0, v3, :cond_1d3

    new-instance v15, Ljava/lang/StringBuilder;

    aget-object v3, v10, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xa

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_56
    add-int/lit8 v0, v0, 0x1

    array-length v4, v10

    if-ge v0, v4, :cond_7c

    aget-object v4, v10, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7c

    aget-object v4, v10, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_56

    :cond_7c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v0

    :goto_82
    array-length v0, v10

    if-ge v6, v0, :cond_9c

    aget-object v0, v10, v6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9c

    aget-object v0, v10, v6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_82

    :cond_9c
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/tools/shell/Global;->getOut()Ljava/io/PrintStream;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/tools/shell/Global;->getErr()Ljava/io/PrintStream;

    move-result-object v4

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/tools/shell/Global;->setOut(Ljava/io/PrintStream;)V

    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, v13}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/tools/shell/Global;->setErr(Ljava/io/PrintStream;)V

    move-object/from16 v16, v7

    const-string v7, ""

    move-object/from16 v17, v7

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v7

    new-instance v0, Lorg/mozilla/javascript/tools/ToolErrorReporter;

    move-object/from16 v18, v3

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/tools/shell/Global;->getErr()Ljava/io/PrintStream;

    move-result-object v3

    invoke-direct {v0, v11, v3}, Lorg/mozilla/javascript/tools/ToolErrorReporter;-><init>(ZLjava/io/PrintStream;)V

    invoke-virtual {v8, v0}, Lorg/mozilla/javascript/Context;->setErrorReporter(Lorg/mozilla/javascript/ErrorReporter;)Lorg/mozilla/javascript/ErrorReporter;

    add-int/lit8 v19, v2, 0x1

    :try_start_d8
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v20, "doctest input"
    :try_end_de
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_d8 .. :try_end_de} :catch_13c
    .catchall {:try_start_d8 .. :try_end_de} :catchall_136

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v11, v4

    move-object v4, v0

    move-object/from16 v23, v5

    move-object/from16 v5, v20

    move/from16 v20, v6

    move/from16 v6, v21

    move-object/from16 v21, v10

    move-object/from16 v10, v17

    move-object/from16 v17, v12

    move-object v12, v7

    move-object/from16 v7, v22

    :try_start_f9
    invoke-virtual/range {v2 .. v7}, Lorg/mozilla/javascript/Context;->evaluateString(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lorg/mozilla/javascript/Context;->getUndefinedValue()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_118

    instance-of v3, v2, Lorg/mozilla/javascript/Function;

    if-eqz v3, :cond_113

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "function"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_118

    :cond_113
    invoke-static {v2}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7
    :try_end_117
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_f9 .. :try_end_117} :catch_132
    .catchall {:try_start_f9 .. :try_end_117} :catchall_12d

    goto :goto_119

    :cond_118
    move-object v7, v10

    :goto_119
    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/tools/shell/Global;->setOut(Ljava/io/PrintStream;)V

    invoke-virtual {v1, v11}, Lorg/mozilla/javascript/tools/shell/Global;->setErr(Ljava/io/PrintStream;)V

    invoke-virtual {v8, v12}, Lorg/mozilla/javascript/Context;->setErrorReporter(Lorg/mozilla/javascript/ErrorReporter;)Lorg/mozilla/javascript/ErrorReporter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_160

    :catchall_12d
    move-exception v0

    move-object/from16 v2, v23

    goto/16 :goto_1c3

    :catch_132
    move-exception v0

    move-object/from16 v2, v23

    goto :goto_148

    :catchall_136
    move-exception v0

    move-object v11, v4

    move-object v2, v5

    move-object v12, v7

    goto/16 :goto_1c3

    :catch_13c
    move-exception v0

    move-object v11, v4

    move-object v2, v5

    move/from16 v20, v6

    move-object/from16 v21, v10

    move-object/from16 v10, v17

    move-object/from16 v17, v12

    move-object v12, v7

    :goto_148
    :try_start_148
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->reportException(Lorg/mozilla/javascript/ErrorReporter;Lorg/mozilla/javascript/RhinoException;)V
    :try_end_14f
    .catchall {:try_start_148 .. :try_end_14f} :catchall_1c2

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/tools/shell/Global;->setOut(Ljava/io/PrintStream;)V

    invoke-virtual {v1, v11}, Lorg/mozilla/javascript/tools/shell/Global;->setErr(Ljava/io/PrintStream;)V

    invoke-virtual {v8, v12}, Lorg/mozilla/javascript/Context;->setErrorReporter(Lorg/mozilla/javascript/ErrorReporter;)Lorg/mozilla/javascript/ErrorReporter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_160
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/tools/shell/Global;->doctestOutputMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doctest failure running:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_1b1

    add-int v2, p5, v20

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v9, v2, v3, v4}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_1b1
    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_1b6
    move-object/from16 v12, v17

    move/from16 v2, v19

    move/from16 v0, v20

    move-object/from16 v10, v21

    const/4 v11, 0x0

    const/4 v13, 0x1

    goto/16 :goto_3b

    :catchall_1c2
    move-exception v0

    :goto_1c3
    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/tools/shell/Global;->setOut(Ljava/io/PrintStream;)V

    invoke-virtual {v1, v11}, Lorg/mozilla/javascript/tools/shell/Global;->setErr(Ljava/io/PrintStream;)V

    invoke-virtual {v8, v12}, Lorg/mozilla/javascript/Context;->setErrorReporter(Lorg/mozilla/javascript/ErrorReporter;)Lorg/mozilla/javascript/ErrorReporter;

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    throw v0

    :cond_1d3
    return v2
.end method

.method public setErr(Ljava/io/PrintStream;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/Global;->errStream:Ljava/io/PrintStream;

    return-void
.end method

.method public setIn(Ljava/io/InputStream;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/Global;->inStream:Ljava/io/InputStream;

    return-void
.end method

.method public setOut(Ljava/io/PrintStream;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/Global;->outStream:Ljava/io/PrintStream;

    return-void
.end method

.method public setSealedStdLib(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/mozilla/javascript/tools/shell/Global;->sealedStdLib:Z

    return-void
.end method
