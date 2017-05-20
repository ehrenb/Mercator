.class Lrx/a$6$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a$6;->a(Lrx/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/g$a;

.field final synthetic b:Lrx/b;

.field final synthetic c:Lrx/c/e/l;

.field final synthetic d:Lrx/a$6;


# direct methods
.method constructor <init>(Lrx/a$6;Lrx/g$a;Lrx/b;Lrx/c/e/l;)V
    .locals 0

    .prologue
    .line 1620
    iput-object p1, p0, Lrx/a$6$1;->d:Lrx/a$6;

    iput-object p2, p0, Lrx/a$6$1;->a:Lrx/g$a;

    iput-object p3, p0, Lrx/a$6$1;->b:Lrx/b;

    iput-object p4, p0, Lrx/a$6$1;->c:Lrx/c/e/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1624
    iget-object v0, p0, Lrx/a$6$1;->a:Lrx/g$a;

    new-instance v1, Lrx/a$6$1$1;

    invoke-direct {v1, p0}, Lrx/a$6$1$1;-><init>(Lrx/a$6$1;)V

    invoke-virtual {v0, v1}, Lrx/g$a;->a(Lrx/b/a;)Lrx/k;

    .line 1634
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 1638
    iget-object v0, p0, Lrx/a$6$1;->a:Lrx/g$a;

    new-instance v1, Lrx/a$6$1$2;

    invoke-direct {v1, p0, p1}, Lrx/a$6$1$2;-><init>(Lrx/a$6$1;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lrx/g$a;->a(Lrx/b/a;)Lrx/k;

    .line 1648
    return-void
.end method

.method public a(Lrx/k;)V
    .locals 1

    .prologue
    .line 1652
    iget-object v0, p0, Lrx/a$6$1;->c:Lrx/c/e/l;

    invoke-virtual {v0, p1}, Lrx/c/e/l;->a(Lrx/k;)V

    .line 1653
    return-void
.end method
