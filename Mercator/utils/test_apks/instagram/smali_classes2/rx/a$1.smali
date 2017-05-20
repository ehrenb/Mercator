.class final Lrx/a$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/b;)V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lrx/j/e;->b()Lrx/k;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/b;->a(Lrx/k;)V

    .line 74
    invoke-interface {p1}, Lrx/b;->a()V

    .line 75
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 70
    check-cast p1, Lrx/b;

    invoke-virtual {p0, p1}, Lrx/a$1;->a(Lrx/b;)V

    return-void
.end method
