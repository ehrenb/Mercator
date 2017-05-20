.class Lrx/d/b$1;
.super Ljava/lang/Object;
.source "ConnectableObservable.java"

# interfaces
.implements Lrx/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/b;->a()Lrx/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b/b",
        "<",
        "Lrx/k;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Lrx/k;

.field final synthetic b:Lrx/d/b;


# direct methods
.method constructor <init>(Lrx/d/b;[Lrx/k;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lrx/d/b$1;->b:Lrx/d/b;

    iput-object p2, p0, Lrx/d/b$1;->a:[Lrx/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lrx/d/b$1;->a:[Lrx/k;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 56
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lrx/k;

    invoke-virtual {p0, p1}, Lrx/d/b$1;->a(Lrx/k;)V

    return-void
.end method
