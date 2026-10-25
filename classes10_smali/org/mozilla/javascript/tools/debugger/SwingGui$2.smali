.class Lorg/mozilla/javascript/tools/debugger/SwingGui$2;
.super Ljava/awt/event/WindowAdapter;
.source "SwingGui.java"


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/tools/debugger/SwingGui;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui$2;->this$0:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .registers 2

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui$2;->this$0:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    invoke-static {p1}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->access$000(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V

    return-void
.end method
