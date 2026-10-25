.class Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter$1;
.super Ljava/lang/Object;
.source "TreeTableModelAdapter.java"

# interfaces
.implements Ljavax/swing/event/TreeExpansionListener;


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter$1;->this$0:Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public treeCollapsed(Ljavax/swing/event/TreeExpansionEvent;)V
    .registers 2

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter$1;->this$0:Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;->fireTableDataChanged()V

    return-void
.end method

.method public treeExpanded(Ljavax/swing/event/TreeExpansionEvent;)V
    .registers 2

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter$1;->this$0:Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;->fireTableDataChanged()V

    return-void
.end method
