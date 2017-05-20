.class public final Lrx/c/a/ay;
.super Ljava/lang/Object;
.source "SingleDoOnEvent.java"

# interfaces
.implements Lrx/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/a/ay$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/h$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/h",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/b",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final c:Lrx/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/b",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/h;Lrx/b/b;Lrx/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h",
            "<TT;>;",
            "Lrx/b/b",
            "<-TT;>;",
            "Lrx/b/b",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lrx/c/a/ay;->a:Lrx/h;

    .line 32
    iput-object p2, p0, Lrx/c/a/ay;->b:Lrx/b/b;

    .line 33
    iput-object p3, p0, Lrx/c/a/ay;->c:Lrx/b/b;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lrx/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lrx/c/a/ay$a;

    iget-object v1, p0, Lrx/c/a/ay;->b:Lrx/b/b;

    iget-object v2, p0, Lrx/c/a/ay;->c:Lrx/b/b;

    invoke-direct {v0, p1, v1, v2}, Lrx/c/a/ay$a;-><init>(Lrx/i;Lrx/b/b;Lrx/b/b;)V

    .line 39
    invoke-virtual {p1, v0}, Lrx/i;->b(Lrx/k;)V

    .line 40
    iget-object v1, p0, Lrx/c/a/ay;->a:Lrx/h;

    invoke-virtual {v1, v0}, Lrx/h;->a(Lrx/i;)Lrx/k;

    .line 41
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lrx/i;

    invoke-virtual {p0, p1}, Lrx/c/a/ay;->a(Lrx/i;)V

    return-void
.end method
