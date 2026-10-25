.class public Lorg/mozilla/javascript/tools/debugger/SwingGui;
.super Ljavax/swing/JFrame;
.source "SwingGui.java"

# interfaces
.implements Lorg/mozilla/javascript/tools/debugger/GuiCallback;


# static fields
.field private static final serialVersionUID:J = -0x7208c10b13b21fc5L


# instance fields
.field private awtEventQueue:Ljava/awt/EventQueue;

.field private console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

.field private context:Lorg/mozilla/javascript/tools/debugger/ContextWindow;

.field private currentWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

.field private desk:Ljavax/swing/JDesktopPane;

.field dim:Lorg/mozilla/javascript/tools/debugger/Dim;

.field dlg:Ljavax/swing/JFileChooser;

.field private exitAction:Ljava/lang/Runnable;

.field private final fileWindows:Ljava/util/Map;

.field private menubar:Lorg/mozilla/javascript/tools/debugger/Menubar;

.field private split1:Ljavax/swing/JSplitPane;

.field private statusBar:Ljavax/swing/JLabel;

.field private toolBar:Ljavax/swing/JToolBar;

.field private final toplevels:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/Dim;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Ljj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toplevels:Ljava/util/Map;

    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    invoke-static {p2}, Ljj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->fileWindows:Ljava/util/Map;

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->init()V

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/tools/debugger/Dim;->setGuiCallback(Lorg/mozilla/javascript/tools/debugger/GuiCallback;)V

    return-void
.end method

.method static synthetic access$000(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->exit()V

    return-void
.end method

.method private chooseFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dlg:Ljavax/swing/JFileChooser;

    invoke-virtual {v0, p1}, Ljavax/swing/JFileChooser;->setDialogTitle(Ljava/lang/String;)V

    const-string/jumbo p1, "user.dir"

    invoke-static {p1}, Lorg/mozilla/javascript/SecurityUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_16

    :cond_15
    move-object v2, v1

    :goto_16
    if-eqz v2, :cond_1d

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dlg:Ljavax/swing/JFileChooser;

    invoke-virtual {v0, v2}, Ljavax/swing/JFileChooser;->setCurrentDirectory(Ljava/io/File;)V

    :cond_1d
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dlg:Ljavax/swing/JFileChooser;

    invoke-virtual {v0, p0}, Ljavax/swing/JFileChooser;->showOpenDialog(Ljava/awt/Component;)I

    move-result v0

    if-nez v0, :cond_48

    :try_start_25
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dlg:Ljavax/swing/JFileChooser;

    invoke-virtual {v0}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dlg:Ljavax/swing/JFileChooser;

    invoke-virtual {v2}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/System;->setProperties(Ljava/util/Properties;)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_47} :catch_48
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_47} :catch_48

    return-object v0

    :catch_48
    :cond_48
    return-object v1
.end method

.method private exit()V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->exitAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    :cond_7
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/debugger/Dim;->setReturnValue(I)V

    return-void
.end method

.method private getSelectedFrame()Ljavax/swing/JInternalFrame;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {v0}, Ljavax/swing/JDesktopPane;->getAllFrames()[Ljavax/swing/JInternalFrame;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_18

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljavax/swing/JInternalFrame;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_15

    aget-object v0, v0, v1

    return-object v0

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_18
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method static getShortName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_e

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    :cond_e
    if-ltz v0, :cond_1c

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1c

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1c
    return-object p0
.end method

.method private getWindowMenu()Ljavax/swing/JMenu;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->menubar:Lorg/mozilla/javascript/tools/debugger/Menubar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/debugger/Menubar;->getMenu(I)Ljavax/swing/JMenu;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .registers 10

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/Menubar;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/tools/debugger/Menubar;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->menubar:Lorg/mozilla/javascript/tools/debugger/Menubar;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    new-instance v0, Ljavax/swing/JToolBar;

    invoke-direct {v0}, Ljavax/swing/JToolBar;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toolBar:Ljavax/swing/JToolBar;

    const-string v0, "Break (Pause)"

    const-string v1, "Go (F5)"

    const-string v2, "Step Into (F11)"

    const-string v3, "Step Over (F7)"

    const-string v4, "Step Out (F8)"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljavax/swing/JButton;

    const-string v2, "Break"

    invoke-direct {v1, v2}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->menubar:Lorg/mozilla/javascript/tools/debugger/Menubar;

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setEnabled(Z)V

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    new-instance v4, Ljavax/swing/JButton;

    const-string v5, "Go"

    invoke-direct {v4, v5}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->menubar:Lorg/mozilla/javascript/tools/debugger/Menubar;

    invoke-virtual {v4, v5}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {v4, v3}, Ljavax/swing/JButton;->setEnabled(Z)V

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    new-instance v5, Ljavax/swing/JButton;

    const-string v6, "Step Into"

    invoke-direct {v5, v6}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->menubar:Lorg/mozilla/javascript/tools/debugger/Menubar;

    invoke-virtual {v5, v6}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {v5, v3}, Ljavax/swing/JButton;->setEnabled(Z)V

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    new-instance v6, Ljavax/swing/JButton;

    const-string v7, "Step Over"

    invoke-direct {v6, v7}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljavax/swing/JButton;->setEnabled(Z)V

    iget-object v7, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->menubar:Lorg/mozilla/javascript/tools/debugger/Menubar;

    invoke-virtual {v6, v7}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    const/4 v7, 0x3

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    new-instance v7, Ljavax/swing/JButton;

    const-string v8, "Step Out"

    invoke-direct {v7, v8}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljavax/swing/JButton;->setEnabled(Z)V

    iget-object v8, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->menubar:Lorg/mozilla/javascript/tools/debugger/Menubar;

    invoke-virtual {v7, v8}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    const/4 v8, 0x4

    aget-object v0, v0, v8

    invoke-virtual {v7, v0}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljavax/swing/JButton;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/swing/JButton;->setPreferredSize(Ljava/awt/Dimension;)V

    invoke-virtual {v1, v0}, Ljavax/swing/JButton;->setMinimumSize(Ljava/awt/Dimension;)V

    invoke-virtual {v1, v0}, Ljavax/swing/JButton;->setMaximumSize(Ljava/awt/Dimension;)V

    invoke-virtual {v1, v0}, Ljavax/swing/JButton;->setSize(Ljava/awt/Dimension;)V

    invoke-virtual {v4, v0}, Ljavax/swing/JButton;->setPreferredSize(Ljava/awt/Dimension;)V

    invoke-virtual {v4, v0}, Ljavax/swing/JButton;->setMinimumSize(Ljava/awt/Dimension;)V

    invoke-virtual {v4, v0}, Ljavax/swing/JButton;->setMaximumSize(Ljava/awt/Dimension;)V

    invoke-virtual {v5, v0}, Ljavax/swing/JButton;->setPreferredSize(Ljava/awt/Dimension;)V

    invoke-virtual {v5, v0}, Ljavax/swing/JButton;->setMinimumSize(Ljava/awt/Dimension;)V

    invoke-virtual {v5, v0}, Ljavax/swing/JButton;->setMaximumSize(Ljava/awt/Dimension;)V

    invoke-virtual {v6, v0}, Ljavax/swing/JButton;->setPreferredSize(Ljava/awt/Dimension;)V

    invoke-virtual {v6, v0}, Ljavax/swing/JButton;->setMinimumSize(Ljava/awt/Dimension;)V

    invoke-virtual {v6, v0}, Ljavax/swing/JButton;->setMaximumSize(Ljava/awt/Dimension;)V

    invoke-virtual {v7, v0}, Ljavax/swing/JButton;->setPreferredSize(Ljava/awt/Dimension;)V

    invoke-virtual {v7, v0}, Ljavax/swing/JButton;->setMinimumSize(Ljava/awt/Dimension;)V

    invoke-virtual {v7, v0}, Ljavax/swing/JButton;->setMaximumSize(Ljava/awt/Dimension;)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toolBar:Ljavax/swing/JToolBar;

    invoke-virtual {v0, v1}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toolBar:Ljavax/swing/JToolBar;

    invoke-virtual {v0, v4}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toolBar:Ljavax/swing/JToolBar;

    invoke-virtual {v0, v5}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toolBar:Ljavax/swing/JToolBar;

    invoke-virtual {v0, v6}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toolBar:Ljavax/swing/JToolBar;

    invoke-virtual {v0, v7}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    iget-object v4, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toolBar:Ljavax/swing/JToolBar;

    const-string v5, "North"

    invoke-virtual {v1, v4, v5}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    const-string v4, "Center"

    invoke-virtual {v1, v0, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    new-instance v1, Ljavax/swing/JDesktopPane;

    invoke-direct {v1}, Ljavax/swing/JDesktopPane;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    new-instance v5, Ljava/awt/Dimension;

    const/16 v6, 0x258

    const/16 v7, 0x12c

    invoke-direct {v5, v6, v7}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v5}, Ljavax/swing/JDesktopPane;->setPreferredSize(Ljava/awt/Dimension;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    new-instance v5, Ljava/awt/Dimension;

    const/16 v7, 0x96

    const/16 v8, 0x32

    invoke-direct {v5, v7, v8}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v5}, Ljavax/swing/JDesktopPane;->setMinimumSize(Ljava/awt/Dimension;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    new-instance v5, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    const-string v7, "JavaScript Console"

    invoke-direct {v5, v7}, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    invoke-virtual {v1, v5}, Ljavax/swing/JDesktopPane;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v1, Lorg/mozilla/javascript/tools/debugger/ContextWindow;

    invoke-direct {v1, p0}, Lorg/mozilla/javascript/tools/debugger/ContextWindow;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V

    iput-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->context:Lorg/mozilla/javascript/tools/debugger/ContextWindow;

    new-instance v5, Ljava/awt/Dimension;

    const/16 v7, 0x78

    invoke-direct {v5, v6, v7}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->setPreferredSize(Ljava/awt/Dimension;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->context:Lorg/mozilla/javascript/tools/debugger/ContextWindow;

    new-instance v5, Ljava/awt/Dimension;

    invoke-direct {v5, v8, v8}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->setMinimumSize(Ljava/awt/Dimension;)V

    new-instance v1, Ljavax/swing/JSplitPane;

    iget-object v5, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    iget-object v6, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->context:Lorg/mozilla/javascript/tools/debugger/ContextWindow;

    invoke-direct {v1, v3, v5, v6}, Ljavax/swing/JSplitPane;-><init>(ILjava/awt/Component;Ljava/awt/Component;)V

    iput-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->split1:Ljavax/swing/JSplitPane;

    invoke-virtual {v1, v2}, Ljavax/swing/JSplitPane;->setOneTouchExpandable(Z)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->split1:Ljavax/swing/JSplitPane;

    const-wide v2, 0x3fe51eb851eb851fL  # 0.66

    invoke-static {v1, v2, v3}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->setResizeWeight(Ljavax/swing/JSplitPane;D)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->split1:Ljavax/swing/JSplitPane;

    invoke-virtual {v0, v1, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    new-instance v1, Ljavax/swing/JLabel;

    invoke-direct {v1}, Ljavax/swing/JLabel;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->statusBar:Ljavax/swing/JLabel;

    const-string v2, "Thread: "

    invoke-virtual {v1, v2}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->statusBar:Ljavax/swing/JLabel;

    const-string v2, "South"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    new-instance v0, Ljavax/swing/JFileChooser;

    invoke-direct {v0}, Ljavax/swing/JFileChooser;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dlg:Ljavax/swing/JFileChooser;

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/SwingGui$1;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui$1;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dlg:Ljavax/swing/JFileChooser;

    invoke-virtual {v1, v0}, Ljavax/swing/JFileChooser;->addChoosableFileFilter(Ljavax/swing/filechooser/FileFilter;)V

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/SwingGui$2;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui$2;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->addWindowListener(Ljava/awt/event/WindowListener;)V

    return-void
.end method

.method private readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_19

    :try_start_5
    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->readReader(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    :try_start_9
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_19

    goto :goto_34

    :catchall_d
    move-exception v1

    :try_start_e
    throw v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v2

    :try_start_10
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_18

    :catchall_14
    move-exception v0

    :try_start_15
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw v2
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_19} :catch_19

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lorg/mozilla/javascript/tools/debugger/MessageDialogWrapper;->showMessageDialog(Ljava/awt/Component;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x0

    :goto_34
    return-object v1
.end method

.method private setFilePosition(Lorg/mozilla/javascript/tools/debugger/FileWindow;I)V
    .registers 6

    iget-object v0, p1, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_11

    :try_start_6
    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setPosition(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->currentWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    if-ne p2, p1, :cond_24

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->currentWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    goto :goto_24

    :cond_11
    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljavax/swing/JTextArea;->getLineStartOffset(I)I

    move-result p2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->currentWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    if-eqz v0, :cond_1f

    if-eq v0, p1, :cond_1f

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setPosition(I)V

    :cond_1f
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setPosition(I)V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->currentWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;
    :try_end_24
    .catch Ljavax/swing/text/BadLocationException; {:try_start_6 .. :try_end_24} :catch_24

    :catch_24
    :cond_24
    :goto_24
    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->isIcon()Z

    move-result p2

    if-eqz p2, :cond_33

    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {p2}, Ljavax/swing/JDesktopPane;->getDesktopManager()Ljavax/swing/DesktopManager;

    move-result-object p2

    invoke-interface {p2, p1}, Ljavax/swing/DesktopManager;->deiconifyFrame(Ljavax/swing/JInternalFrame;)V

    :cond_33
    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {p2}, Ljavax/swing/JDesktopPane;->getDesktopManager()Ljavax/swing/DesktopManager;

    move-result-object p2

    invoke-interface {p2, p1}, Ljavax/swing/DesktopManager;->activateFrame(Ljavax/swing/JInternalFrame;)V

    :try_start_3c
    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->show()V

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->toFront()V

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setSelected(Z)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_45} :catch_45

    :catch_45
    return-void
.end method

.method static setResizeWeight(Ljavax/swing/JSplitPane;D)V
    .registers 9

    :try_start_0
    const-class v0, Ljavax/swing/JSplitPane;

    const-string/jumbo v1, "setResizeWeight"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, p1, p2}, Ljava/lang/Double;-><init>(D)V

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1d} :catch_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1d} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

.method private updateEnabled(Z)V
    .registers 7

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getJMenuBar()Ljavax/swing/JMenuBar;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/tools/debugger/Menubar;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/Menubar;->updateEnabled(Z)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toolBar:Ljavax/swing/JToolBar;

    invoke-virtual {v0}, Ljavax/swing/JToolBar;->getComponentCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_25

    if-nez v2, :cond_18

    xor-int/lit8 v3, p1, 0x1

    goto :goto_19

    :cond_18
    move v3, p1

    :goto_19
    iget-object v4, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toolBar:Ljavax/swing/JToolBar;

    invoke-virtual {v4, v2}, Ljavax/swing/JToolBar;->getComponent(I)Ljava/awt/Component;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/awt/Component;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_25
    if-eqz p1, :cond_3f

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toolBar:Ljavax/swing/JToolBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljavax/swing/JToolBar;->setEnabled(Z)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getExtendedState()I

    move-result p1

    if-ne p1, v0, :cond_36

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->setExtendedState(I)V

    :cond_36
    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toFront()V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->context:Lorg/mozilla/javascript/tools/debugger/ContextWindow;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->setEnabled(Z)V

    goto :goto_4c

    :cond_3f
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->currentWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    if-eqz p1, :cond_47

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setPosition(I)V

    :cond_47
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->context:Lorg/mozilla/javascript/tools/debugger/ContextWindow;

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->setEnabled(Z)V

    :goto_4c
    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .registers 21

    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    if-nez v2, :cond_226

    const-string v2, "Copy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_226

    const-string v5, "Paste"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    goto/16 :goto_226

    :cond_24
    const-string v6, "Step Over"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    const/4 v3, 0x0

    goto/16 :goto_238

    :cond_2f
    const-string v6, "Step Into"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    const/4 v3, 0x1

    goto/16 :goto_238

    :cond_3a
    const-string v6, "Step Out"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    goto/16 :goto_238

    :cond_44
    const-string v6, "Go"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    const/4 v3, 0x3

    goto/16 :goto_238

    :cond_4f
    const-string v6, "Break"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    iget-object v0, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/Dim;->setBreak()V

    goto/16 :goto_237

    :cond_5e
    const-string v6, "Exit"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->exit()V

    goto/16 :goto_237

    :cond_6b
    const-string v6, "Open"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_94

    const-string v0, "Select a file to compile"

    invoke-direct {v7, v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->chooseFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_237

    invoke-direct {v7, v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_237

    new-instance v2, Lorg/mozilla/javascript/tools/debugger/RunProxy;

    invoke-direct {v2, v7, v4}, Lorg/mozilla/javascript/tools/debugger/RunProxy;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;I)V

    iput-object v0, v2, Lorg/mozilla/javascript/tools/debugger/RunProxy;->fileName:Ljava/lang/String;

    iput-object v1, v2, Lorg/mozilla/javascript/tools/debugger/RunProxy;->text:Ljava/lang/String;

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_237

    :cond_94
    const-string v6, "Load"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bd

    const-string v0, "Select a file to execute"

    invoke-direct {v7, v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->chooseFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_237

    invoke-direct {v7, v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_237

    new-instance v2, Lorg/mozilla/javascript/tools/debugger/RunProxy;

    invoke-direct {v2, v7, v3}, Lorg/mozilla/javascript/tools/debugger/RunProxy;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;I)V

    iput-object v0, v2, Lorg/mozilla/javascript/tools/debugger/RunProxy;->fileName:Ljava/lang/String;

    iput-object v1, v2, Lorg/mozilla/javascript/tools/debugger/RunProxy;->text:Ljava/lang/String;

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_237

    :cond_bd
    const-string v3, "More Windows..."

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d5

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/MoreWindows;

    iget-object v1, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->fileWindows:Ljava/util/Map;

    const-string v2, "Window"

    const-string v3, "Files"

    invoke-direct {v0, v7, v1, v2, v3}, Lorg/mozilla/javascript/tools/debugger/MoreWindows;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/tools/debugger/MoreWindows;->showDialog(Ljava/awt/Component;)Ljava/lang/String;

    goto/16 :goto_237

    :cond_d5
    const-string v3, "Console"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_109

    iget-object v0, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->isIcon()Z

    move-result v0

    if-eqz v0, :cond_f0

    iget-object v0, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {v0}, Ljavax/swing/JDesktopPane;->getDesktopManager()Ljavax/swing/DesktopManager;

    move-result-object v0

    iget-object v1, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    invoke-interface {v0, v1}, Ljavax/swing/DesktopManager;->deiconifyFrame(Ljavax/swing/JInternalFrame;)V

    :cond_f0
    iget-object v0, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->show()V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {v0}, Ljavax/swing/JDesktopPane;->getDesktopManager()Ljavax/swing/DesktopManager;

    move-result-object v0

    iget-object v1, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    invoke-interface {v0, v1}, Ljavax/swing/DesktopManager;->activateFrame(Ljavax/swing/JInternalFrame;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    iget-object v0, v0, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->requestFocus()V

    goto/16 :goto_237

    :cond_109
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_111

    goto/16 :goto_237

    :cond_111
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_119

    goto/16 :goto_237

    :cond_119
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    goto/16 :goto_237

    :cond_121
    const-string v1, "Go to function..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_137

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/FindFunction;

    const-string v1, "Go to function"

    const-string v2, "Function"

    invoke-direct {v0, v7, v1, v2}, Lorg/mozilla/javascript/tools/debugger/FindFunction;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/tools/debugger/FindFunction;->showDialog(Ljava/awt/Component;)Ljava/lang/String;

    goto/16 :goto_237

    :cond_137
    const-string v1, "Go to line..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_167

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "Line number"

    const-string v2, "Go to line..."

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Ljavax/swing/JOptionPane;->showInputDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;ILjavax/swing/Icon;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_166

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_15c

    goto :goto_166

    :cond_15c
    :try_start_15c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v7, v1, v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->showFileWindow(Ljava/lang/String;I)V
    :try_end_164
    .catch Ljava/lang/NumberFormatException; {:try_start_15c .. :try_end_164} :catch_237

    goto/16 :goto_237

    :cond_166
    :goto_166
    return-void

    :cond_167
    const-string v1, "Tile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cc

    iget-object v0, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {v0}, Ljavax/swing/JDesktopPane;->getAllFrames()[Ljavax/swing/JInternalFrame;

    move-result-object v0

    array-length v1, v0

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int v3, v2, v2

    if-ge v3, v1, :cond_18e

    add-int/lit8 v3, v2, 0x1

    mul-int v4, v2, v3

    if-ge v4, v1, :cond_188

    move v2, v3

    goto :goto_18f

    :cond_188
    move/from16 v18, v3

    move v3, v2

    move/from16 v2, v18

    goto :goto_18f

    :cond_18e
    move v3, v2

    :goto_18f
    iget-object v1, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {v1}, Ljavax/swing/JDesktopPane;->getSize()Ljava/awt/Dimension;

    move-result-object v1

    iget v4, v1, Ljava/awt/Dimension;->width:I

    div-int/2addr v4, v2

    iget v1, v1, Ljava/awt/Dimension;->height:I

    div-int/2addr v1, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_19d
    if-ge v5, v3, :cond_237

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_1a2
    if-ge v15, v2, :cond_1c8

    mul-int v10, v5, v2

    add-int/2addr v10, v15

    array-length v11, v0

    if-lt v10, v11, :cond_1ab

    goto :goto_1c8

    :cond_1ab
    aget-object v11, v0, v10

    :try_start_1ad
    invoke-virtual {v11, v9}, Ljavax/swing/JInternalFrame;->setIcon(Z)V

    invoke-virtual {v11, v9}, Ljavax/swing/JInternalFrame;->setMaximum(Z)V
    :try_end_1b3
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1b3} :catch_1b3

    :catch_1b3
    iget-object v10, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {v10}, Ljavax/swing/JDesktopPane;->getDesktopManager()Ljavax/swing/DesktopManager;

    move-result-object v10

    move/from16 v12, v16

    move v13, v6

    move v14, v4

    move/from16 v17, v15

    move v15, v1

    invoke-interface/range {v10 .. v15}, Ljavax/swing/DesktopManager;->setBoundsForFrame(Ljavax/swing/JComponent;IIII)V

    add-int v16, v16, v4

    add-int/lit8 v15, v17, 0x1

    goto :goto_1a2

    :cond_1c8
    :goto_1c8
    add-int/2addr v6, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_19d

    :cond_1cc
    const-string v1, "Cascade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20d

    iget-object v0, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {v0}, Ljavax/swing/JDesktopPane;->getAllFrames()[Ljavax/swing/JInternalFrame;

    move-result-object v0

    array-length v1, v0

    iget-object v2, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {v2}, Ljavax/swing/JDesktopPane;->getHeight()I

    move-result v2

    div-int/2addr v2, v1

    const/16 v3, 0x1e

    if-le v2, v3, :cond_1e8

    const/16 v2, 0x1e

    :cond_1e8
    sub-int/2addr v1, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1eb
    if-ltz v1, :cond_237

    aget-object v11, v0, v1

    :try_start_1ef
    invoke-virtual {v11, v9}, Ljavax/swing/JInternalFrame;->setIcon(Z)V

    invoke-virtual {v11, v9}, Ljavax/swing/JInternalFrame;->setMaximum(Z)V
    :try_end_1f5
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_1f5} :catch_1f5

    :catch_1f5
    invoke-virtual {v11}, Ljavax/swing/JInternalFrame;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v5

    iget v14, v5, Ljava/awt/Dimension;->width:I

    iget v15, v5, Ljava/awt/Dimension;->height:I

    iget-object v5, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {v5}, Ljavax/swing/JDesktopPane;->getDesktopManager()Ljavax/swing/DesktopManager;

    move-result-object v10

    move v12, v3

    move v13, v4

    invoke-interface/range {v10 .. v15}, Ljavax/swing/DesktopManager;->setBoundsForFrame(Ljavax/swing/JComponent;IIII)V

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v3, v2

    add-int/2addr v4, v2

    goto :goto_1eb

    :cond_20d
    invoke-virtual {v7, v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getFileWindow(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/FileWindow;

    move-result-object v0

    if-eqz v0, :cond_237

    :try_start_213
    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->isIcon()Z

    move-result v1

    if-eqz v1, :cond_21c

    invoke-virtual {v0, v9}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setIcon(Z)V

    :cond_21c
    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setVisible(Z)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->moveToFront()V

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setSelected(Z)V
    :try_end_225
    .catch Ljava/lang/Exception; {:try_start_213 .. :try_end_225} :catch_237

    goto :goto_237

    :cond_226
    :goto_226
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getSelectedFrame()Ljavax/swing/JInternalFrame;

    move-result-object v0

    if-eqz v0, :cond_237

    instance-of v1, v0, Ljava/awt/event/ActionListener;

    if-eqz v1, :cond_237

    check-cast v0, Ljava/awt/event/ActionListener;

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/awt/event/ActionListener;->actionPerformed(Ljava/awt/event/ActionEvent;)V

    :catch_237
    :cond_237
    :goto_237
    const/4 v3, -0x1

    :goto_238
    if-eq v3, v8, :cond_242

    invoke-direct {v7, v9}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->updateEnabled(Z)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/tools/debugger/Dim;->setReturnValue(I)V

    :cond_242
    return-void
.end method

.method addTopLevel(Ljava/lang/String;Ljavax/swing/JFrame;)V
    .registers 4

    if-eq p2, p0, :cond_7

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toplevels:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method protected createFileWindow(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;I)V
    .registers 7

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->url()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/tools/debugger/FileWindow;

    invoke-direct {v1, p0, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->fileWindows:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, -0x1

    if-eq p2, p1, :cond_32

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->currentWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    if-eqz v2, :cond_18

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setPosition(I)V

    :cond_18
    :try_start_18
    iget-object v2, v1, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->getLineStartOffset(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setPosition(I)V
    :try_end_23
    .catch Ljavax/swing/text/BadLocationException; {:try_start_18 .. :try_end_23} :catch_24

    goto :goto_32

    :catch_24
    :try_start_24
    iget-object v2, v1, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->getLineStartOffset(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setPosition(I)V
    :try_end_2e
    .catch Ljavax/swing/text/BadLocationException; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_32

    :catch_2f
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setPosition(I)V

    :cond_32
    :goto_32
    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {v2, v1}, Ljavax/swing/JDesktopPane;->add(Ljava/awt/Component;)Ljava/awt/Component;

    if-eq p2, p1, :cond_3b

    iput-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->currentWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    :cond_3b
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->menubar:Lorg/mozilla/javascript/tools/debugger/Menubar;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/debugger/Menubar;->addFile(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setVisible(Z)V

    :try_start_44
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setMaximum(Z)V

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setSelected(Z)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->moveToFront()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4d} :catch_4d

    :catch_4d
    return-void
.end method

.method public dispatchNextGuiEvent()V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->awtEventQueue:Ljava/awt/EventQueue;

    if-nez v0, :cond_e

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Toolkit;->getSystemEventQueue()Ljava/awt/EventQueue;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->awtEventQueue:Ljava/awt/EventQueue;

    :cond_e
    invoke-virtual {v0}, Ljava/awt/EventQueue;->getNextEvent()Ljava/awt/AWTEvent;

    move-result-object v0

    instance-of v1, v0, Ljava/awt/ActiveEvent;

    if-eqz v1, :cond_1c

    check-cast v0, Ljava/awt/ActiveEvent;

    invoke-interface {v0}, Ljava/awt/ActiveEvent;->dispatch()V

    goto :goto_33

    :cond_1c
    invoke-virtual {v0}, Ljava/awt/AWTEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/awt/Component;

    if-eqz v2, :cond_2a

    check-cast v1, Ljava/awt/Component;

    invoke-virtual {v1, v0}, Ljava/awt/Component;->dispatchEvent(Ljava/awt/AWTEvent;)V

    goto :goto_33

    :cond_2a
    instance-of v2, v1, Ljava/awt/MenuComponent;

    if-eqz v2, :cond_33

    check-cast v1, Ljava/awt/MenuComponent;

    invoke-virtual {v1, v0}, Ljava/awt/MenuComponent;->dispatchEvent(Ljava/awt/AWTEvent;)V

    :cond_33
    :goto_33
    return-void
.end method

.method public enterInterrupt(Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Ljavax/swing/SwingUtilities;->isEventDispatchThread()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->enterInterruptImpl(Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_a
    new-instance v0, Lorg/mozilla/javascript/tools/debugger/RunProxy;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/mozilla/javascript/tools/debugger/RunProxy;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;I)V

    iput-object p1, v0, Lorg/mozilla/javascript/tools/debugger/RunProxy;->lastFrame:Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;

    iput-object p2, v0, Lorg/mozilla/javascript/tools/debugger/RunProxy;->threadTitle:Ljava/lang/String;

    iput-object p3, v0, Lorg/mozilla/javascript/tools/debugger/RunProxy;->alertMessage:Ljava/lang/String;

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    :goto_19
    return-void
.end method

.method enterInterruptImpl(Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->statusBar:Ljavax/swing/JLabel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->showStopLine(Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_21

    const-string v0, "Exception in Script"

    invoke-static {p0, p3, v0, p2}, Lorg/mozilla/javascript/tools/debugger/MessageDialogWrapper;->showMessageDialog(Ljava/awt/Component;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_21
    const/4 p3, 0x1

    invoke-direct {p0, p3}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->updateEnabled(Z)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->contextData()Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    move-result-object p1

    iget-object p3, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->context:Lorg/mozilla/javascript/tools/debugger/ContextWindow;

    iget-object v0, p3, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->context:Ljavax/swing/JComboBox;

    iget-object v1, p3, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->toolTips:Ljava/util/List;

    invoke-virtual {p3}, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->disableUpdate()V

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->frameCount()I

    move-result p3

    invoke-virtual {v0}, Ljavax/swing/JComboBox;->removeAllItems()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    :goto_41
    if-ge v2, p3, :cond_ab

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->getFrame(I)Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->getLineNumber()I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_73

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x11

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_74

    :cond_73
    move-object v5, v4

    :goto_74
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\", line "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Ljavax/swing/JComboBox;->insertItemAt(Ljava/lang/Object;I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_ab
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->context:Lorg/mozilla/javascript/tools/debugger/ContextWindow;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->enableUpdate()V

    invoke-virtual {v0, p2}, Ljavax/swing/JComboBox;->setSelectedIndex(I)V

    new-instance p1, Ljava/awt/Dimension;

    const/16 p2, 0x32

    invoke-virtual {v0}, Ljavax/swing/JComboBox;->getMinimumSize()Ljava/awt/Dimension;

    move-result-object p3

    iget p3, p3, Ljava/awt/Dimension;->height:I

    invoke-direct {p1, p2, p3}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, p1}, Ljavax/swing/JComboBox;->setMinimumSize(Ljava/awt/Dimension;)V

    return-void
.end method

.method public getConsole()Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    return-object v0
.end method

.method getFileWindow(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/FileWindow;
    .registers 3

    if-eqz p1, :cond_14

    const-string v0, "<stdin>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_14

    :cond_b
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->fileWindows:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/tools/debugger/FileWindow;

    return-object p1

    :cond_14
    :goto_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMenubar()Lorg/mozilla/javascript/tools/debugger/Menubar;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->menubar:Lorg/mozilla/javascript/tools/debugger/Menubar;

    return-object v0
.end method

.method public isGuiEventThread()Z
    .registers 2

    invoke-static {}, Ljavax/swing/SwingUtilities;->isEventDispatchThread()Z

    move-result v0

    return v0
.end method

.method removeWindow(Lorg/mozilla/javascript/tools/debugger/FileWindow;)V
    .registers 16

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->fileWindows:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getWindowMenu()Ljavax/swing/JMenu;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/swing/JMenu;->getItemCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljavax/swing/JMenu;->getItem(I)Ljavax/swing/JMenuItem;

    move-result-object v3

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x5

    :goto_20
    if-ge v4, v1, :cond_a5

    invoke-virtual {v0, v4}, Ljavax/swing/JMenu;->getItem(I)Ljavax/swing/JMenuItem;

    move-result-object v5

    if-nez v5, :cond_2a

    goto/16 :goto_a1

    :cond_2a
    invoke-virtual {v5}, Ljavax/swing/JMenuItem;->getText()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a1

    invoke-virtual {v0, v5}, Ljavax/swing/JMenu;->remove(Ljavax/swing/JMenuItem;)V

    const/4 p1, 0x6

    if-ne v1, p1, :cond_4b

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Ljavax/swing/JMenu;->remove(I)V

    goto :goto_a5

    :cond_4b
    add-int/lit8 v6, v4, -0x4

    :goto_4d
    const-string v8, "More Windows..."

    if-ge v4, v2, :cond_8e

    invoke-virtual {v0, v4}, Ljavax/swing/JMenu;->getItem(I)Ljavax/swing/JMenuItem;

    move-result-object v9

    if-eqz v9, :cond_8b

    invoke-virtual {v9}, Ljavax/swing/JMenuItem;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_62

    goto :goto_8e

    :cond_62
    invoke-virtual {v10, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v12, v6, 0x30

    int-to-char v13, v12

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljavax/swing/JMenuItem;->setMnemonic(I)V

    add-int/lit8 v6, v6, 0x1

    :cond_8b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    :cond_8e
    :goto_8e
    sub-int/2addr v1, p1

    if-nez v1, :cond_a5

    if-eq v3, v5, :cond_a5

    invoke-virtual {v3}, Ljavax/swing/JMenuItem;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a5

    invoke-virtual {v0, v3}, Ljavax/swing/JMenu;->remove(Ljavax/swing/JMenuItem;)V

    goto :goto_a5

    :cond_a1
    :goto_a1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_20

    :cond_a5
    :goto_a5
    invoke-virtual {v0}, Ljavax/swing/JMenu;->revalidate()V

    return-void
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->exitAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setVisible(Z)V
    .registers 4

    invoke-super {p0, p1}, Ljavax/swing/JFrame;->setVisible(Z)V

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    iget-object p1, p1, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->requestFocus()V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->context:Lorg/mozilla/javascript/tools/debugger/ContextWindow;

    iget-object p1, p1, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->split:Ljavax/swing/JSplitPane;

    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    invoke-virtual {p1, v0, v1}, Ljavax/swing/JSplitPane;->setDividerLocation(D)V

    :try_start_15
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->setMaximum(Z)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->setSelected(Z)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->show()V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    iget-object p1, p1, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->requestFocus()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2c} :catch_2c

    :catch_2c
    :cond_2c
    return-void
.end method

.method protected showFileWindow(Ljava/lang/String;I)V
    .registers 6

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getFileWindow(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/FileWindow;

    move-result-object v0

    goto :goto_16

    :cond_7
    invoke-direct {p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getSelectedFrame()Ljavax/swing/JInternalFrame;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lorg/mozilla/javascript/tools/debugger/FileWindow;

    if-eqz v1, :cond_14

    check-cast v0, Lorg/mozilla/javascript/tools/debugger/FileWindow;

    goto :goto_16

    :cond_14
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->currentWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    :goto_16
    const/4 v1, -0x1

    if-nez v0, :cond_28

    if-eqz p1, :cond_28

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim;->sourceInfo(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->createFileWindow(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;I)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getFileWindow(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/FileWindow;

    move-result-object v0

    :cond_28
    if-nez v0, :cond_2b

    return-void

    :cond_2b
    const/4 p1, 0x1

    if-le p2, v1, :cond_4b

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->getPosition(I)I

    move-result v1

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->getPosition(I)I

    move-result p2

    sub-int/2addr p2, p1

    if-gtz v1, :cond_3c

    return-void

    :cond_3c
    iget-object v2, v0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->select(I)V

    iget-object v2, v0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->setCaretPosition(I)V

    iget-object v1, v0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-virtual {v1, p2}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->moveCaretPosition(I)V

    :cond_4b
    :try_start_4b
    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->isIcon()Z

    move-result p2

    if-eqz p2, :cond_55

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setIcon(Z)V

    :cond_55
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setVisible(Z)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->moveToFront()V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setSelected(Z)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->requestFocus()V

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->requestFocus()V

    iget-object p1, v0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->requestFocus()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_69} :catch_69

    :catch_69
    return-void
.end method

.method showStopLine(Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;)V
    .registers 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    const-string v1, "<stdin>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_21

    :cond_f
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->showFileWindow(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->getLineNumber()I

    move-result p1

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getFileWindow(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/FileWindow;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->setFilePosition(Lorg/mozilla/javascript/tools/debugger/FileWindow;I)V

    goto :goto_2e

    :cond_21
    :goto_21
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->show()V

    :cond_2e
    :goto_2e
    return-void
.end method

.method protected updateFileWindow(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;)Z
    .registers 3

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getFileWindow(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/FileWindow;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->updateText(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->show()V

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public updateSourceText(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;)V
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/RunProxy;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lorg/mozilla/javascript/tools/debugger/RunProxy;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;I)V

    iput-object p1, v0, Lorg/mozilla/javascript/tools/debugger/RunProxy;->sourceInfo:Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method
