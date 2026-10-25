.class final Lorg/jsoup/nodes/Element$NodeList;
.super Lorg/jsoup/helper/ChangeNotifyingArrayList;
.source "Element.java"


# instance fields
.field private final owner:Lorg/jsoup/nodes/Element;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/Element;I)V
    .registers 3

    invoke-direct {p0, p2}, Lorg/jsoup/helper/ChangeNotifyingArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/jsoup/nodes/Element$NodeList;->owner:Lorg/jsoup/nodes/Element;

    return-void
.end method


# virtual methods
.method public onContentsChanged()V
    .registers 2

    iget-object v0, p0, Lorg/jsoup/nodes/Element$NodeList;->owner:Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->nodelistChanged()V

    return-void
.end method
