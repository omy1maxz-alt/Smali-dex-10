.class public Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;
.super Ljavax/swing/tree/DefaultTreeSelectionModel;
.source "JTreeTable.java"


# static fields
.field private static final serialVersionUID:J = 0x715b10ced10c319bL


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable;

.field protected updatingListSelectionModel:Z


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable;)V
    .registers 3

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;->this$0:Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable;

    invoke-direct {p0}, Ljavax/swing/tree/DefaultTreeSelectionModel;-><init>()V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;->getListSelectionModel()Ljavax/swing/ListSelectionModel;

    move-result-object p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;->createListSelectionListener()Ljavax/swing/event/ListSelectionListener;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/swing/ListSelectionModel;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    return-void
.end method


# virtual methods
.method protected createListSelectionListener()Ljavax/swing/event/ListSelectionListener;
    .registers 2

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper$ListSelectionHandler;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper$ListSelectionHandler;-><init>(Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;)V

    return-object v0
.end method

.method public getListSelectionModel()Ljavax/swing/ListSelectionModel;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;->listSelectionModel:Ljavax/swing/DefaultListSelectionModel;

    return-object v0
.end method

.method public resetRowSelection()V
    .registers 3

    iget-boolean v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;->updatingListSelectionModel:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;->updatingListSelectionModel:Z

    const/4 v0, 0x0

    :try_start_8
    invoke-super {p0}, Ljavax/swing/tree/DefaultTreeSelectionModel;->resetRowSelection()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_e

    iput-boolean v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;->updatingListSelectionModel:Z

    goto :goto_12

    :catchall_e
    move-exception v1

    iput-boolean v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;->updatingListSelectionModel:Z

    throw v1

    :cond_12
    :goto_12
    return-void
.end method

.method protected updateSelectedPathsFromSelectedRows()V
    .registers 5

    iget-boolean v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;->updatingListSelectionModel:Z

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;->updatingListSelectionModel:Z

    const/4 v0, 0x0

    :try_start_8
    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;->listSelectionModel:Ljavax/swing/DefaultListSelectionModel;

    invoke-virtual {v1}, Ljavax/swing/DefaultListSelectionModel;->getMinSelectionIndex()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;->listSelectionModel:Ljavax/swing/DefaultListSelectionModel;

    invoke-virtual {v2}, Ljavax/swing/DefaultListSelectionModel;->getMaxSelectionIndex()I

    move-result v2

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;->clearSelection()V

    const/4 v3, -0x1

    if-eq v1, v3, :cond_36

    if-eq v2, v3, :cond_36

    :goto_1c
    if-gt v1, v2, :cond_36

    iget-object v3, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;->listSelectionModel:Ljavax/swing/DefaultListSelectionModel;

    invoke-virtual {v3, v1}, Ljavax/swing/DefaultListSelectionModel;->isSelectedIndex(I)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;->this$0:Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable;

    iget-object v3, v3, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable;->tree:Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$TreeTableCellRenderer;

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$TreeTableCellRenderer;->getPathForRow(I)Ljavax/swing/tree/TreePath;

    move-result-object v3

    if-eqz v3, :cond_33

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;->addSelectionPath(Ljavax/swing/tree/TreePath;)V
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_39

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_36
    iput-boolean v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;->updatingListSelectionModel:Z

    goto :goto_3d

    :catchall_39
    move-exception v1

    iput-boolean v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$ListToTreeSelectionModelWrapper;->updatingListSelectionModel:Z

    throw v1

    :cond_3d
    :goto_3d
    return-void
.end method
