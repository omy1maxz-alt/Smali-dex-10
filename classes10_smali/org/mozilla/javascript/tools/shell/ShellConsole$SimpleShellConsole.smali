.class Lorg/mozilla/javascript/tools/shell/ShellConsole$SimpleShellConsole;
.super Lorg/mozilla/javascript/tools/shell/ShellConsole;
.source "ShellConsole.java"


# instance fields
.field private final in:Ljava/io/InputStream;

.field private final out:Ljava/io/PrintWriter;

.field private final reader:Ljava/io/BufferedReader;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/nio/charset/Charset;)V
    .registers 5

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/shell/ShellConsole;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$SimpleShellConsole;->in:Ljava/io/InputStream;

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$SimpleShellConsole;->out:Ljava/io/PrintWriter;

    new-instance p2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p2, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$SimpleShellConsole;->reader:Ljava/io/BufferedReader;

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$SimpleShellConsole;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public getIn()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$SimpleShellConsole;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public print(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$SimpleShellConsole;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public println()V
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$SimpleShellConsole;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public println(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$SimpleShellConsole;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public readLine()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$SimpleShellConsole;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_c

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$SimpleShellConsole;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$SimpleShellConsole;->out:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_c
    iget-object p1, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$SimpleShellConsole;->reader:Ljava/io/BufferedReader;

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
