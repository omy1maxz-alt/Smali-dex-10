.class Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;
.super Ljavax/swing/JInternalFrame;
.source "SwingGui.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# static fields
.field private static final serialVersionUID:J = -0x4ca74da29ad7f3bcL


# instance fields
.field consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljavax/swing/JInternalFrame;-><init>(Ljava/lang/String;ZZZZ)V

    new-instance p1, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->setRows(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->setColumns(I)V

    new-instance p1, Ljavax/swing/JScrollPane;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-direct {p1, v0}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->setContentPane(Ljava/awt/Container;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->pack()V

    new-instance p1, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole$1;

    invoke-direct {p1, p0}, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole$1;-><init>(Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->addInternalFrameListener(Ljavax/swing/event/InternalFrameListener;)V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .registers 3

    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cut"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->cut()V

    goto :goto_2d

    :cond_12
    const-string v0, "Copy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->copy()V

    goto :goto_2d

    :cond_20
    const-string v0, "Paste"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->paste()V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public getErr()Ljava/io/PrintStream;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->getErr()Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public getIn()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->getIn()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOut()Ljava/io/PrintStream;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method
