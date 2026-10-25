.class public Lorg/mozilla/javascript/tools/debugger/treetable/AbstractCellEditor;
.super Ljava/lang/Object;
.source "AbstractCellEditor.java"

# interfaces
.implements Ljavax/swing/CellEditor;


# instance fields
.field protected listenerList:Ljavax/swing/event/EventListenerList;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljavax/swing/event/EventListenerList;

    invoke-direct {v0}, Ljavax/swing/event/EventListenerList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/AbstractCellEditor;->listenerList:Ljavax/swing/event/EventListenerList;

    return-void
.end method


# virtual methods
.method public addCellEditorListener(Ljavax/swing/event/CellEditorListener;)V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/AbstractCellEditor;->listenerList:Ljavax/swing/event/EventListenerList;

    const-class v1, Ljavax/swing/event/CellEditorListener;

    invoke-virtual {v0, v1, p1}, Ljavax/swing/event/EventListenerList;->add(Ljava/lang/Class;Ljava/util/EventListener;)V

    return-void
.end method

.method public cancelCellEditing()V
    .registers 1

    return-void
.end method

.method protected fireEditingCanceled()V
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/AbstractCellEditor;->listenerList:Ljavax/swing/event/EventListenerList;

    invoke-virtual {v0}, Ljavax/swing/event/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    :goto_9
    if-ltz v1, :cond_22

    aget-object v2, v0, v1

    const-class v3, Ljavax/swing/event/CellEditorListener;

    if-ne v2, v3, :cond_1f

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljavax/swing/event/CellEditorListener;

    new-instance v3, Ljavax/swing/event/ChangeEvent;

    invoke-direct {v3, p0}, Ljavax/swing/event/ChangeEvent;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljavax/swing/event/CellEditorListener;->editingCanceled(Ljavax/swing/event/ChangeEvent;)V

    :cond_1f
    add-int/lit8 v1, v1, -0x2

    goto :goto_9

    :cond_22
    return-void
.end method

.method protected fireEditingStopped()V
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/AbstractCellEditor;->listenerList:Ljavax/swing/event/EventListenerList;

    invoke-virtual {v0}, Ljavax/swing/event/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    :goto_9
    if-ltz v1, :cond_22

    aget-object v2, v0, v1

    const-class v3, Ljavax/swing/event/CellEditorListener;

    if-ne v2, v3, :cond_1f

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljavax/swing/event/CellEditorListener;

    new-instance v3, Ljavax/swing/event/ChangeEvent;

    invoke-direct {v3, p0}, Ljavax/swing/event/ChangeEvent;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljavax/swing/event/CellEditorListener;->editingStopped(Ljavax/swing/event/ChangeEvent;)V

    :cond_1f
    add-int/lit8 v1, v1, -0x2

    goto :goto_9

    :cond_22
    return-void
.end method

.method public getCellEditorValue()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isCellEditable(Ljava/util/EventObject;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public removeCellEditorListener(Ljavax/swing/event/CellEditorListener;)V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/AbstractCellEditor;->listenerList:Ljavax/swing/event/EventListenerList;

    const-class v1, Ljavax/swing/event/CellEditorListener;

    invoke-virtual {v0, v1, p1}, Ljavax/swing/event/EventListenerList;->remove(Ljava/lang/Class;Ljava/util/EventListener;)V

    return-void
.end method

.method public shouldSelectCell(Ljava/util/EventObject;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public stopCellEditing()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
