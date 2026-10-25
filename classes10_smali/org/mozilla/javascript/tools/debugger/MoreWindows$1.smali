.class Lorg/mozilla/javascript/tools/debugger/MoreWindows$1;
.super Ljava/awt/event/KeyAdapter;
.source "SwingGui.java"


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/tools/debugger/MoreWindows;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/tools/debugger/MoreWindows;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/MoreWindows$1;->this$0:Lorg/mozilla/javascript/tools/debugger/MoreWindows;

    invoke-direct {p0}, Ljava/awt/event/KeyAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public keyPressed(Ljava/awt/event/KeyEvent;)V
    .registers 4

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_17

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/MoreWindows$1;->this$0:Lorg/mozilla/javascript/tools/debugger/MoreWindows;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/mozilla/javascript/tools/debugger/MoreWindows;->access$102(Lorg/mozilla/javascript/tools/debugger/MoreWindows;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/MoreWindows$1;->this$0:Lorg/mozilla/javascript/tools/debugger/MoreWindows;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/debugger/MoreWindows;->setVisible(Z)V

    :cond_17
    return-void
.end method
