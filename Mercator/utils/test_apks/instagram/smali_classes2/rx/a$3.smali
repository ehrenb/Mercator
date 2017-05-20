.class final Lrx/a$3;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a;->a(Lrx/h;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/h;


# direct methods
.method constructor <init>(Lrx/h;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lrx/a$3;->a:Lrx/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/b;)V
    .locals 2

    .prologue
    .line 608
    new-instance v0, Lrx/a$3$1;

    invoke-direct {v0, p0, p1}, Lrx/a$3$1;-><init>(Lrx/a$3;Lrx/b;)V

    .line 621
    invoke-interface {p1, v0}, Lrx/b;->a(Lrx/k;)V

    .line 622
    iget-object v1, p0, Lrx/a$3;->a:Lrx/h;

    invoke-virtual {v1, v0}, Lrx/h;->a(Lrx/i;)Lrx/k;

    .line 623
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 605
    check-cast p1, Lrx/b;

    invoke-virtual {p0, p1}, Lrx/a$3;->a(Lrx/b;)V

    return-void
.end method
