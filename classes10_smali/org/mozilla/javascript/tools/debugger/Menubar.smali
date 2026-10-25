.class Lorg/mozilla/javascript/tools/debugger/Menubar;
.super Ljavax/swing/JMenuBar;
.source "SwingGui.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# static fields
.field private static final serialVersionUID:J = 0x2ca5af859e3599a5L


# instance fields
.field private breakOnEnter:Ljavax/swing/JCheckBoxMenuItem;

.field private breakOnExceptions:Ljavax/swing/JCheckBoxMenuItem;

.field private breakOnReturn:Ljavax/swing/JCheckBoxMenuItem;

.field private debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

.field private interruptOnlyItems:Ljava/util/List;

.field private runOnlyItems:Ljava/util/List;

.field private windowMenu:Ljavax/swing/JMenu;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V
    .registers 24

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljavax/swing/JMenuBar;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->interruptOnlyItems:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->runOnlyItems:Ljava/util/List;

    move-object/from16 v1, p1

    iput-object v1, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    const-string v1, "Open..."

    const-string v2, "Run..."

    const-string v3, ""

    const-string v4, "Exit"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "Open"

    const-string v5, "Load"

    filled-new-array {v2, v5, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v4, v3, [C

    fill-array-data v4, :array_21e

    new-array v5, v3, [I

    fill-array-data v5, :array_226

    const-string v6, "Cut"

    const-string v7, "Copy"

    const-string v8, "Paste"

    const-string v9, "Go to function..."

    const-string v10, "Go to line..."

    filled-new-array {v6, v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v8, v7, [C

    fill-array-data v8, :array_232

    new-array v9, v7, [I

    fill-array-data v9, :array_23c

    const-string v10, "Break"

    const-string v11, "Go"

    const-string v12, "Step Into"

    const-string v13, "Step Over"

    const-string v14, "Step Out"

    filled-new-array {v10, v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v10

    new-array v11, v7, [C

    fill-array-data v11, :array_24a

    const-string v12, "Metal"

    const-string v13, "Windows"

    const-string v14, "Motif"

    filled-new-array {v12, v13, v14}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    new-array v14, v13, [C

    fill-array-data v14, :array_254

    const/4 v15, 0x7

    new-array v15, v15, [I

    fill-array-data v15, :array_25c

    new-instance v13, Ljavax/swing/JMenu;

    const-string v7, "File"

    invoke-direct {v13, v7}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x46

    invoke-virtual {v13, v7}, Ljavax/swing/JMenu;->setMnemonic(C)V

    new-instance v7, Ljavax/swing/JMenu;

    const-string v3, "Edit"

    invoke-direct {v7, v3}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x45

    invoke-virtual {v7, v3}, Ljavax/swing/JMenu;->setMnemonic(C)V

    new-instance v3, Ljavax/swing/JMenu;

    move-object/from16 v17, v15

    const-string v15, "Platform"

    invoke-direct {v3, v15}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v15, 0x50

    invoke-virtual {v3, v15}, Ljavax/swing/JMenu;->setMnemonic(C)V

    new-instance v15, Ljavax/swing/JMenu;

    move-object/from16 v18, v11

    const-string v11, "Debug"

    invoke-direct {v15, v11}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x44

    invoke-virtual {v15, v11}, Ljavax/swing/JMenu;->setMnemonic(C)V

    new-instance v11, Ljavax/swing/JMenu;

    move-object/from16 v19, v15

    const-string v15, "Window"

    invoke-direct {v11, v15}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    iput-object v11, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->windowMenu:Ljavax/swing/JMenu;

    const/16 v15, 0x57

    invoke-virtual {v11, v15}, Ljavax/swing/JMenu;->setMnemonic(C)V

    const/4 v15, 0x0

    :goto_c5
    const/4 v11, 0x4

    if-ge v15, v11, :cond_105

    aget-object v16, v1, v15

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_d8

    invoke-virtual {v13}, Ljavax/swing/JMenu;->addSeparator()V

    move-object/from16 v21, v1

    move-object/from16 v20, v10

    goto :goto_fe

    :cond_d8
    new-instance v11, Ljavax/swing/JMenuItem;

    move-object/from16 v20, v10

    aget-object v10, v1, v15

    move-object/from16 v21, v1

    aget-char v1, v4, v15

    invoke-direct {v11, v10, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;I)V

    aget-object v1, v2, v15

    invoke-virtual {v11, v1}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {v13, v11}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    aget v1, v5, v15

    if-eqz v1, :cond_fe

    aget v1, v5, v15

    const/4 v10, 0x2

    invoke-static {v1, v10}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljavax/swing/JMenuItem;->setAccelerator(Ljavax/swing/KeyStroke;)V

    :cond_fe
    :goto_fe
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, v20

    move-object/from16 v1, v21

    goto :goto_c5

    :cond_105
    move-object/from16 v20, v10

    const/4 v1, 0x0

    :goto_108
    const/4 v2, 0x5

    if-ge v1, v2, :cond_12d

    new-instance v2, Ljavax/swing/JMenuItem;

    aget-object v4, v6, v1

    aget-char v5, v8, v1

    invoke-direct {v2, v4, v5}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {v7, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    aget v4, v9, v1

    if-eqz v4, :cond_129

    aget v4, v9, v1

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/swing/JMenuItem;->setAccelerator(Ljavax/swing/KeyStroke;)V

    goto :goto_12a

    :cond_129
    const/4 v5, 0x2

    :goto_12a
    add-int/lit8 v1, v1, 0x1

    goto :goto_108

    :cond_12d
    const/4 v1, 0x0

    const/4 v2, 0x3

    :goto_12f
    if-ge v1, v2, :cond_143

    new-instance v4, Ljavax/swing/JMenuItem;

    aget-object v5, v12, v1

    aget-char v6, v14, v1

    invoke-direct {v4, v5, v6}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {v3, v4}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12f

    :cond_143
    const/4 v1, 0x0

    const/4 v2, 0x5

    :goto_145
    if-ge v1, v2, :cond_178

    new-instance v3, Ljavax/swing/JMenuItem;

    aget-object v4, v20, v1

    aget-char v5, v18, v1

    invoke-direct {v3, v4, v5}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    aget v4, v17, v1

    if-eqz v4, :cond_161

    aget v4, v17, v1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/swing/JMenuItem;->setAccelerator(Ljavax/swing/KeyStroke;)V

    :cond_161
    if-eqz v1, :cond_169

    iget-object v4, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->interruptOnlyItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16e

    :cond_169
    iget-object v4, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->runOnlyItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_16e
    move-object/from16 v4, v19

    invoke-virtual {v4, v3}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v19, v4

    goto :goto_145

    :cond_178
    move-object/from16 v4, v19

    new-instance v1, Ljavax/swing/JCheckBoxMenuItem;

    const-string v2, "Break on Exceptions"

    invoke-direct {v1, v2}, Ljavax/swing/JCheckBoxMenuItem;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->breakOnExceptions:Ljavax/swing/JCheckBoxMenuItem;

    const/16 v2, 0x58

    invoke-virtual {v1, v2}, Ljavax/swing/JCheckBoxMenuItem;->setMnemonic(C)V

    iget-object v1, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->breakOnExceptions:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {v1, v0}, Ljavax/swing/JCheckBoxMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v1, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->breakOnExceptions:Ljavax/swing/JCheckBoxMenuItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V

    iget-object v1, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->breakOnExceptions:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {v4, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    new-instance v1, Ljavax/swing/JCheckBoxMenuItem;

    const-string v3, "Break on Function Enter"

    invoke-direct {v1, v3}, Ljavax/swing/JCheckBoxMenuItem;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->breakOnEnter:Ljavax/swing/JCheckBoxMenuItem;

    const/16 v3, 0x45

    invoke-virtual {v1, v3}, Ljavax/swing/JCheckBoxMenuItem;->setMnemonic(C)V

    iget-object v1, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->breakOnEnter:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {v1, v0}, Ljavax/swing/JCheckBoxMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v1, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->breakOnEnter:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {v1, v2}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V

    iget-object v1, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->breakOnEnter:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {v4, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    new-instance v1, Ljavax/swing/JCheckBoxMenuItem;

    const-string v2, "Break on Function Return"

    invoke-direct {v1, v2}, Ljavax/swing/JCheckBoxMenuItem;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->breakOnReturn:Ljavax/swing/JCheckBoxMenuItem;

    const/16 v2, 0x52

    invoke-virtual {v1, v2}, Ljavax/swing/JCheckBoxMenuItem;->setMnemonic(C)V

    iget-object v1, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->breakOnReturn:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {v1, v0}, Ljavax/swing/JCheckBoxMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v1, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->breakOnReturn:Ljavax/swing/JCheckBoxMenuItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V

    iget-object v1, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->breakOnReturn:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {v4, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/tools/debugger/Menubar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/tools/debugger/Menubar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/tools/debugger/Menubar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    iget-object v1, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->windowMenu:Ljavax/swing/JMenu;

    new-instance v2, Ljavax/swing/JMenuItem;

    const/16 v3, 0x41

    const-string v4, "Cascade"

    invoke-direct {v2, v4, v3}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {v2, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v1, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->windowMenu:Ljavax/swing/JMenu;

    new-instance v2, Ljavax/swing/JMenuItem;

    const/16 v3, 0x54

    const-string v4, "Tile"

    invoke-direct {v2, v4, v3}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {v2, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v1, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->windowMenu:Ljavax/swing/JMenu;

    invoke-virtual {v1}, Ljavax/swing/JMenu;->addSeparator()V

    iget-object v1, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->windowMenu:Ljavax/swing/JMenu;

    new-instance v2, Ljavax/swing/JMenuItem;

    const/16 v3, 0x43

    const-string v4, "Console"

    invoke-direct {v2, v4, v3}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {v2, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v1, v0, Lorg/mozilla/javascript/tools/debugger/Menubar;->windowMenu:Ljavax/swing/JMenu;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/debugger/Menubar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/debugger/Menubar;->updateEnabled(Z)V

    return-void

    :array_21e
    .array-data 2
        0x30s
        0x4es
        0x0s
        0x58s
    .end array-data

    :array_226
    .array-data 4
        0x4f
        0x4e
        0x0
        0x51
    .end array-data

    :array_232
    .array-data 2
        0x54s
        0x43s
        0x50s
        0x46s
        0x4cs
    .end array-data

    nop

    :array_23c
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x4c
    .end array-data

    :array_24a
    .array-data 2
        0x42s
        0x47s
        0x49s
        0x4fs
        0x54s
    .end array-data

    nop

    :array_254
    .array-data 2
        0x4ds
        0x57s
        0x46s
    .end array-data

    nop

    :array_25c
    .array-data 4
        0x13
        0x74
        0x7a
        0x76
        0x77
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .registers 4

    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Metal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string p1, "javax.swing.plaf.metal.MetalLookAndFeel"

    goto :goto_24

    :cond_f
    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string p1, "com.sun.java.swing.plaf.windows.WindowsLookAndFeel"

    goto :goto_24

    :cond_1a
    const-string v1, "Motif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string p1, "com.sun.java.swing.plaf.motif.MotifLookAndFeel"

    :goto_24
    :try_start_24
    invoke-static {p1}, Ljavax/swing/UIManager;->setLookAndFeel(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    invoke-static {p1}, Ljavax/swing/SwingUtilities;->updateComponentTreeUI(Ljava/awt/Component;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    iget-object p1, p1, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dlg:Ljavax/swing/JFileChooser;

    invoke-static {p1}, Ljavax/swing/SwingUtilities;->updateComponentTreeUI(Ljava/awt/Component;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_33

    :catch_33
    return-void

    :cond_34
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->breakOnExceptions:Ljavax/swing/JCheckBoxMenuItem;

    if-ne v0, v1, :cond_48

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    iget-object p1, p1, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v1}, Ljavax/swing/JCheckBoxMenuItem;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/debugger/Dim;->setBreakOnExceptions(Z)V

    goto :goto_6d

    :cond_48
    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->breakOnEnter:Ljavax/swing/JCheckBoxMenuItem;

    if-ne v0, v1, :cond_58

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    iget-object p1, p1, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v1}, Ljavax/swing/JCheckBoxMenuItem;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/debugger/Dim;->setBreakOnEnter(Z)V

    goto :goto_6d

    :cond_58
    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->breakOnReturn:Ljavax/swing/JCheckBoxMenuItem;

    if-ne v0, v1, :cond_68

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    iget-object p1, p1, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v1}, Ljavax/swing/JCheckBoxMenuItem;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/debugger/Dim;->setBreakOnReturn(Z)V

    goto :goto_6d

    :cond_68
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->actionPerformed(Ljava/awt/event/ActionEvent;)V

    :goto_6d
    return-void
.end method

.method public addFile(Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->windowMenu:Ljavax/swing/JMenu;

    invoke-virtual {v0}, Ljavax/swing/JMenu;->getItemCount()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->windowMenu:Ljavax/swing/JMenu;

    invoke-virtual {v2}, Ljavax/swing/JMenu;->addSeparator()V

    add-int/lit8 v0, v0, 0x1

    :cond_10
    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->windowMenu:Ljavax/swing/JMenu;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljavax/swing/JMenu;->getItem(I)Ljavax/swing/JMenuItem;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const-string v5, "More Windows..."

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Ljavax/swing/JMenuItem;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    const/4 v3, 0x6

    const/4 v6, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x6

    goto :goto_2e

    :cond_2d
    const/4 v6, 0x5

    :goto_2e
    if-nez v3, :cond_47

    add-int/lit8 v7, v0, -0x4

    if-ne v7, v4, :cond_47

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->windowMenu:Ljavax/swing/JMenu;

    new-instance v0, Ljavax/swing/JMenuItem;

    const/16 v1, 0x4d

    invoke-direct {v0, v5, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {v0, v5}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-void

    :cond_47
    add-int/lit8 v4, v0, -0x4

    if-gt v4, v6, :cond_87

    if-eqz v3, :cond_54

    add-int/lit8 v0, v0, -0x1

    iget-object v4, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->windowMenu:Ljavax/swing/JMenu;

    invoke-virtual {v4, v2}, Ljavax/swing/JMenu;->remove(Ljavax/swing/JMenuItem;)V

    :cond_54
    invoke-static {p1}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->windowMenu:Ljavax/swing/JMenu;

    new-instance v6, Ljavax/swing/JMenuItem;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x30

    int-to-char v1, v0

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1, v0}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    if-eqz v3, :cond_81

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->windowMenu:Ljavax/swing/JMenu;

    invoke-virtual {v0, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    :cond_81
    invoke-virtual {v6, p1}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    :cond_87
    return-void
.end method

.method public getBreakOnEnter()Ljavax/swing/JCheckBoxMenuItem;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->breakOnEnter:Ljavax/swing/JCheckBoxMenuItem;

    return-object v0
.end method

.method public getBreakOnExceptions()Ljavax/swing/JCheckBoxMenuItem;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->breakOnExceptions:Ljavax/swing/JCheckBoxMenuItem;

    return-object v0
.end method

.method public getBreakOnReturn()Ljavax/swing/JCheckBoxMenuItem;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->breakOnReturn:Ljavax/swing/JCheckBoxMenuItem;

    return-object v0
.end method

.method public getDebugMenu()Ljavax/swing/JMenu;
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/Menubar;->getMenu(I)Ljavax/swing/JMenu;

    move-result-object v0

    return-object v0
.end method

.method public updateEnabled(Z)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->interruptOnlyItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_18

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->interruptOnlyItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/swing/JMenuItem;

    invoke-virtual {v2, p1}, Ljavax/swing/JMenuItem;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_18
    :goto_18
    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->runOnlyItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_30

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/Menubar;->runOnlyItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/swing/JMenuItem;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljavax/swing/JMenuItem;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_30
    return-void
.end method
