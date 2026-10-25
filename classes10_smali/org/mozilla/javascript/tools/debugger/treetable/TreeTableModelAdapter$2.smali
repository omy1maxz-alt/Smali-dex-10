.class Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter$2;
.super Ljava/lang/Object;
.source "TreeTableModelAdapter.java"

# interfaces
.implements Ljavax/swing/event/TreeModelListener;


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter$2;->this$0:Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public treeNodesChanged(Ljavax/swing/event/TreeModelEvent;)V
    .registers 2

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter$2;->this$0:Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;->delayedFireTableDataChanged()V

    return-void
.end method

.method public treeNodesInserted(Ljavax/swing/event/TreeModelEvent;)V
    .registers 2

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter$2;->this$0:Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;->delayedFireTableDataChanged()V

    return-void
.end method

.method public treeNodesRemoved(Ljavax/swing/event/TreeModelEvent;)V
    .registers 2

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter$2;->this$0:Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;->delayedFireTableDataChanged()V

    return-void
.end method

.method public treeStructureChanged(Ljavax/swing/event/TreeModelEvent;)V
    .registers 2

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter$2;->this$0:Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;->delayedFireTableDataChanged()V

    return-void
.end method
