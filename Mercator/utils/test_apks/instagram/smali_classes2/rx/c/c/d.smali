.class public final Lrx/c/c/d;
.super Lrx/g;
.source "NewThreadScheduler.java"


# instance fields
.field private final a:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lrx/g;-><init>()V

    .line 28
    iput-object p1, p0, Lrx/c/c/d;->a:Ljava/util/concurrent/ThreadFactory;

    .line 29
    return-void
.end method


# virtual methods
.method public a()Lrx/g$a;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lrx/c/c/e;

    iget-object v1, p0, Lrx/c/c/d;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lrx/c/c/e;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
