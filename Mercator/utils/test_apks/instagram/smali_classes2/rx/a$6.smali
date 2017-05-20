.class Lrx/a$6;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a;->a(Lrx/g;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/g;

.field final synthetic b:Lrx/a;


# direct methods
.method constructor <init>(Lrx/a;Lrx/g;)V
    .locals 0

    .prologue
    .line 1609
    iput-object p1, p0, Lrx/a$6;->b:Lrx/a;

    iput-object p2, p0, Lrx/a$6;->a:Lrx/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/b;)V
    .locals 4

    .prologue
    .line 1613
    new-instance v0, Lrx/c/e/l;

    invoke-direct {v0}, Lrx/c/e/l;-><init>()V

    .line 1615
    iget-object v1, p0, Lrx/a$6;->a:Lrx/g;

    invoke-virtual {v1}, Lrx/g;->a()Lrx/g$a;

    move-result-object v1

    .line 1616
    invoke-virtual {v0, v1}, Lrx/c/e/l;->a(Lrx/k;)V

    .line 1618
    invoke-interface {p1, v0}, Lrx/b;->a(Lrx/k;)V

    .line 1620
    iget-object v2, p0, Lrx/a$6;->b:Lrx/a;

    new-instance v3, Lrx/a$6$1;

    invoke-direct {v3, p0, v1, p1, v0}, Lrx/a$6$1;-><init>(Lrx/a$6;Lrx/g$a;Lrx/b;Lrx/c/e/l;)V

    invoke-virtual {v2, v3}, Lrx/a;->a(Lrx/b;)V

    .line 1656
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1609
    check-cast p1, Lrx/b;

    invoke-virtual {p0, p1}, Lrx/a$6;->a(Lrx/b;)V

    return-void
.end method
