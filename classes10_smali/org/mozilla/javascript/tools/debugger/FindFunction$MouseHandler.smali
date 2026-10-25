.class Lorg/mozilla/javascript/tools/debugger/FindFunction$MouseHandler;
.super Ljava/awt/event/MouseAdapter;
.source "SwingGui.java"


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/tools/debugger/FindFunction;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/tools/debugger/FindFunction;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction$MouseHandler;->this$0:Lorg/mozilla/javascript/tools/debugger/FindFunction;

    invoke-direct {p0}, Ljava/awt/event/MouseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public mouseClicked(Ljava/awt/event/MouseEvent;)V
    .registers 3

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getClickCount()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_10

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction$MouseHandler;->this$0:Lorg/mozilla/javascript/tools/debugger/FindFunction;

    invoke-static {p1}, Lorg/mozilla/javascript/tools/debugger/FindFunction;->access$100(Lorg/mozilla/javascript/tools/debugger/FindFunction;)Ljavax/swing/JButton;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/swing/JButton;->doClick()V

    :cond_10
    return-void
.end method
