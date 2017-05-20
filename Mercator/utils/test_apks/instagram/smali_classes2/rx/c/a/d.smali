.class public final Lrx/c/a/d;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeConcatArray.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/a/d$a;
    }
.end annotation


# instance fields
.field final a:[Lrx/a;


# direct methods
.method public constructor <init>([Lrx/a;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lrx/c/a/d;->a:[Lrx/a;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lrx/b;)V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lrx/c/a/d$a;

    iget-object v1, p0, Lrx/c/a/d;->a:[Lrx/a;

    invoke-direct {v0, p1, v1}, Lrx/c/a/d$a;-><init>(Lrx/b;[Lrx/a;)V

    .line 35
    iget-object v1, v0, Lrx/c/a/d$a;->d:Lrx/j/d;

    invoke-interface {p1, v1}, Lrx/b;->a(Lrx/k;)V

    .line 36
    invoke-virtual {v0}, Lrx/c/a/d$a;->b()V

    .line 37
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lrx/b;

    invoke-virtual {p0, p1}, Lrx/c/a/d;->a(Lrx/b;)V

    return-void
.end method
