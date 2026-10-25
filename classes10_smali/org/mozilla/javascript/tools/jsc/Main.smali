.class public Lorg/mozilla/javascript/tools/jsc/Main;
.super Ljava/lang/Object;
.source "Main.java"


# instance fields
.field private characterEncoding:Ljava/lang/String;

.field private compiler:Lorg/mozilla/javascript/optimizer/ClassCompiler;

.field private compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

.field private destinationDir:Ljava/lang/String;

.field private printHelp:Z

.field private reporter:Lorg/mozilla/javascript/tools/ToolErrorReporter;

.field private targetName:Ljava/lang/String;

.field private targetPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/javascript/tools/ToolErrorReporter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;-><init>(Z)V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/jsc/Main;->reporter:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    new-instance v0, Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-direct {v0}, Lorg/mozilla/javascript/CompilerEnvirons;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/jsc/Main;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    iget-object v1, p0, Lorg/mozilla/javascript/tools/jsc/Main;->reporter:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/CompilerEnvirons;->setErrorReporter(Lorg/mozilla/javascript/ErrorReporter;)V

    new-instance v0, Lorg/mozilla/javascript/optimizer/ClassCompiler;

    iget-object v1, p0, Lorg/mozilla/javascript/tools/jsc/Main;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/ClassCompiler;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;)V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/jsc/Main;->compiler:Lorg/mozilla/javascript/optimizer/ClassCompiler;

    return-void
.end method

.method private addError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    if-nez p2, :cond_7

    invoke-static {p1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_7
    invoke-static {p1, p2}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_b
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/jsc/Main;->addFormatedError(Ljava/lang/String;)V

    return-void
.end method

.method private addFormatedError(Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lorg/mozilla/javascript/tools/jsc/Main;->reporter:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->error(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method private static badUsage(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-class v1, Lorg/mozilla/javascript/tools/jsc/Main;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg.jsc.bad.usage"

    invoke-static {v2, v1, p0}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private getOutputFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2e

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    const-string v0, ".class"

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_42

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_42

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-eqz p2, :cond_2b

    goto :goto_42

    :cond_2b
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error making output directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_42
    :goto_42
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lorg/mozilla/javascript/tools/jsc/Main;

    invoke-direct {v0}, Lorg/mozilla/javascript/tools/jsc/Main;-><init>()V

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/tools/jsc/Main;->processOptions([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_28

    iget-boolean v1, v0, Lorg/mozilla/javascript/tools/jsc/Main;->printHelp:Z

    if-eqz v1, :cond_24

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v2, Lorg/mozilla/javascript/tools/jsc/Main;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "msg.jsc.usage"

    invoke-static {v3, v2}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_24
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_28
    iget-object v1, v0, Lorg/mozilla/javascript/tools/jsc/Main;->reporter:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->hasReportedError()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/tools/jsc/Main;->processSource([Ljava/lang/String;)V

    :cond_33
    return-void
.end method

.method private static p(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private readSource(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_11

    const-string p1, "msg.jsfile.not.found"

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/tools/jsc/Main;->addError(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_11
    const/4 p1, 0x1

    :try_start_12
    iget-object v2, p0, Lorg/mozilla/javascript/tools/jsc/Main;->characterEncoding:Ljava/lang/String;

    invoke-static {v0, p1, v2}, Lorg/mozilla/javascript/tools/SourceReader;->readFileOrUrl(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1a} :catch_24
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1a} :catch_1b

    return-object p1

    :catch_1b
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/jsc/Main;->addFormatedError(Ljava/lang/String;)V

    goto :goto_29

    :catch_24
    const-string p1, "msg.couldnt.open"

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/tools/jsc/Main;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    return-object v1
.end method


# virtual methods
.method getClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [C

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v3

    const/16 v4, 0x5f

    if-nez v3, :cond_18

    aput-char v4, v0, v2

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_33

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_2c

    aput-char v3, v0, v1

    goto :goto_2e

    :cond_2c
    aput-char v4, v0, v1

    :goto_2e
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_33
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public processOptions([Ljava/lang/String;)[Ljava/lang/String;
    .registers 12

    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/javascript/tools/jsc/Main;->targetPackage:Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/jsc/Main;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/CompilerEnvirons;->setGenerateDebugInfo(Z)V

    const/4 v0, 0x0

    :goto_b
    array-length v2, p1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_211

    aget-object v2, p1, v0

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_36

    array-length v2, p1

    sub-int/2addr v2, v0

    iget-object v4, p0, Lorg/mozilla/javascript/tools/jsc/Main;->targetName:Ljava/lang/String;

    if-eqz v4, :cond_28

    if-le v2, v5, :cond_28

    const-string p1, "msg.multiple.js.to.file"

    invoke-direct {p0, p1, v4}, Lorg/mozilla/javascript/tools/jsc/Main;->addError(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_28
    new-array v3, v2, [Ljava/lang/String;

    :goto_2a
    if-eq v1, v2, :cond_35

    add-int v4, v0, v1

    aget-object v4, p1, v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_35
    return-object v3

    :cond_36
    const-string v4, "-help"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20e

    const-string v4, "-h"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20e

    const-string v4, "--help"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    goto/16 :goto_20e

    :cond_50
    :try_start_50
    const-string v4, "-version"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    add-int/lit8 v0, v0, 0x1

    array-length v4, p1

    if-ge v0, v4, :cond_6a

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Lorg/mozilla/javascript/tools/jsc/Main;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/CompilerEnvirons;->setLanguageVersion(I)V

    goto/16 :goto_205

    :cond_6a
    const-string v4, "-opt"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    const-string v4, "-O"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    :cond_7a
    add-int/lit8 v0, v0, 0x1

    array-length v4, p1

    if-ge v0, v4, :cond_8c

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Lorg/mozilla/javascript/tools/jsc/Main;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/CompilerEnvirons;->setOptimizationLevel(I)V
    :try_end_8a
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_8a} :catch_208

    goto/16 :goto_205

    :cond_8c
    const-string v4, "-nosource"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9b

    iget-object v2, p0, Lorg/mozilla/javascript/tools/jsc/Main;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/CompilerEnvirons;->setGeneratingSource(Z)V

    goto/16 :goto_205

    :cond_9b
    const-string v4, "-debug"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_200

    const-string v4, "-g"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ad

    goto/16 :goto_200

    :cond_ad
    const-string v4, "-main-method-class"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c3

    add-int/lit8 v0, v0, 0x1

    array-length v4, p1

    if-ge v0, v4, :cond_c3

    iget-object v2, p0, Lorg/mozilla/javascript/tools/jsc/Main;->compiler:Lorg/mozilla/javascript/optimizer/ClassCompiler;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/optimizer/ClassCompiler;->setMainMethodClass(Ljava/lang/String;)V

    goto/16 :goto_205

    :cond_c3
    const-string v4, "-encoding"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d6

    add-int/lit8 v0, v0, 0x1

    array-length v4, p1

    if-ge v0, v4, :cond_d6

    aget-object v2, p1, v0

    iput-object v2, p0, Lorg/mozilla/javascript/tools/jsc/Main;->characterEncoding:Ljava/lang/String;

    goto/16 :goto_205

    :cond_d6
    const-string v4, "-o"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v6, 0x2e

    if-eqz v4, :cond_12a

    add-int/lit8 v0, v0, 0x1

    array-length v4, p1

    if-ge v0, v4, :cond_12a

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "msg.invalid.classfile.name"

    if-eqz v3, :cond_125

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v7

    if-nez v7, :cond_fa

    goto :goto_125

    :cond_fa
    const/4 v7, 0x1

    :goto_fb
    if-ge v7, v3, :cond_121

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v9

    if-nez v9, :cond_11e

    if-ne v8, v6, :cond_11a

    add-int/lit8 v3, v3, -0x6

    if-ne v7, v3, :cond_11a

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11a

    invoke-virtual {v2, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_121

    :cond_11a
    invoke-direct {p0, v4, v2}, Lorg/mozilla/javascript/tools/jsc/Main;->addError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_121

    :cond_11e
    add-int/lit8 v7, v7, 0x1

    goto :goto_fb

    :cond_121
    :goto_121
    iput-object v2, p0, Lorg/mozilla/javascript/tools/jsc/Main;->targetName:Ljava/lang/String;

    goto/16 :goto_205

    :cond_125
    :goto_125
    invoke-direct {p0, v4, v2}, Lorg/mozilla/javascript/tools/jsc/Main;->addError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_205

    :cond_12a
    const-string v4, "-observe-instruction-count"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_137

    iget-object v4, p0, Lorg/mozilla/javascript/tools/jsc/Main;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/CompilerEnvirons;->setGenerateObserverCount(Z)V

    :cond_137
    const-string v4, "-package"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17d

    add-int/lit8 v0, v0, 0x1

    array-length v4, p1

    if-ge v0, v4, :cond_17d

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v7, 0x0

    :goto_14b
    if-eq v7, v4, :cond_179

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v9

    if-eqz v9, :cond_171

    :cond_157
    add-int/lit8 v7, v7, 0x1

    if-eq v7, v4, :cond_165

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v9

    if-nez v9, :cond_157

    :cond_165
    if-ne v7, v4, :cond_168

    goto :goto_179

    :cond_168
    if-ne v8, v6, :cond_171

    add-int/lit8 v8, v4, -0x1

    if-eq v7, v8, :cond_171

    add-int/lit8 v7, v7, 0x1

    goto :goto_14b

    :cond_171
    iget-object p1, p0, Lorg/mozilla/javascript/tools/jsc/Main;->targetPackage:Ljava/lang/String;

    const-string v0, "msg.package.name"

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/tools/jsc/Main;->addError(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_179
    :goto_179
    iput-object v2, p0, Lorg/mozilla/javascript/tools/jsc/Main;->targetPackage:Ljava/lang/String;

    goto/16 :goto_205

    :cond_17d
    const-string v4, "-extends"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a1

    add-int/lit8 v0, v0, 0x1

    array-length v4, p1

    if-ge v0, v4, :cond_1a1

    aget-object v2, p1, v0

    :try_start_18c
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_190
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18c .. :try_end_190} :catch_196

    iget-object v3, p0, Lorg/mozilla/javascript/tools/jsc/Main;->compiler:Lorg/mozilla/javascript/optimizer/ClassCompiler;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/optimizer/ClassCompiler;->setTargetExtends(Ljava/lang/Class;)V

    goto :goto_205

    :catch_196
    move-exception p1

    new-instance v0, Ljava/lang/Error;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a1
    const-string v4, "-implements"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1eb

    add-int/lit8 v0, v0, 0x1

    array-length v4, p1

    if-ge v0, v4, :cond_1eb

    aget-object v2, p1, v0

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1bc
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1d9

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    :try_start_1c6
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1cd
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c6 .. :try_end_1cd} :catch_1ce

    goto :goto_1bc

    :catch_1ce
    move-exception p1

    new-instance v0, Ljava/lang/Error;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Class;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Class;

    iget-object v3, p0, Lorg/mozilla/javascript/tools/jsc/Main;->compiler:Lorg/mozilla/javascript/optimizer/ClassCompiler;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/optimizer/ClassCompiler;->setTargetImplements([Ljava/lang/Class;)V

    goto :goto_205

    :cond_1eb
    const-string v4, "-d"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1fc

    add-int/2addr v0, v5

    array-length v4, p1

    if-ge v0, v4, :cond_1fc

    aget-object v2, p1, v0

    iput-object v2, p0, Lorg/mozilla/javascript/tools/jsc/Main;->destinationDir:Ljava/lang/String;

    goto :goto_205

    :cond_1fc
    invoke-static {v2}, Lorg/mozilla/javascript/tools/jsc/Main;->badUsage(Ljava/lang/String;)V

    return-object v3

    :cond_200
    :goto_200
    iget-object v2, p0, Lorg/mozilla/javascript/tools/jsc/Main;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v2, v5}, Lorg/mozilla/javascript/CompilerEnvirons;->setGenerateDebugInfo(Z)V

    :goto_205
    add-int/2addr v0, v5

    goto/16 :goto_b

    :catch_208
    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/mozilla/javascript/tools/jsc/Main;->badUsage(Ljava/lang/String;)V

    return-object v3

    :cond_20e
    :goto_20e
    iput-boolean v5, p0, Lorg/mozilla/javascript/tools/jsc/Main;->printHelp:Z

    return-object v3

    :cond_211
    const-string p1, "msg.no.file"

    invoke-static {p1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/tools/jsc/Main;->p(Ljava/lang/String;)V

    return-object v3
.end method

.method public processSource([Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    array-length v2, p1

    if-eq v1, v2, :cond_ac

    aget-object v2, p1, v1

    const-string v3, ".js"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string p1, "msg.extension.not.js"

    invoke-direct {p0, p1, v2}, Lorg/mozilla/javascript/tools/jsc/Main;->addError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/tools/jsc/Main;->readSource(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_21

    return-void

    :cond_21
    iget-object v5, p0, Lorg/mozilla/javascript/tools/jsc/Main;->targetName:Ljava/lang/String;

    if-nez v5, :cond_37

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/tools/jsc/Main;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_37
    iget-object v6, p0, Lorg/mozilla/javascript/tools/jsc/Main;->targetPackage:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_55

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/mozilla/javascript/tools/jsc/Main;->targetPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_55
    iget-object v6, p0, Lorg/mozilla/javascript/tools/jsc/Main;->compiler:Lorg/mozilla/javascript/optimizer/ClassCompiler;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v2, v7, v5}, Lorg/mozilla/javascript/optimizer/ClassCompiler;->compileToClassFiles(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_ac

    array-length v4, v2

    if-nez v4, :cond_62

    goto :goto_ac

    :cond_62
    const/4 v4, 0x0

    iget-object v5, p0, Lorg/mozilla/javascript/tools/jsc/Main;->destinationDir:Ljava/lang/String;

    if-eqz v5, :cond_6f

    new-instance v4, Ljava/io/File;

    iget-object v3, p0, Lorg/mozilla/javascript/tools/jsc/Main;->destinationDir:Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_7a

    :cond_6f
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7a

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_7a
    :goto_7a
    const/4 v3, 0x0

    :goto_7b
    array-length v5, v2

    if-eq v3, v5, :cond_a8

    aget-object v5, v2, v3

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    aget-object v6, v2, v6

    check-cast v6, [B

    :try_start_88
    invoke-direct {p0, v4, v5}, Lorg/mozilla/javascript/tools/jsc/Main;->getOutputFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_91} :catch_9d

    :try_start_91
    invoke-virtual {v7, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_98

    :try_start_94
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    goto :goto_a5

    :catchall_98
    move-exception v5

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    throw v5
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_9d} :catch_9d

    :catch_9d
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/tools/jsc/Main;->addFormatedError(Ljava/lang/String;)V

    :goto_a5
    add-int/lit8 v3, v3, 0x2

    goto :goto_7b

    :cond_a8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_ac
    :goto_ac
    return-void
.end method
