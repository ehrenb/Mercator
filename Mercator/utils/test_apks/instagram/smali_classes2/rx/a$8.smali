.class final Lrx/a$8;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a;->a([Lrx/a;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lrx/a;


# direct methods
.method constructor <init>([Lrx/a;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lrx/a$8;->a:[Lrx/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/b;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 105
    new-instance v2, Lrx/j/b;

    invoke-direct {v2}, Lrx/j/b;-><init>()V

    .line 106
    invoke-interface {p1, v2}, Lrx/b;->a(Lrx/k;)V

    .line 108
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 110
    new-instance v4, Lrx/a$8$1;

    invoke-direct {v4, p0, v3, v2, p1}, Lrx/a$8$1;-><init>(Lrx/a$8;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/j/b;Lrx/b;)V

    .line 136
    iget-object v5, p0, Lrx/a$8;->a:[Lrx/a;

    array-length v6, v5

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v7, v5, v0

    .line 137
    invoke-virtual {v2}, Lrx/j/b;->isUnsubscribed()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 157
    :cond_0
    :goto_1
    return-void

    .line 140
    :cond_1
    if-nez v7, :cond_3

    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v4, "One of the sources is null"

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 142
    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    invoke-virtual {v2}, Lrx/j/b;->unsubscribe()V

    .line 144
    invoke-interface {p1, v0}, Lrx/b;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 146
    :cond_2
    invoke-static {v0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 150
    :cond_3
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v2}, Lrx/j/b;->isUnsubscribed()Z

    move-result v8

    if-nez v8, :cond_0

    .line 155
    invoke-virtual {v7, v4}, Lrx/a;->a(Lrx/b;)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 102
    check-cast p1, Lrx/b;

    invoke-virtual {p0, p1}, Lrx/a$8;->a(Lrx/b;)V

    return-void
.end method
