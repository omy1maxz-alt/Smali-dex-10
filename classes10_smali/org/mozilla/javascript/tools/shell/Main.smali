.class public Lorg/mozilla/javascript/tools/shell/Main;
.super Ljava/lang/Object;
.source "Main.java"


# static fields
.field private static final EXITCODE_FILE_NOT_FOUND:I = 0x4

.field private static final EXITCODE_RUNTIME_ERROR:I = 0x3

.field protected static errorReporter:Lorg/mozilla/javascript/tools/ToolErrorReporter;

.field protected static exitCode:I

.field static fileList:Ljava/util/List;

.field public static global:Lorg/mozilla/javascript/tools/shell/Global;

.field static mainModule:Ljava/lang/String;

.field static modulePath:Ljava/util/List;

.field static processStdin:Z

.field static require:Lorg/mozilla/javascript/commonjs/module/Require;

.field static sandboxed:Z

.field private static final scriptCache:Lorg/mozilla/javascript/tools/shell/Main$ScriptCache;

.field private static securityImpl:Lorg/mozilla/javascript/tools/shell/SecurityProxy;

.field public static shellContextFactory:Lorg/mozilla/javascript/tools/shell/ShellContextFactory;

.field static useRequire:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;

    invoke-direct {v0}, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/tools/shell/Main;->shellContextFactory:Lorg/mozilla/javascript/tools/shell/ShellContextFactory;

    new-instance v0, Lorg/mozilla/javascript/tools/shell/Global;

    invoke-direct {v0}, Lorg/mozilla/javascript/tools/shell/Global;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/tools/shell/Main;->global:Lorg/mozilla/javascript/tools/shell/Global;

    const/4 v0, 0x0

    sput v0, Lorg/mozilla/javascript/tools/shell/Main;->exitCode:I

    const/4 v1, 0x1

    sput-boolean v1, Lorg/mozilla/javascript/tools/shell/Main;->processStdin:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lorg/mozilla/javascript/tools/shell/Main;->fileList:Ljava/util/List;

    sput-boolean v0, Lorg/mozilla/javascript/tools/shell/Main;->sandboxed:Z

    sput-boolean v0, Lorg/mozilla/javascript/tools/shell/Main;->useRequire:Z

    new-instance v0, Lorg/mozilla/javascript/tools/shell/Main$ScriptCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/tools/shell/Main$ScriptCache;-><init>(I)V

    sput-object v0, Lorg/mozilla/javascript/tools/shell/Main;->scriptCache:Lorg/mozilla/javascript/tools/shell/Main$ScriptCache;

    sget-object v0, Lorg/mozilla/javascript/tools/shell/Main;->global:Lorg/mozilla/javascript/tools/shell/Global;

    new-instance v1, Lorg/mozilla/javascript/tools/shell/Main$IProxy;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/tools/shell/Main$IProxy;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/shell/Global;->initQuitAction(Lorg/mozilla/javascript/tools/shell/QuitAction;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static evalInlineScript(Lorg/mozilla/javascript/Context;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x3

    :try_start_1
    const-string v1, "<command>"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Lorg/mozilla/javascript/Context;->compileString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object p1

    if-eqz p1, :cond_31

    invoke-static {}, Lorg/mozilla/javascript/tools/shell/Main;->getShellScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Lorg/mozilla/javascript/Script;->exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    :try_end_12
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_1 .. :try_end_12} :catch_27
    .catch Ljava/lang/VirtualMachineError; {:try_start_1 .. :try_end_12} :catch_13

    goto :goto_31

    :catch_13
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/VirtualMachineError;->printStackTrace()V

    invoke-virtual {p0}, Ljava/lang/VirtualMachineError;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg.uncaughtJSException"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportError(Ljava/lang/String;)V

    sput v0, Lorg/mozilla/javascript/tools/shell/Main;->exitCode:I

    goto :goto_31

    :catch_27
    move-exception p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->reportException(Lorg/mozilla/javascript/ErrorReporter;Lorg/mozilla/javascript/RhinoException;)V

    sput v0, Lorg/mozilla/javascript/tools/shell/Main;->exitCode:I

    :cond_31
    :goto_31
    return-void
.end method

.method public static exec([Ljava/lang/String;)I
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/tools/ToolErrorReporter;

    sget-object v1, Lorg/mozilla/javascript/tools/shell/Main;->global:Lorg/mozilla/javascript/tools/shell/Global;

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/shell/Global;->getErr()Ljava/io/PrintStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;-><init>(ZLjava/io/PrintStream;)V

    sput-object v0, Lorg/mozilla/javascript/tools/shell/Main;->errorReporter:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    sget-object v1, Lorg/mozilla/javascript/tools/shell/Main;->shellContextFactory:Lorg/mozilla/javascript/tools/shell/ShellContextFactory;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->setErrorReporter(Lorg/mozilla/javascript/ErrorReporter;)V

    invoke-static {p0}, Lorg/mozilla/javascript/tools/shell/Main;->processOptions([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    sget v0, Lorg/mozilla/javascript/tools/shell/Main;->exitCode:I

    if-lez v0, :cond_1c

    return v0

    :cond_1c
    sget-boolean v0, Lorg/mozilla/javascript/tools/shell/Main;->processStdin:Z

    if-eqz v0, :cond_26

    sget-object v0, Lorg/mozilla/javascript/tools/shell/Main;->fileList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    sget-object v0, Lorg/mozilla/javascript/tools/shell/Main;->global:Lorg/mozilla/javascript/tools/shell/Global;

    iget-boolean v1, v0, Lorg/mozilla/javascript/tools/shell/Global;->initialized:Z

    if-nez v1, :cond_31

    sget-object v1, Lorg/mozilla/javascript/tools/shell/Main;->shellContextFactory:Lorg/mozilla/javascript/tools/shell/ShellContextFactory;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/shell/Global;->init(Lorg/mozilla/javascript/ContextFactory;)V

    :cond_31
    new-instance v0, Lorg/mozilla/javascript/tools/shell/Main$IProxy;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/tools/shell/Main$IProxy;-><init>(I)V

    iput-object p0, v0, Lorg/mozilla/javascript/tools/shell/Main$IProxy;->args:[Ljava/lang/String;

    sget-object p0, Lorg/mozilla/javascript/tools/shell/Main;->shellContextFactory:Lorg/mozilla/javascript/tools/shell/ShellContextFactory;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ContextFactory;->call(Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;

    sget p0, Lorg/mozilla/javascript/tools/shell/Main;->exitCode:I

    return p0
.end method

.method private static getDigest(Ljava/lang/Object;)[B
    .registers 2

    if-eqz p0, :cond_23

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_f

    check-cast p0, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    goto :goto_11

    :cond_f
    check-cast p0, [B

    :goto_11
    :try_start_11
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_23
    const/4 p0, 0x0

    :goto_24
    return-object p0
.end method

.method public static getErr()Ljava/io/PrintStream;
    .registers 1

    invoke-static {}, Lorg/mozilla/javascript/tools/shell/Main;->getGlobal()Lorg/mozilla/javascript/tools/shell/Global;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/shell/Global;->getErr()Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public static getGlobal()Lorg/mozilla/javascript/tools/shell/Global;
    .registers 1

    sget-object v0, Lorg/mozilla/javascript/tools/shell/Main;->global:Lorg/mozilla/javascript/tools/shell/Global;

    return-object v0
.end method

.method public static getIn()Ljava/io/InputStream;
    .registers 1

    invoke-static {}, Lorg/mozilla/javascript/tools/shell/Main;->getGlobal()Lorg/mozilla/javascript/tools/shell/Global;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/shell/Global;->getIn()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getOut()Ljava/io/PrintStream;
    .registers 1

    invoke-static {}, Lorg/mozilla/javascript/tools/shell/Main;->getGlobal()Lorg/mozilla/javascript/tools/shell/Global;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/shell/Global;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method static getScope(Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;
    .registers 4

    sget-boolean v0, Lorg/mozilla/javascript/tools/shell/Main;->useRequire:Z

    if-eqz v0, :cond_40

    if-nez p0, :cond_17

    new-instance p0, Ljava/io/File;

    const-string/jumbo v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p0

    goto :goto_37

    :cond_17
    invoke-static {p0}, Lorg/mozilla/javascript/tools/SourceReader;->toUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_2e

    :try_start_1d
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/net/URISyntaxException; {:try_start_1d .. :try_end_22} :catch_24

    move-object p0, v0

    goto :goto_37

    :catch_24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p0

    goto :goto_37

    :cond_2e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p0

    :goto_37
    new-instance v0, Lorg/mozilla/javascript/commonjs/module/ModuleScope;

    sget-object v1, Lorg/mozilla/javascript/tools/shell/Main;->global:Lorg/mozilla/javascript/tools/shell/Global;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/mozilla/javascript/commonjs/module/ModuleScope;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/net/URI;Ljava/net/URI;)V

    return-object v0

    :cond_40
    sget-object p0, Lorg/mozilla/javascript/tools/shell/Main;->global:Lorg/mozilla/javascript/tools/shell/Global;

    return-object p0
.end method

.method static getShellScope()Lorg/mozilla/javascript/Scriptable;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/mozilla/javascript/tools/shell/Main;->getScope(Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0
.end method

.method private static initJavaPolicySecuritySupport()V
    .registers 4

    :try_start_0
    const-class v0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/tools/shell/SecurityProxy;

    sput-object v0, Lorg/mozilla/javascript/tools/shell/Main;->securityImpl:Lorg/mozilla/javascript/tools/shell/SecurityProxy;

    invoke-static {v0}, Lorg/mozilla/javascript/SecurityController;->initGlobal(Lorg/mozilla/javascript/SecurityController;)V
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_d} :catch_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_d} :catch_12
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_d} :catch_10
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v0

    goto :goto_15

    :catch_10
    move-exception v0

    goto :goto_15

    :catch_12
    move-exception v0

    goto :goto_15

    :catch_14
    move-exception v0

    :goto_15
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not load security support: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static loadCompiledScript(Lorg/mozilla/javascript/Context;Ljava/lang/String;[BLjava/lang/Object;)Lorg/mozilla/javascript/Script;
    .registers 6

    if-eqz p2, :cond_5f

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_e

    :cond_c
    add-int/lit8 v0, v0, 0x1

    :goto_e
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ge v1, v0, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :cond_1a
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :try_start_1e
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p0, p3}, Lorg/mozilla/javascript/SecurityController;->createLoader(Ljava/lang/ClassLoader;Ljava/lang/Object;)Lorg/mozilla/javascript/GeneratedClassLoader;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/mozilla/javascript/GeneratedClassLoader;->defineClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/mozilla/javascript/GeneratedClassLoader;->linkClass(Ljava/lang/Class;)V

    const-class p0, Lorg/mozilla/javascript/Script;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_3c

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/Script;

    return-object p0

    :cond_3c
    const-string p0, "msg.must.implement.Script"

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0
    :try_end_43
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_43} :catch_51
    .catch Ljava/lang/InstantiationException; {:try_start_1e .. :try_end_43} :catch_43

    :catch_43
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->reportError(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_51
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->reportError(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_5f
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3

    :try_start_0
    const-string v0, "rhino.use_java_policy_security"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lorg/mozilla/javascript/tools/shell/Main;->initJavaPolicySecuritySupport()V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_12

    :catch_c
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_12
    :goto_12
    invoke-static {p0}, Lorg/mozilla/javascript/tools/shell/Main;->exec([Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1b

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :cond_1b
    return-void
.end method

.method public static processFile(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lorg/mozilla/javascript/tools/shell/Main;->securityImpl:Lorg/mozilla/javascript/tools/shell/SecurityProxy;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/mozilla/javascript/tools/shell/Main;->processFileSecure(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c

    :cond_9
    invoke-virtual {v0, p0, p1, p2}, Lorg/mozilla/javascript/tools/shell/SecurityProxy;->callProcessFileSecure(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V

    :goto_c
    return-void
.end method

.method public static processFileNoThrow(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x3

    :try_start_1
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/tools/shell/Main;->processFile(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_24
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_1 .. :try_end_4} :catch_19
    .catch Ljava/lang/VirtualMachineError; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_35

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/VirtualMachineError;->printStackTrace()V

    invoke-virtual {p0}, Ljava/lang/VirtualMachineError;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg.uncaughtJSException"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportError(Ljava/lang/String;)V

    sput v0, Lorg/mozilla/javascript/tools/shell/Main;->exitCode:I

    goto :goto_35

    :catch_19
    move-exception p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->reportException(Lorg/mozilla/javascript/ErrorReporter;Lorg/mozilla/javascript/RhinoException;)V

    sput v0, Lorg/mozilla/javascript/tools/shell/Main;->exitCode:I

    goto :goto_35

    :catch_24
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg.couldnt.read.source"

    invoke-static {p1, p2, p0}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportError(Ljava/lang/String;)V

    const/4 p0, 0x4

    sput p0, Lorg/mozilla/javascript/tools/shell/Main;->exitCode:I

    :goto_35
    return-void
.end method

.method static processFileSecure(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 11

    const-string v0, ".class"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-static {p2, v1}, Lorg/mozilla/javascript/tools/shell/Main;->readFileOrUrl(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/tools/shell/Main;->getDigest(Ljava/lang/Object;)[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getOptimizationLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/mozilla/javascript/tools/shell/Main;->scriptCache:Lorg/mozilla/javascript/tools/shell/Main$ScriptCache;

    invoke-virtual {v4, v3, v2}, Lorg/mozilla/javascript/tools/shell/Main$ScriptCache;->get(Ljava/lang/String;[B)Lorg/mozilla/javascript/tools/shell/Main$ScriptReference;

    move-result-object v4

    if-eqz v4, :cond_37

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/Script;

    goto :goto_38

    :cond_37
    const/4 v4, 0x0

    :goto_38
    if-nez v4, :cond_7b

    if-eqz v0, :cond_44

    check-cast v1, [B

    invoke-static {p0, p2, v1, p3}, Lorg/mozilla/javascript/tools/shell/Main;->loadCompiledScript(Lorg/mozilla/javascript/Context;Ljava/lang/String;[BLjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object p2

    :goto_42
    move-object v4, p2

    goto :goto_76

    :cond_44
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x1

    if-lez v0, :cond_71

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x23

    if-ne v0, v5, :cond_71

    const/4 v0, 0x1

    :goto_57
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v0, v5, :cond_71

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_6d

    const/16 v6, 0xd

    if-ne v5, v6, :cond_6a

    goto :goto_6d

    :cond_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_6d
    :goto_6d
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_71
    invoke-virtual {p0, v1, p2, v4, p3}, Lorg/mozilla/javascript/Context;->compileString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object p2

    goto :goto_42

    :goto_76
    sget-object p2, Lorg/mozilla/javascript/tools/shell/Main;->scriptCache:Lorg/mozilla/javascript/tools/shell/Main$ScriptCache;

    invoke-virtual {p2, v3, v2, v4}, Lorg/mozilla/javascript/tools/shell/Main$ScriptCache;->put(Ljava/lang/String;[BLorg/mozilla/javascript/Script;)V

    :cond_7b
    if-eqz v4, :cond_80

    invoke-interface {v4, p0, p1}, Lorg/mozilla/javascript/Script;->exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    :cond_80
    return-void
.end method

.method static processFiles(Lorg/mozilla/javascript/Context;[Ljava/lang/String;)V
    .registers 5

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object p1, Lorg/mozilla/javascript/tools/shell/Main;->global:Lorg/mozilla/javascript/tools/shell/Global;

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    sget-object v0, Lorg/mozilla/javascript/tools/shell/Main;->global:Lorg/mozilla/javascript/tools/shell/Global;

    const-string v1, "arguments"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    sget-object p1, Lorg/mozilla/javascript/tools/shell/Main;->fileList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x3

    :try_start_29
    invoke-static {p0, v0}, Lorg/mozilla/javascript/tools/shell/Main;->processSource(Lorg/mozilla/javascript/Context;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_4c
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_29 .. :try_end_2c} :catch_41
    .catch Ljava/lang/VirtualMachineError; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_1c

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/VirtualMachineError;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/VirtualMachineError;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "msg.uncaughtJSException"

    invoke-static {v2, v0}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportError(Ljava/lang/String;)V

    sput v1, Lorg/mozilla/javascript/tools/shell/Main;->exitCode:I

    goto :goto_1c

    :catch_41
    move-exception v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->reportException(Lorg/mozilla/javascript/ErrorReporter;Lorg/mozilla/javascript/RhinoException;)V

    sput v1, Lorg/mozilla/javascript/tools/shell/Main;->exitCode:I

    goto :goto_1c

    :catch_4c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg.couldnt.read.source"

    invoke-static {v2, v0, v1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportError(Ljava/lang/String;)V

    const/4 v0, 0x4

    sput v0, Lorg/mozilla/javascript/tools/shell/Main;->exitCode:I

    goto :goto_1c

    :cond_5e
    return-void
.end method

.method public static processOptions([Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    const-class v0, Lorg/mozilla/javascript/tools/shell/Main;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    array-length v3, p0

    if-ne v2, v3, :cond_a

    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    :cond_a
    aget-object v3, p0, v2

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_2c

    sput-boolean v1, Lorg/mozilla/javascript/tools/shell/Main;->processStdin:Z

    sget-object v0, Lorg/mozilla/javascript/tools/shell/Main;->fileList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sput-object v3, Lorg/mozilla/javascript/tools/shell/Main;->mainModule:Ljava/lang/String;

    array-length v0, p0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v6

    new-array v0, v0, [Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    array-length v4, p0

    sub-int/2addr v4, v2

    sub-int/2addr v4, v6

    invoke-static {p0, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_2c
    const-string v5, "-version"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "msg.shell.usage"

    const/4 v8, 0x0

    if-eqz v5, :cond_59

    add-int/lit8 v2, v2, 0x1

    array-length v4, p0

    if-ne v2, v4, :cond_3e

    goto/16 :goto_1b6

    :cond_3e
    :try_start_3e
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_44} :catch_55

    invoke-static {v3}, Lorg/mozilla/javascript/Context;->isValidLanguageVersion(I)Z

    move-result v4

    if-nez v4, :cond_4e

    aget-object v3, p0, v2

    goto/16 :goto_1b6

    :cond_4e
    sget-object v4, Lorg/mozilla/javascript/tools/shell/Main;->shellContextFactory:Lorg/mozilla/javascript/tools/shell/ShellContextFactory;

    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->setLanguageVersion(I)V

    goto/16 :goto_1b1

    :catch_55
    aget-object v3, p0, v2

    goto/16 :goto_1b6

    :cond_59
    const-string v5, "-opt"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_192

    const-string v5, "-O"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    goto/16 :goto_192

    :cond_6b
    const-string v5, "-encoding"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_83

    add-int/lit8 v2, v2, 0x1

    array-length v4, p0

    if-ne v2, v4, :cond_7a

    goto/16 :goto_1b6

    :cond_7a
    aget-object v3, p0, v2

    sget-object v4, Lorg/mozilla/javascript/tools/shell/Main;->shellContextFactory:Lorg/mozilla/javascript/tools/shell/ShellContextFactory;

    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->setCharacterEncoding(Ljava/lang/String;)V

    goto/16 :goto_1b1

    :cond_83
    const-string v5, "-strict"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c

    sget-object v3, Lorg/mozilla/javascript/tools/shell/Main;->shellContextFactory:Lorg/mozilla/javascript/tools/shell/ShellContextFactory;

    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->setStrictMode(Z)V

    sget-object v3, Lorg/mozilla/javascript/tools/shell/Main;->shellContextFactory:Lorg/mozilla/javascript/tools/shell/ShellContextFactory;

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->setAllowReservedKeywords(Z)V

    sget-object v3, Lorg/mozilla/javascript/tools/shell/Main;->errorReporter:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->setIsReportingWarnings(Z)V

    goto/16 :goto_1b1

    :cond_9c
    const-string v5, "-fatal-warnings"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ab

    sget-object v3, Lorg/mozilla/javascript/tools/shell/Main;->shellContextFactory:Lorg/mozilla/javascript/tools/shell/ShellContextFactory;

    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->setWarningAsError(Z)V

    goto/16 :goto_1b1

    :cond_ab
    const-string v5, "-e"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d8

    sput-boolean v1, Lorg/mozilla/javascript/tools/shell/Main;->processStdin:Z

    add-int/lit8 v2, v2, 0x1

    array-length v4, p0

    if-ne v2, v4, :cond_bc

    goto/16 :goto_1b6

    :cond_bc
    sget-object v3, Lorg/mozilla/javascript/tools/shell/Main;->global:Lorg/mozilla/javascript/tools/shell/Global;

    iget-boolean v4, v3, Lorg/mozilla/javascript/tools/shell/Global;->initialized:Z

    if-nez v4, :cond_c7

    sget-object v4, Lorg/mozilla/javascript/tools/shell/Main;->shellContextFactory:Lorg/mozilla/javascript/tools/shell/ShellContextFactory;

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/tools/shell/Global;->init(Lorg/mozilla/javascript/ContextFactory;)V

    :cond_c7
    new-instance v3, Lorg/mozilla/javascript/tools/shell/Main$IProxy;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lorg/mozilla/javascript/tools/shell/Main$IProxy;-><init>(I)V

    aget-object v4, p0, v2

    iput-object v4, v3, Lorg/mozilla/javascript/tools/shell/Main$IProxy;->scriptText:Ljava/lang/String;

    sget-object v4, Lorg/mozilla/javascript/tools/shell/Main;->shellContextFactory:Lorg/mozilla/javascript/tools/shell/ShellContextFactory;

    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/ContextFactory;->call(Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;

    goto/16 :goto_1b1

    :cond_d8
    const-string v5, "-require"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e4

    sput-boolean v6, Lorg/mozilla/javascript/tools/shell/Main;->useRequire:Z

    goto/16 :goto_1b1

    :cond_e4
    const-string v5, "-sandbox"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f2

    sput-boolean v6, Lorg/mozilla/javascript/tools/shell/Main;->sandboxed:Z

    sput-boolean v6, Lorg/mozilla/javascript/tools/shell/Main;->useRequire:Z

    goto/16 :goto_1b1

    :cond_f2
    const-string v5, "-modules"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_117

    add-int/lit8 v2, v2, 0x1

    array-length v4, p0

    if-ne v2, v4, :cond_101

    goto/16 :goto_1b6

    :cond_101
    sget-object v3, Lorg/mozilla/javascript/tools/shell/Main;->modulePath:Ljava/util/List;

    if-nez v3, :cond_10c

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lorg/mozilla/javascript/tools/shell/Main;->modulePath:Ljava/util/List;

    :cond_10c
    sget-object v3, Lorg/mozilla/javascript/tools/shell/Main;->modulePath:Ljava/util/List;

    aget-object v4, p0, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sput-boolean v6, Lorg/mozilla/javascript/tools/shell/Main;->useRequire:Z

    goto/16 :goto_1b1

    :cond_117
    const-string v5, "-w"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_126

    sget-object v3, Lorg/mozilla/javascript/tools/shell/Main;->errorReporter:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->setIsReportingWarnings(Z)V

    goto/16 :goto_1b1

    :cond_126
    const-string v5, "-f"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_152

    sput-boolean v1, Lorg/mozilla/javascript/tools/shell/Main;->processStdin:Z

    add-int/lit8 v2, v2, 0x1

    array-length v5, p0

    if-ne v2, v5, :cond_137

    goto/16 :goto_1b6

    :cond_137
    aget-object v3, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_146

    sget-object v3, Lorg/mozilla/javascript/tools/shell/Main;->fileList:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b1

    :cond_146
    sget-object v3, Lorg/mozilla/javascript/tools/shell/Main;->fileList:Ljava/util/List;

    aget-object v4, p0, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v3, p0, v2

    sput-object v3, Lorg/mozilla/javascript/tools/shell/Main;->mainModule:Ljava/lang/String;

    goto :goto_1b1

    :cond_152
    const-string v4, "-sealedlib"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_160

    sget-object v3, Lorg/mozilla/javascript/tools/shell/Main;->global:Lorg/mozilla/javascript/tools/shell/Global;

    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/tools/shell/Global;->setSealedStdLib(Z)V

    goto :goto_1b1

    :cond_160
    const-string v4, "-debug"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16e

    sget-object v3, Lorg/mozilla/javascript/tools/shell/Main;->shellContextFactory:Lorg/mozilla/javascript/tools/shell/ShellContextFactory;

    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->setGeneratingDebug(Z)V

    goto :goto_1b1

    :cond_16e
    const-string p0, "-?"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17e

    const-string p0, "-help"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b6

    :cond_17e
    sget-object p0, Lorg/mozilla/javascript/tools/shell/Main;->global:Lorg/mozilla/javascript/tools/shell/Global;

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/Global;->getOut()Ljava/io/PrintStream;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sput v6, Lorg/mozilla/javascript/tools/shell/Main;->exitCode:I

    return-object v8

    :cond_192
    :goto_192
    add-int/lit8 v2, v2, 0x1

    array-length v4, p0

    if-ne v2, v4, :cond_198

    goto :goto_1b6

    :cond_198
    :try_start_198
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_19e
    .catch Ljava/lang/NumberFormatException; {:try_start_198 .. :try_end_19e} :catch_1b4

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1a3

    const/4 v3, -0x1

    goto :goto_1ac

    :cond_1a3
    invoke-static {v3}, Lorg/mozilla/javascript/Context;->isValidOptimizationLevel(I)Z

    move-result v4

    if-nez v4, :cond_1ac

    aget-object v3, p0, v2

    goto :goto_1b6

    :cond_1ac
    :goto_1ac
    sget-object v4, Lorg/mozilla/javascript/tools/shell/Main;->shellContextFactory:Lorg/mozilla/javascript/tools/shell/ShellContextFactory;

    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->setOptimizationLevel(I)V

    :goto_1b1
    add-int/2addr v2, v6

    goto/16 :goto_4

    :catch_1b4
    aget-object v3, p0, v2

    :cond_1b6
    :goto_1b6
    sget-object p0, Lorg/mozilla/javascript/tools/shell/Main;->global:Lorg/mozilla/javascript/tools/shell/Global;

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/Global;->getOut()Ljava/io/PrintStream;

    move-result-object p0

    const-string v1, "msg.shell.invalid"

    invoke-static {v1, v3}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Lorg/mozilla/javascript/tools/shell/Main;->global:Lorg/mozilla/javascript/tools/shell/Global;

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/Global;->getOut()Ljava/io/PrintStream;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sput v6, Lorg/mozilla/javascript/tools/shell/Main;->exitCode:I

    return-object v8
.end method

.method public static processSource(Lorg/mozilla/javascript/Context;Ljava/lang/String;)V
    .registers 14

    if-eqz p1, :cond_27

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_27

    :cond_b
    sget-boolean v0, Lorg/mozilla/javascript/tools/shell/Main;->useRequire:Z

    if-eqz v0, :cond_1e

    sget-object v0, Lorg/mozilla/javascript/tools/shell/Main;->mainModule:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lorg/mozilla/javascript/tools/shell/Main;->require:Lorg/mozilla/javascript/commonjs/module/Require;

    invoke-virtual {v0, p0, p1}, Lorg/mozilla/javascript/commonjs/module/Require;->requireMain(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    goto/16 :goto_fa

    :cond_1e
    invoke-static {p1}, Lorg/mozilla/javascript/tools/shell/Main;->getScope(Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/mozilla/javascript/tools/shell/Main;->processFile(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V

    goto/16 :goto_fa

    :cond_27
    :goto_27
    invoke-static {}, Lorg/mozilla/javascript/tools/shell/Main;->getShellScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/tools/shell/Main;->shellContextFactory:Lorg/mozilla/javascript/tools/shell/ShellContextFactory;

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_3c

    :cond_38
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    :goto_3c
    sget-object v2, Lorg/mozilla/javascript/tools/shell/Main;->global:Lorg/mozilla/javascript/tools/shell/Global;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/tools/shell/Global;->getConsole(Ljava/nio/charset/Charset;)Lorg/mozilla/javascript/tools/shell/ShellConsole;

    move-result-object v1

    if-nez p1, :cond_4b

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getImplementationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->println(Ljava/lang/String;)V

    :cond_4b
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :cond_4f
    :goto_4f
    if-nez v4, :cond_f4

    sget-object v6, Lorg/mozilla/javascript/tools/shell/Main;->global:Lorg/mozilla/javascript/tools/shell/Global;

    invoke-virtual {v6, p0}, Lorg/mozilla/javascript/tools/shell/Global;->getPrompts(Lorg/mozilla/javascript/Context;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-nez p1, :cond_5d

    aget-object v8, v6, v2

    goto :goto_5e

    :cond_5d
    move-object v8, v7

    :goto_5e
    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->flush()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    :goto_66
    :try_start_66
    invoke-virtual {v1, v8}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6a} :catch_86

    if-nez v8, :cond_6e

    const/4 v4, 0x1

    goto :goto_8e

    :cond_6e
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/mozilla/javascript/Context;->stringIsCompilableUnit(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_83

    goto :goto_8e

    :cond_83
    aget-object v8, v6, v3

    goto :goto_66

    :catch_86
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->println(Ljava/lang/String;)V

    :goto_8e
    const/4 v6, 0x3

    :try_start_8f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "<stdin>"

    invoke-virtual {p0, v8, v10, v5, v7}, Lorg/mozilla/javascript/Context;->compileString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object v7

    if-eqz v7, :cond_4f

    invoke-interface {v7, p0, v0}, Lorg/mozilla/javascript/Script;->exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {}, Lorg/mozilla/javascript/Context;->getUndefinedValue()Ljava/lang/Object;

    move-result-object v10

    if-eq v7, v10, :cond_c5

    instance-of v10, v7, Lorg/mozilla/javascript/Function;

    if-eqz v10, :cond_b5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v10, "function"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_b3
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_8f .. :try_end_b3} :catch_e8
    .catch Ljava/lang/VirtualMachineError; {:try_start_8f .. :try_end_b3} :catch_d3

    if-nez v8, :cond_c5

    :cond_b5
    :try_start_b5
    invoke-static {v7}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->println(Ljava/lang/String;)V
    :try_end_bc
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_b5 .. :try_end_bc} :catch_bd
    .catch Ljava/lang/VirtualMachineError; {:try_start_b5 .. :try_end_bc} :catch_d3

    goto :goto_c5

    :catch_bd
    move-exception v7

    :try_start_be
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v8

    invoke-static {v8, v7}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->reportException(Lorg/mozilla/javascript/ErrorReporter;Lorg/mozilla/javascript/RhinoException;)V

    :cond_c5
    :goto_c5
    sget-object v7, Lorg/mozilla/javascript/tools/shell/Main;->global:Lorg/mozilla/javascript/tools/shell/Global;

    iget-object v7, v7, Lorg/mozilla/javascript/tools/shell/Global;->history:Lorg/mozilla/javascript/NativeArray;

    invoke-virtual {v7}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide v10

    long-to-int v8, v10

    invoke-virtual {v7, v8, v7, v9}, Lorg/mozilla/javascript/NativeArray;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    :try_end_d1
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_be .. :try_end_d1} :catch_e8
    .catch Ljava/lang/VirtualMachineError; {:try_start_be .. :try_end_d1} :catch_d3

    goto/16 :goto_4f

    :catch_d3
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/VirtualMachineError;->printStackTrace()V

    invoke-virtual {v7}, Ljava/lang/VirtualMachineError;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "msg.uncaughtJSException"

    invoke-static {v8, v7}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/mozilla/javascript/Context;->reportError(Ljava/lang/String;)V

    sput v6, Lorg/mozilla/javascript/tools/shell/Main;->exitCode:I

    goto/16 :goto_4f

    :catch_e8
    move-exception v7

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v8

    invoke-static {v8, v7}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->reportException(Lorg/mozilla/javascript/ErrorReporter;Lorg/mozilla/javascript/RhinoException;)V

    sput v6, Lorg/mozilla/javascript/tools/shell/Main;->exitCode:I

    goto/16 :goto_4f

    :cond_f4
    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->println()V

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->flush()V

    :goto_fa
    return-void
.end method

.method private static readFileOrUrl(Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    sget-object v0, Lorg/mozilla/javascript/tools/shell/Main;->shellContextFactory:Lorg/mozilla/javascript/tools/shell/ShellContextFactory;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/shell/ShellContextFactory;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/tools/SourceReader;->readFileOrUrl(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static setErr(Ljava/io/PrintStream;)V
    .registers 2

    invoke-static {}, Lorg/mozilla/javascript/tools/shell/Main;->getGlobal()Lorg/mozilla/javascript/tools/shell/Global;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/tools/shell/Global;->setErr(Ljava/io/PrintStream;)V

    return-void
.end method

.method public static setIn(Ljava/io/InputStream;)V
    .registers 2

    invoke-static {}, Lorg/mozilla/javascript/tools/shell/Main;->getGlobal()Lorg/mozilla/javascript/tools/shell/Global;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/tools/shell/Global;->setIn(Ljava/io/InputStream;)V

    return-void
.end method

.method public static setOut(Ljava/io/PrintStream;)V
    .registers 2

    invoke-static {}, Lorg/mozilla/javascript/tools/shell/Main;->getGlobal()Lorg/mozilla/javascript/tools/shell/Global;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/tools/shell/Global;->setOut(Ljava/io/PrintStream;)V

    return-void
.end method
