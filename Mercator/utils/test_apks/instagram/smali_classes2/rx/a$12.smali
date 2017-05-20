.class final Lrx/a$12;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a;->a(Ljava/lang/Throwable;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lrx/a$12;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/b;)V
    .locals 1

    .prologue
    .line 448
    invoke-static {}, Lrx/j/e;->b()Lrx/k;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/b;->a(Lrx/k;)V

    .line 449
    iget-object v0, p0, Lrx/a$12;->a:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lrx/b;->a(Ljava/lang/Throwable;)V

    .line 450
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 445
    check-cast p1, Lrx/b;

    invoke-virtual {p0, p1}, Lrx/a$12;->a(Lrx/b;)V

    return-void
.end method
