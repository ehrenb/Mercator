.class Lrx/a$9;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a;->a(Lrx/j;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/j;

.field final synthetic b:Lrx/a;


# direct methods
.method constructor <init>(Lrx/a;Lrx/j;)V
    .locals 0

    .prologue
    .line 2085
    iput-object p1, p0, Lrx/a$9;->b:Lrx/a;

    iput-object p2, p0, Lrx/a$9;->a:Lrx/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 2088
    iget-object v0, p0, Lrx/a$9;->a:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->onCompleted()V

    .line 2089
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 2093
    iget-object v0, p0, Lrx/a$9;->a:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    .line 2094
    return-void
.end method

.method public a(Lrx/k;)V
    .locals 1

    .prologue
    .line 2098
    iget-object v0, p0, Lrx/a$9;->a:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->add(Lrx/k;)V

    .line 2099
    return-void
.end method
