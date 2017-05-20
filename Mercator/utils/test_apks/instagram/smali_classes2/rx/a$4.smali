.class Lrx/a$4;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a;->a(Lrx/b/b;Lrx/b/b;Lrx/b/a;Lrx/b/a;Lrx/b/a;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/b/a;

.field final synthetic b:Lrx/b/a;

.field final synthetic c:Lrx/b/b;

.field final synthetic d:Lrx/b/b;

.field final synthetic e:Lrx/b/a;

.field final synthetic f:Lrx/a;


# direct methods
.method constructor <init>(Lrx/a;Lrx/b/a;Lrx/b/a;Lrx/b/b;Lrx/b/b;Lrx/b/a;)V
    .locals 0

    .prologue
    .line 1365
    iput-object p1, p0, Lrx/a$4;->f:Lrx/a;

    iput-object p2, p0, Lrx/a$4;->a:Lrx/b/a;

    iput-object p3, p0, Lrx/a$4;->b:Lrx/b/a;

    iput-object p4, p0, Lrx/a$4;->c:Lrx/b/b;

    iput-object p5, p0, Lrx/a$4;->d:Lrx/b/b;

    iput-object p6, p0, Lrx/a$4;->e:Lrx/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/b;)V
    .locals 2

    .prologue
    .line 1368
    iget-object v0, p0, Lrx/a$4;->f:Lrx/a;

    new-instance v1, Lrx/a$4$1;

    invoke-direct {v1, p0, p1}, Lrx/a$4$1;-><init>(Lrx/a$4;Lrx/b;)V

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/b;)V

    .line 1431
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1365
    check-cast p1, Lrx/b;

    invoke-virtual {p0, p1}, Lrx/a$4;->a(Lrx/b;)V

    return-void
.end method
