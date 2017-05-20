.class public abstract Lrx/g$a;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lrx/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract a(Lrx/b/a;)Lrx/k;
.end method

.method public a(Lrx/b/a;JJLjava/util/concurrent/TimeUnit;)Lrx/k;
    .locals 8

    .prologue
    .line 111
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lrx/c/c/f;->a(Lrx/g$a;Lrx/b/a;JJLjava/util/concurrent/TimeUnit;Lrx/c/c/f$a;)Lrx/k;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/k;
.end method
