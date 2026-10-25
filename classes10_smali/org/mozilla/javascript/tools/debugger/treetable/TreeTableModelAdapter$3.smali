.class Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter$3;
.super Ljava/lang/Object;
.source "TreeTableModelAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter$3;->this$0:Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter$3;->this$0:Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;->fireTableDataChanged()V

    return-void
.end method
