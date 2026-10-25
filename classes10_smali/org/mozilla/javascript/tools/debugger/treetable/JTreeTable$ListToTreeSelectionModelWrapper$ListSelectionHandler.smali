.class Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper$ListSelectionHandler;
.super Ljava/lang/Object;
.source "JTreeTable.java"

# interfaces
.implements Ljavax/swing/event/ListSelectionListener;


# instance fields
.field final synthetic this$1:Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper$ListSelectionHandler;->this$1:Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .registers 2

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper$ListSelectionHandler;->this$1:Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;->updateSelectedPathsFromSelectedRows()V

    return-void
.end method
