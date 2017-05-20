.class final Lrx/a$2;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a;->a(Lrx/d;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/d;


# direct methods
.method constructor <init>(Lrx/d;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lrx/a$2;->a:Lrx/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/b;)V
    .locals 2

    .prologue
    .line 573
    new-instance v0, Lrx/a$2$1;

    invoke-direct {v0, p0, p1}, Lrx/a$2$1;-><init>(Lrx/a$2;Lrx/b;)V

    .line 590
    invoke-interface {p1, v0}, Lrx/b;->a(Lrx/k;)V

    .line 591
    iget-object v1, p0, Lrx/a$2;->a:Lrx/d;

    invoke-virtual {v1, v0}, Lrx/d;->a(Lrx/j;)Lrx/k;

    .line 592
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 570
    check-cast p1, Lrx/b;

    invoke-virtual {p0, p1}, Lrx/a$2;->a(Lrx/b;)V

    return-void
.end method
