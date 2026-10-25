.class Lorg/mozilla/javascript/tools/debugger/FileTextArea;
.super Ljavax/swing/JTextArea;
.source "SwingGui.java"

# interfaces
.implements Ljava/awt/event/ActionListener;
.implements Ljavax/swing/event/PopupMenuListener;
.implements Ljava/awt/event/KeyListener;
.implements Ljava/awt/event/MouseListener;


# static fields
.field private static final serialVersionUID:J = -0x58ee87e90e5408L


# instance fields
.field private popup:Lorg/mozilla/javascript/tools/debugger/FilePopupMenu;

.field private w:Lorg/mozilla/javascript/tools/debugger/FileWindow;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/FileWindow;)V
    .registers 5

    invoke-direct {p0}, Ljavax/swing/JTextArea;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->w:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    new-instance p1, Lorg/mozilla/javascript/tools/debugger/FilePopupMenu;

    invoke-direct {p1, p0}, Lorg/mozilla/javascript/tools/debugger/FilePopupMenu;-><init>(Lorg/mozilla/javascript/tools/debugger/FileTextArea;)V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->popup:Lorg/mozilla/javascript/tools/debugger/FilePopupMenu;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/tools/debugger/FilePopupMenu;->addPopupMenuListener(Ljavax/swing/event/PopupMenuListener;)V

    invoke-virtual {p0, p0}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->addMouseListener(Ljava/awt/event/MouseListener;)V

    invoke-virtual {p0, p0}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->addKeyListener(Ljava/awt/event/KeyListener;)V

    new-instance p1, Ljava/awt/Font;

    const-string v0, "Label.font"

    invoke-static {v0}, Ljavax/swing/UIManager;->getFont(Ljava/lang/Object;)Ljava/awt/Font;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Font;->getSize()I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v1, "Monospaced"

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2, v0}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->setFont(Ljava/awt/Font;)V

    return-void
.end method

.method private checkPopup(Ljava/awt/event/MouseEvent;)V
    .registers 4

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->isPopupTrigger()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->popup:Lorg/mozilla/javascript/tools/debugger/FilePopupMenu;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getX()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result p1

    invoke-virtual {v0, p0, v1, p1}, Lorg/mozilla/javascript/tools/debugger/FilePopupMenu;->show(Ljavax/swing/JComponent;II)V

    :cond_13
    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .registers 5

    new-instance v0, Ljava/awt/Point;

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->popup:Lorg/mozilla/javascript/tools/debugger/FilePopupMenu;

    iget v2, v1, Lorg/mozilla/javascript/tools/debugger/FilePopupMenu;->x:I

    iget v1, v1, Lorg/mozilla/javascript/tools/debugger/FilePopupMenu;->y:I

    invoke-direct {v0, v2, v1}, Ljava/awt/Point;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->viewToModel(Ljava/awt/Point;)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->popup:Lorg/mozilla/javascript/tools/debugger/FilePopupMenu;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/tools/debugger/FilePopupMenu;->setVisible(Z)V

    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object p1

    :try_start_19
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->getLineOfOffset(I)I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_1e

    goto :goto_1f

    :catch_1e
    const/4 v0, -0x1

    :goto_1f
    const-string v1, "Set Breakpoint"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->w:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setBreakPoint(I)V

    goto :goto_4c

    :cond_2f
    const-string v1, "Clear Breakpoint"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->w:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->clearBreakPoint(I)V

    goto :goto_4c

    :cond_3f
    const-string v0, "Run"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->w:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->load()V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public keyPressed(Ljava/awt/event/KeyEvent;)V
    .registers 4

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_c

    packed-switch v0, :pswitch_data_10

    goto :goto_f

    :cond_c
    :pswitch_c  #0x8, 0x9, 0xa
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    :goto_f
    return-void

    :pswitch_data_10
    .packed-switch 0x8
        :pswitch_c  #00000008
        :pswitch_c  #00000009
        :pswitch_c  #0000000a
    .end packed-switch
.end method

.method public keyReleased(Ljava/awt/event/KeyEvent;)V
    .registers 2

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    return-void
.end method

.method public keyTyped(Ljava/awt/event/KeyEvent;)V
    .registers 2

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    return-void
.end method

.method public mouseClicked(Ljava/awt/event/MouseEvent;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->checkPopup(Ljava/awt/event/MouseEvent;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->requestFocus()V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->getCaret()Ljavax/swing/text/Caret;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljavax/swing/text/Caret;->setVisible(Z)V

    return-void
.end method

.method public mouseEntered(Ljava/awt/event/MouseEvent;)V
    .registers 2

    return-void
.end method

.method public mouseExited(Ljava/awt/event/MouseEvent;)V
    .registers 2

    return-void
.end method

.method public mousePressed(Ljava/awt/event/MouseEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->checkPopup(Ljava/awt/event/MouseEvent;)V

    return-void
.end method

.method public mouseReleased(Ljava/awt/event/MouseEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->checkPopup(Ljava/awt/event/MouseEvent;)V

    return-void
.end method

.method public popupMenuCanceled(Ljavax/swing/event/PopupMenuEvent;)V
    .registers 2

    return-void
.end method

.method public popupMenuWillBecomeInvisible(Ljavax/swing/event/PopupMenuEvent;)V
    .registers 2

    return-void
.end method

.method public popupMenuWillBecomeVisible(Ljavax/swing/event/PopupMenuEvent;)V
    .registers 2

    return-void
.end method

.method public select(I)V
    .registers 6

    if-ltz p1, :cond_4a

    :try_start_2
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->getLineOfOffset(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->modelToView(I)Ljava/awt/Rectangle;

    move-result-object v1

    if-nez v1, :cond_10

    invoke-virtual {p0, p1, p1}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->select(II)V
    :try_end_f
    .catch Ljavax/swing/text/BadLocationException; {:try_start_2 .. :try_end_f} :catch_47

    goto :goto_4a

    :cond_10
    add-int/lit8 v0, v0, 0x1

    :try_start_12
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->getLineStartOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->modelToView(I)Ljava/awt/Rectangle;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_1d
    .catch Ljavax/swing/text/BadLocationException; {:try_start_12 .. :try_end_1a} :catch_47

    if-eqz v0, :cond_1d

    move-object v1, v0

    :catch_1d
    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->getParent()Ljava/awt/Container;

    move-result-object v0

    check-cast v0, Ljavax/swing/JViewport;

    invoke-virtual {v0}, Ljavax/swing/JViewport;->getViewRect()Ljava/awt/Rectangle;

    move-result-object v0

    iget v2, v0, Ljava/awt/Rectangle;->y:I

    iget v3, v0, Ljava/awt/Rectangle;->height:I

    add-int/2addr v2, v3

    iget v3, v1, Ljava/awt/Rectangle;->y:I

    if-le v2, v3, :cond_34

    invoke-virtual {p0, p1, p1}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->select(II)V

    goto :goto_4a

    :cond_34
    iget v2, v1, Ljava/awt/Rectangle;->y:I

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    iget v3, v1, Ljava/awt/Rectangle;->height:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    iput v2, v1, Ljava/awt/Rectangle;->y:I

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->scrollRectToVisible(Ljava/awt/Rectangle;)V

    invoke-virtual {p0, p1, p1}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->select(II)V
    :try_end_46
    .catch Ljavax/swing/text/BadLocationException; {:try_start_1d .. :try_end_46} :catch_47

    goto :goto_4a

    :catch_47
    invoke-virtual {p0, p1, p1}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->select(II)V

    :cond_4a
    :goto_4a
    return-void
.end method
