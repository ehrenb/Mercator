.class Lio/realm/a/a$6$1;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/realm/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/a/a$6;->a(Lrx/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/w",
        "<",
        "Lio/realm/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/j;

.field final synthetic b:Lio/realm/a/a$6;


# direct methods
.method constructor <init>(Lio/realm/a/a$6;Lrx/j;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lio/realm/a/a$6$1;->b:Lio/realm/a/a$6;

    iput-object p2, p0, Lio/realm/a/a$6$1;->a:Lrx/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/realm/f;)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lio/realm/a/a$6$1;->a:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lio/realm/a/a$6$1;->a:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 267
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 261
    check-cast p1, Lio/realm/f;

    invoke-virtual {p0, p1}, Lio/realm/a/a$6$1;->a(Lio/realm/f;)V

    return-void
.end method
