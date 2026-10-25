.class public abstract Lorg/mozilla/javascript/tools/shell/ShellConsole;
.super Ljava/lang/Object;
.source "ShellConsole.java"


# static fields
.field private static final BOOLEAN_ARG:[Ljava/lang/Class;

.field private static final CHARSEQ_ARG:[Ljava/lang/Class;

.field private static final NO_ARG:[Ljava/lang/Class;

.field private static final STRING_ARG:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lorg/mozilla/javascript/tools/shell/ShellConsole;->NO_ARG:[Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    sput-object v2, Lorg/mozilla/javascript/tools/shell/ShellConsole;->BOOLEAN_ARG:[Ljava/lang/Class;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v0

    sput-object v2, Lorg/mozilla/javascript/tools/shell/ShellConsole;->STRING_ARG:[Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/CharSequence;

    aput-object v2, v1, v0

    sput-object v1, Lorg/mozilla/javascript/tools/shell/ShellConsole;->CHARSEQ_ARG:[Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .registers 1

    sget-object v0, Lorg/mozilla/javascript/tools/shell/ShellConsole;->NO_ARG:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->tryInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()[Ljava/lang/Class;
    .registers 1

    sget-object v0, Lorg/mozilla/javascript/tools/shell/ShellConsole;->STRING_ARG:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/Class;
    .registers 1

    sget-object v0, Lorg/mozilla/javascript/tools/shell/ShellConsole;->CHARSEQ_ARG:[Ljava/lang/Class;

    return-object v0
.end method

.method public static getConsole(Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/nio/charset/Charset;)Lorg/mozilla/javascript/tools/shell/ShellConsole;
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/tools/shell/ShellConsole$SimpleShellConsole;

    invoke-direct {v0, p0, p1, p2}, Lorg/mozilla/javascript/tools/shell/ShellConsole$SimpleShellConsole;-><init>(Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static getConsole(Lorg/mozilla/javascript/Scriptable;Ljava/nio/charset/Charset;)Lorg/mozilla/javascript/tools/shell/ShellConsole;
    .registers 5

    const-class v0, Lorg/mozilla/javascript/tools/shell/ShellConsole;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_c
    const/4 v1, 0x0

    if-nez v0, :cond_10

    return-object v1

    :cond_10
    :try_start_10
    const-string v2, "jline.console.ConsoleReader"

    invoke-static {v0, v2}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-static {v0, v2, p0, p1}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->getJLineShellConsoleV2(Ljava/lang/ClassLoader;Ljava/lang/Class;Lorg/mozilla/javascript/Scriptable;Ljava/nio/charset/Charset;)Lorg/mozilla/javascript/tools/shell/ShellConsole$JLineShellConsoleV2;

    move-result-object p0

    return-object p0

    :cond_1d
    const-string v2, "jline.ConsoleReader"

    invoke-static {v0, v2}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-static {v0, v2, p0, p1}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->getJLineShellConsoleV1(Ljava/lang/ClassLoader;Ljava/lang/Class;Lorg/mozilla/javascript/Scriptable;Ljava/nio/charset/Charset;)Lorg/mozilla/javascript/tools/shell/ShellConsole$JLineShellConsoleV1;

    move-result-object p0
    :try_end_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_29} :catch_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_29} :catch_2a
    .catch Ljava/lang/InstantiationException; {:try_start_10 .. :try_end_29} :catch_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_29} :catch_2a

    return-object p0

    :catch_2a
    :cond_2a
    return-object v1
.end method

.method private static getJLineShellConsoleV1(Ljava/lang/ClassLoader;Ljava/lang/Class;Lorg/mozilla/javascript/Scriptable;Ljava/nio/charset/Charset;)Lorg/mozilla/javascript/tools/shell/ShellConsole$JLineShellConsoleV1;
    .registers 9

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lorg/mozilla/javascript/tools/shell/ShellConsole;->BOOLEAN_ARG:[Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    const-string v4, "setBellEnabled"

    invoke-static {p1, v4, v1, v3}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->tryInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "jline.Completor"

    invoke-static {p0, v1}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v1, v3, v0

    new-instance v4, Lorg/mozilla/javascript/tools/shell/FlexibleCompletor;

    invoke-direct {v4, v1, p2}, Lorg/mozilla/javascript/tools/shell/FlexibleCompletor;-><init>(Ljava/lang/Class;Lorg/mozilla/javascript/Scriptable;)V

    invoke-static {p0, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    new-array p2, v2, [Ljava/lang/Class;

    aput-object v1, p2, v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "addCompletor"

    invoke-static {p1, p0, p2, v1}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->tryInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$JLineShellConsoleV1;

    invoke-direct {p0, p1, p3}, Lorg/mozilla/javascript/tools/shell/ShellConsole$JLineShellConsoleV1;-><init>(Ljava/lang/Object;Ljava/nio/charset/Charset;)V

    return-object p0
.end method

.method private static getJLineShellConsoleV2(Ljava/lang/ClassLoader;Ljava/lang/Class;Lorg/mozilla/javascript/Scriptable;Ljava/nio/charset/Charset;)Lorg/mozilla/javascript/tools/shell/ShellConsole$JLineShellConsoleV2;
    .registers 9

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lorg/mozilla/javascript/tools/shell/ShellConsole;->BOOLEAN_ARG:[Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    const-string v4, "setBellEnabled"

    invoke-static {p1, v4, v1, v3}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->tryInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "jline.console.completer.Completer"

    invoke-static {p0, v1}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v1, v3, v0

    new-instance v4, Lorg/mozilla/javascript/tools/shell/FlexibleCompletor;

    invoke-direct {v4, v1, p2}, Lorg/mozilla/javascript/tools/shell/FlexibleCompletor;-><init>(Ljava/lang/Class;Lorg/mozilla/javascript/Scriptable;)V

    invoke-static {p0, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    new-array p2, v2, [Ljava/lang/Class;

    aput-object v1, p2, v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "addCompleter"

    invoke-static {p1, p0, p2, v1}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->tryInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$JLineShellConsoleV2;

    invoke-direct {p0, p1, p3}, Lorg/mozilla/javascript/tools/shell/ShellConsole$JLineShellConsoleV2;-><init>(Ljava/lang/Object;Ljava/nio/charset/Charset;)V

    return-object p0
.end method

.method private static varargs tryInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract flush()V
.end method

.method public abstract getIn()Ljava/io/InputStream;
.end method

.method public abstract print(Ljava/lang/String;)V
.end method

.method public abstract println()V
.end method

.method public abstract println(Ljava/lang/String;)V
.end method

.method public abstract readLine()Ljava/lang/String;
.end method

.method public abstract readLine(Ljava/lang/String;)Ljava/lang/String;
.end method
