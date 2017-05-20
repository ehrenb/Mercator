.class public final Lrx/c/a/c;
.super Ljava/lang/Object;
.source "CompletableFlatMapSingleToCompletable.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/a$a;"
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

.field final b:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<-TT;+",
            "Lrx/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/h;Lrx/b/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h",
            "<TT;>;",
            "Lrx/b/e",
            "<-TT;+",
            "Lrx/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/c/a/c;->a:Lrx/h;

    .line 36
    iput-object p2, p0, Lrx/c/a/c;->b:Lrx/b/e;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Lrx/b;)V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lrx/c/a/c$a;

    iget-object v1, p0, Lrx/c/a/c;->b:Lrx/b/e;

    invoke-direct {v0, p1, v1}, Lrx/c/a/c$a;-><init>(Lrx/b;Lrx/b/e;)V

    .line 42
    invoke-interface {p1, v0}, Lrx/b;->a(Lrx/k;)V

    .line 43
    iget-object v1, p0, Lrx/c/a/c;->a:Lrx/h;

    invoke-virtual {v1, v0}, Lrx/h;->a(Lrx/i;)Lrx/k;

    .line 44
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lrx/b;

    invoke-virtual {p0, p1}, Lrx/c/a/c;->a(Lrx/b;)V

    return-void
.end method
