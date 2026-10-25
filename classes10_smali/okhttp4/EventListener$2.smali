.class Lokhttp4/EventListener$2;
.super Ljava/lang/Object;
.source "EventListener.java"

# interfaces
.implements Lokhttp4/EventListener$Factory;


# instance fields
.field final synthetic val$listener:Lokhttp4/EventListener;


# direct methods
.method constructor <init>(Lokhttp4/EventListener;)V
    .registers 2

    iput-object p1, p0, Lokhttp4/EventListener$2;->val$listener:Lokhttp4/EventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lokhttp4/Call;)Lokhttp4/EventListener;
    .registers 2

    iget-object p1, p0, Lokhttp4/EventListener$2;->val$listener:Lokhttp4/EventListener;

    return-object p1
.end method
