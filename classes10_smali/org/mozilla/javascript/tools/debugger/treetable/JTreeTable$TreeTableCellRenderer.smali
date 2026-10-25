.class public Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$TreeTableCellRenderer;
.super Ljavax/swing/JTree;
.source "JTreeTable.java"

# interfaces
.implements Ljavax/swing/table/TableCellRenderer;


# static fields
.field private static final serialVersionUID:J = -0x2b0c1cf49a0da0dL


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable;

.field protected visibleRow:I


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable;Ljavax/swing/tree/TreeModel;)V
    .registers 3

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$TreeTableCellRenderer;->this$0:Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable;

    invoke-direct {p0, p2}, Ljavax/swing/JTree;-><init>(Ljavax/swing/tree/TreeModel;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$TreeTableCellRenderer;->setBorder(Ljavax/swing/border/Border;)V

    return-void
.end method


# virtual methods
.method public getTableCellRendererComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component;
    .registers 7

    if-eqz p3, :cond_a

    invoke-virtual {p1}, Ljavax/swing/JTable;->getSelectionBackground()Ljava/awt/Color;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$TreeTableCellRenderer;->setBackground(Ljava/awt/Color;)V

    goto :goto_11

    :cond_a
    invoke-virtual {p1}, Ljavax/swing/JTable;->getBackground()Ljava/awt/Color;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$TreeTableCellRenderer;->setBackground(Ljava/awt/Color;)V

    :goto_11
    iput p5, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$TreeTableCellRenderer;->visibleRow:I

    return-object p0
.end method

.method public paint(Ljava/awt/Graphics;)V
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$TreeTableCellRenderer;->visibleRow:I

    neg-int v0, v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$TreeTableCellRenderer;->getRowHeight()I

    move-result v1

    mul-int v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/awt/Graphics;->translate(II)V

    invoke-super {p0, p1}, Ljavax/swing/JTree;->paint(Ljava/awt/Graphics;)V

    return-void
.end method

.method public setBounds(IIII)V
    .registers 5

    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$TreeTableCellRenderer;->this$0:Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable;

    invoke-virtual {p2}, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable;->getHeight()I

    move-result p2

    const/4 p4, 0x0

    invoke-super {p0, p1, p4, p3, p2}, Ljavax/swing/JTree;->setBounds(IIII)V

    return-void
.end method

.method public setRowHeight(I)V
    .registers 3

    if-lez p1, :cond_16

    invoke-super {p0, p1}, Ljavax/swing/JTree;->setRowHeight(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$TreeTableCellRenderer;->this$0:Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable;->getRowHeight()I

    move-result v0

    if-eq v0, p1, :cond_16

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$TreeTableCellRenderer;->this$0:Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable;

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$TreeTableCellRenderer;->getRowHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable;->setRowHeight(I)V

    :cond_16
    return-void
.end method

.method public updateUI()V
    .registers 3

    invoke-super {p0}, Ljavax/swing/JTree;->updateUI()V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$TreeTableCellRenderer;->getCellRenderer()Ljavax/swing/tree/TreeCellRenderer;

    move-result-object v0

    instance-of v1, v0, Ljavax/swing/tree/DefaultTreeCellRenderer;

    if-eqz v1, :cond_1f

    check-cast v0, Ljavax/swing/tree/DefaultTreeCellRenderer;

    const-string v1, "Table.selectionForeground"

    invoke-static {v1}, Ljavax/swing/UIManager;->getColor(Ljava/lang/Object;)Ljava/awt/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/tree/DefaultTreeCellRenderer;->setTextSelectionColor(Ljava/awt/Color;)V

    const-string v1, "Table.selectionBackground"

    invoke-static {v1}, Ljavax/swing/UIManager;->getColor(Ljava/lang/Object;)Ljava/awt/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/tree/DefaultTreeCellRenderer;->setBackgroundSelectionColor(Ljava/awt/Color;)V

    :cond_1f
    return-void
.end method
