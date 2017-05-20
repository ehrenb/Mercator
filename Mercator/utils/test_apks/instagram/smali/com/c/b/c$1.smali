.class Lcom/c/b/c$1;
.super Ljava/lang/Object;
.source "RelaySubscriptionManager.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/c/b/c;->a(Lrx/j;Lcom/c/b/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/c/b/c$a;

.field final synthetic b:Lcom/c/b/c;


# direct methods
.method constructor <init>(Lcom/c/b/c;Lcom/c/b/c$a;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/c/b/c$1;->b:Lcom/c/b/c;

    iput-object p2, p0, Lcom/c/b/c$1;->a:Lcom/c/b/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/c/b/c$1;->b:Lcom/c/b/c;

    iget-object v1, p0, Lcom/c/b/c$1;->a:Lcom/c/b/c$a;

    invoke-virtual {v0, v1}, Lcom/c/b/c;->a(Lcom/c/b/c$a;)V

    .line 68
    return-void
.end method
