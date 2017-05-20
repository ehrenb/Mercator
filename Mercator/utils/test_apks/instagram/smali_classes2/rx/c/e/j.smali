.class public final Lrx/c/e/j;
.super Lrx/d;
.source "ScalarSynchronousObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/e/j$d;,
        Lrx/c/e/j$c;,
        Lrx/c/e/j$b;,
        Lrx/c/e/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/d",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final c:Z


# instance fields
.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "rx.just.strong-mode"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lrx/c/e/j;->c:Z

    .line 49
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lrx/c/e/j$a;

    invoke-direct {v0, p1}, Lrx/c/e/j$a;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/f/c;->a(Lrx/d$a;)Lrx/d$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/d;-><init>(Lrx/d$a;)V

    .line 77
    iput-object p1, p0, Lrx/c/e/j;->b:Ljava/lang/Object;

    .line 78
    return-void
.end method

.method static a(Lrx/j;Ljava/lang/Object;)Lrx/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/j",
            "<-TT;>;TT;)",
            "Lrx/f;"
        }
    .end annotation

    .prologue
    .line 59
    sget-boolean v0, Lrx/c/e/j;->c:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lrx/c/b/c;

    invoke-direct {v0, p0, p1}, Lrx/c/b/c;-><init>(Lrx/j;Ljava/lang/Object;)V

    .line 62
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/c/e/j$d;

    invoke-direct {v0, p0, p1}, Lrx/c/e/j$d;-><init>(Lrx/j;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/Object;)Lrx/c/e/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/c/e/j",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lrx/c/e/j;

    invoke-direct {v0, p0}, Lrx/c/e/j;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lrx/c/e/j;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public d(Lrx/g;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/g;",
            ")",
            "Lrx/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    instance-of v0, p1, Lrx/c/c/b;

    if-eqz v0, :cond_0

    .line 98
    check-cast p1, Lrx/c/c/b;

    .line 99
    new-instance v0, Lrx/c/e/j$1;

    invoke-direct {v0, p0, p1}, Lrx/c/e/j$1;-><init>(Lrx/c/e/j;Lrx/c/c/b;)V

    .line 125
    :goto_0
    new-instance v1, Lrx/c/e/j$b;

    iget-object v2, p0, Lrx/c/e/j;->b:Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lrx/c/e/j$b;-><init>(Ljava/lang/Object;Lrx/b/e;)V

    invoke-static {v1}, Lrx/c/e/j;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    new-instance v0, Lrx/c/e/j$2;

    invoke-direct {v0, p0, p1}, Lrx/c/e/j$2;-><init>(Lrx/c/e/j;Lrx/g;)V

    goto :goto_0
.end method

.method public m(Lrx/b/e;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/e",
            "<-TT;+",
            "Lrx/d",
            "<+TR;>;>;)",
            "Lrx/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Lrx/c/e/j$3;

    invoke-direct {v0, p0, p1}, Lrx/c/e/j$3;-><init>(Lrx/c/e/j;Lrx/b/e;)V

    invoke-static {v0}, Lrx/c/e/j;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
