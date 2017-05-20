.class Lrx/i/d$1;
.super Ljava/lang/Object;
.source "SubjectSubscriptionManager.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/i/d;->a(Lrx/j;Lrx/i/d$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/i/d$b;

.field final synthetic b:Lrx/i/d;


# direct methods
.method constructor <init>(Lrx/i/d;Lrx/i/d$b;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lrx/i/d$1;->b:Lrx/i/d;

    iput-object p2, p0, Lrx/i/d$1;->a:Lrx/i/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lrx/i/d$1;->b:Lrx/i/d;

    iget-object v1, p0, Lrx/i/d$1;->a:Lrx/i/d$b;

    invoke-virtual {v0, v1}, Lrx/i/d;->b(Lrx/i/d$b;)V

    .line 71
    return-void
.end method
